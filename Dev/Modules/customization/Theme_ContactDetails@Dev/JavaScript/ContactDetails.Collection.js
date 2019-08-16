define(
  'ContactDetails.Collection',
  [
  'Backbone',
  'ContactDetails.Model'
  ],
  function 
  (
    Backbone,
    Model
  ) 
  {
    return Backbone.Collection.extend({
      model: Model,
      url: _.getAbsoluteUrl('services/ContactDetails.Service.ss')
    });
  }
);