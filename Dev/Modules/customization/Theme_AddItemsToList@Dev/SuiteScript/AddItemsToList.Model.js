define('AddItemsToList.Model',
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
      name: 'AddItemsToList'

      ,get: function(details) {
        //var user = details.user;
        var itemsku = [];
        var quantity = [];
        var id = details.id;
        itemsku =  JSON.parse(details.itemsku);
        quantity = JSON.parse(details.quantity);
       // console.log("user in ss model",user);
        console.log("id in ss model",id);
        console.log("itemsku in ss model",itemsku);
        console.log("quantity in ss model",quantity);
      
        for(var i=0 ; i<itemsku.length ; i++)
        {
            console.log("itemsku[i]",itemsku[i]);
            console.log("quantity[i]",quantity[i]);
            if(itemsku[i] !== "")
            {
              var itemSearch = nlapiSearchRecord("item",null,
              [
                 ["nameinternal","is",itemsku[i]]
              ], 
              [
                 new nlobjSearchColumn("internalid")
              ]
              );
              var iteminternalid = itemSearch[0].getValue("internalid") || undefined;
       

              if (!(details.id))
              {
                throw notFoundError;
              }

              var productListItem = nlapiCreateRecord('customrecord_ns_pl_productlistitem');


              quantity[i] && productListItem.setFieldValue('custrecord_ns_pl_pli_quantity', quantity[i]);
              
              productListItem.setFieldValue('custrecord_ns_pl_pli_item', iteminternalid);
              
              productListItem.setFieldValue('custrecord_ns_pl_pli_productlist', details.id);

              details.internalid = nlapiSubmitRecord(productListItem);
            }
            else
            {
              return true;
            }
        }

      return details;
        
      }
    });
  }
)
