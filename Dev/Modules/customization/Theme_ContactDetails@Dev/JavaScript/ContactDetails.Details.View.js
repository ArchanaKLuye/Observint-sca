define('ContactDetails.Details.View',
  [
  'Backbone',
  'contactdetails_details.tpl'
  ],
  function (Backbone, contactdetails_details_tpl) {
    return Backbone.View.extend({
      
      template: contactdetails_details_tpl

    , initialize: function ()
      {
        this.model.on('sync', _.bind(this.render, this));
      }
    , getContext: function () {
     console.log("this.model.get('address')",this.model.get('address'));
        return {
          'name': this.model.get('name'),
          'phone': this.model.get('phone'),
          'address': this.model.get('address'),
          'internalid': this.model.get('internalid')
        }
      },

      

    });
  }
)