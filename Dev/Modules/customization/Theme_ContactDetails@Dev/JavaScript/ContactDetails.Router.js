define(
	'ContactDetails.Router'
, [
  'Backbone',
  'ContactDetails.List.View',
  'ContactDetails.Model',
  'ContactDetails.Collection',
  'ContactDetails.Edit.View',
  'jQuery'
  ]
, function (
  	Backbone
  ,	ContactDetailsListView
  , Model
  , Collection
  , ContactDetailsEditView
  , jQuery
  ) 
  {
  return Backbone.Router.extend({

  	initialize: function(application) {
      this.application = application;
    }

,    routes: {
      'contacts': 'contactList',
      'contacts/new': 'contactDetails',
      'contacts/:id': 'contactDetails'
    }
,   contactList: function() 
	{
      var collection = new Collection();
	    var view = new ContactDetailsListView({collection: collection,application: this.application});

      collection.fetch().done(function(){
      view.showContent();
    })
	}
/*,   newContact: function () {
      var view = new ContactDetailsEditView({model: new Model(), application: this.application});
      view.showContent();
    }*/

,   contactDetails: function (id) {
 
      var model = new Model();
      var promise = jQuery.Deferred();
      
      var self = this;

      if (!id) {
        promise.resolve();
        
      } else {
         
        model.fetch({
          data: {
            internalid: id
          }
        }).done(function () {
          promise.resolve();
        });
      }
      promise.done(function () {
        var view = new ContactDetailsEditView({model: model, application: self.application});



        view.showContent();
        view.model.on('sync', function (model) {
            Backbone.history.navigate('contacts', {trigger: true});
            location.reload(0);
        });
      });
    }
  });
});