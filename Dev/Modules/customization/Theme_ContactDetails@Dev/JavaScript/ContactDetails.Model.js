define(
	'ContactDetails.Model',
  [
  	'Backbone',
  	'underscore',
    'Utils'
  ],
  function 
  (
  	Backbone,
  	 _
  ) 
  {
    return Backbone.Model.extend({
      urlRoot: _.getAbsoluteUrl('services/ContactDetails.Service.ss')

    , validation: {
        name: { required: true, msg: _('Name is required').translate() }
      , address1: { required: true, msg: _('Address is required').translate() }
      , city: { required: true, msg: _('City is required').translate() }
      , state: { required: true, msg: _('state is required').translate() }
      , zipcode: { required: true, msg: _('zipcode is required').translate() }
     /* , state: { fn: _.validateState }
      , zip: { fn: _.validateZipCode }*/
      , country: { required: true, msg: _('Country is required').translate() }
    }

    });
  }
);