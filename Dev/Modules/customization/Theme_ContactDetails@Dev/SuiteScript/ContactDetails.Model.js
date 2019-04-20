define('ContactDetails.Model',
  [
  'SC.Model'
, 'SC.Models.Init'
, 'Backbone.Validation'
, 'underscore'
  ],
  function (
  	SCModel
   ,  ModelsInit

   ,  BackboneValidation
   ,  _ 
  	) 
  {
    return SCModel.extend({
      name: 'ContactDetails',
      get: function(id) {

        var field= ModelsInit.customer.getFieldValues();

        var contactSearch = nlapiSearchRecord("contact",null,
        [
           ["internalidnumber","equalto",id]
        ], 
        [
           new nlobjSearchColumn("entityid").setSort(false), 
           new nlobjSearchColumn("phone"), 
           new nlobjSearchColumn("address"),
           new nlobjSearchColumn("internalid"),
           new nlobjSearchColumn("attention","Address",null),
           new nlobjSearchColumn("address1","Address",null),
           new nlobjSearchColumn("address2","Address",null), 
           new nlobjSearchColumn("city","Address",null), 
           new nlobjSearchColumn("state","Address",null), 
           new nlobjSearchColumn("zipcode","Address",null), 
           new nlobjSearchColumn("country","Address",null)
        ]
        );
            
        if (contactSearch && contactSearch.length === 1) {
         
          return {
            phone: contactSearch[0].getValue('phone'),
            name: contactSearch[0].getValue('entityid'),
            address: contactSearch[0].getValue('address'),
            internalid: contactSearch[0].getValue('internalid'),
            company: contactSearch[0].getValue("attention","Address",null),
            address1: contactSearch[0].getValue("address1","Address",null),
            address2: contactSearch[0].getValue("address2","Address",null),
            city: contactSearch[0].getValue("city","Address",null),
            state: contactSearch[0].getValue("state","Address",null),
            zipcode: contactSearch[0].getValue("zipcode","Address",null),
            country: contactSearch[0].getValue("country","Address",null),
          };
        } else {
          throw notFoundError;
        }

        
      },
      list: function() {
       
        var field= ModelsInit.customer.getFieldValues();
        
        
        var customerId = field.internalid;

        var contactSearch = nlapiSearchRecord("contact",null,
        [
           ["customer.internalidnumber","equalto",customerId]
        ], 
        [
           new nlobjSearchColumn("entityid").setSort(false), 
           new nlobjSearchColumn("phone"), 
           new nlobjSearchColumn("address"),
           new nlobjSearchColumn("internalid"),
           new nlobjSearchColumn("attention","Address",null), 
           new nlobjSearchColumn("address1","Address",null), 
           new nlobjSearchColumn("address2","Address",null), 
           new nlobjSearchColumn("city","Address",null), 
           new nlobjSearchColumn("state","Address",null), 
           new nlobjSearchColumn("zipcode","Address",null), 
           new nlobjSearchColumn("country","Address",null)

        ]
        );

        return _.map(contactSearch, function(result) {


          var data = {
            phone : result.getValue("phone") || undefined, //TEXT
            name: result.getValue("entityid") || undefined, //TEXT
            address: result.getValue("address") || undefined, //TEXT 
            internalid: result.getValue("internalid") || undefined, //TEXT  
            company: result.getValue("attention","Address",null) || undefined, //TEXT 
            address1: result.getValue("address1","Address",null) || undefined, //TEXT 
            address2: result.getValue("address2","Address",null) || undefined, //TEXT 
            city: result.getValue("city","Address",null) || undefined, //TEXT 
            state: result.getValue("state","Address",null) || undefined, //TEXT 
            zipcode: result.getValue("zipcode","Address",null) || undefined, //TEXT 
            country: result.getValue("country","Address",null) || undefined, //TEXT                 
          };

          return data;
        });

      },
      create: function(data) {
       
        var record = nlapiCreateRecord('contact');
                record.setFieldValue('phone', data.phone);
                record.setFieldValue('entityid', data.name);
                record.setFieldValue('company', nlapiGetUser());
                var contactid = nlapiSubmitRecord(record);

        var rec = nlapiLoadRecord('contact', contactid, {
              recordmode : 'dynamic'
            });
                
        var addrSubrecord = rec.createCurrentLineItemSubrecord(
            'addressbook', 'addressbookaddress');

                
                addrSubrecord.setFieldValue('addressee', data.name);
                addrSubrecord.setFieldValue('addr1', data.address1);
                addrSubrecord.setFieldValue('addr2', data.address2);
                addrSubrecord.setFieldValue('city', data.city);
                addrSubrecord.setFieldValue('state', data.state);
                addrSubrecord.setFieldValue('zip', data.zipcode);
                addrSubrecord.setFieldValue('attention', data.company);
               
                
                addrSubrecord.commit();
                rec.commitLineItem('addressbook');
                var recordId = nlapiSubmitRecord(rec);
                return recordId;




      },
      update: function(id, data) {
      /*  this.validate(data);*/
        var rec = nlapiLoadRecord('contact', id, {
              recordmode : 'dynamic'
            });
        rec.selectLineItem('addressbook', 1);
       /* rec.setCurrentLineItemValue('addressbook', 'defaultshipping', data.defaultshipaddr);*/
        var addrSubrecord= rec.editCurrentLineItemSubrecord('addressbook', 'addressbookaddress');
                addrSubrecord.setFieldValue('addressee', data.name);
                addrSubrecord.setFieldValue('addr1', data.address1);
                addrSubrecord.setFieldValue('addr2', data.address2);
                addrSubrecord.setFieldValue('city', data.city);
                addrSubrecord.setFieldValue('state', data.state);
                addrSubrecord.setFieldValue('zip', data.zipcode);
                addrSubrecord.setFieldValue('attention', data.company);
                
                
                
                addrSubrecord.commit();
                rec.commitLineItem('addressbook');
                var recordId = nlapiSubmitRecord(rec);
                return recordId;
      },
      remove: function(id) {
         nlapiDeleteRecord('contact', id);
      }
    });
  }
)
