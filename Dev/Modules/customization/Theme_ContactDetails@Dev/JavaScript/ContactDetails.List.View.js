define(
	'ContactDetails.List.View',
 	[
 		'Backbone.CompositeView'
	,	'Backbone.CollectionView'
	,	'ContactDetails.Details.View'
	,	'Backbone'
	,	'contactdetails_list.tpl'
  , 'GlobalViews.Confirmation.View'
  , 'jQuery'
  , 'Profile.Model'
  , 'Profile.Information.View'
  ]
,   function(
		BackboneCompositeView
	,	BackboneCollectionView
	,	ContactDetailsDetailsView
 	,	Backbone
 	,	contactdetails_list_tpl
  , GlobalViewsConfirmationView
  , jQuery
  , ProfileModel
  , ProfileInformationView
 	) 
{
   return Backbone.View.extend({

   	template : contactdetails_list_tpl

  , events: {
      'click button[data-action="remove"]': 'removecontact'
    }


  , removeModel: function(options) {
      var model = options.context.collection.get(options.id);
      model.destroy();
    }

  , removecontact: function(e) {
      e.preventDefault();
      var view = new GlobalViewsConfirmationView({
        title: 'Remove Contact',
        body: 'Are you sure you want to remove this contact?',
        callBack: this.removeModel,
        callBackParameters: {
          context: this,
          id: jQuery(e.target).data('id')
        },
        autohide: true
      });
      this.application.getLayout().showInModal(view);
    }


  , page_header: _('CONTACT INFO').translate()

  , title: _('Contact info').translate()

  , attributes: { 'class': 'ContactDetailsListView' }


	, initialize: function (options) {
      BackboneCompositeView.add(this);
      var self = this;
      this.application = options.application;
      this.collection = options.collection;
      this.collection.on('reset sync add remove change destroy', function ()
      {
          self.render();
      });
    }

  , getSelectedMenu: function ()
    {
      return 'contacts';
    }

  , getBreadcrumbPages: function ()
    {
      return {
        text: this.title
      , href: '/contacts'
      };
    }

  ,	childViews: {
      'ContactDetails.Collection': function() {
        return new BackboneCollectionView({
          childView: ContactDetailsDetailsView,
          collection: this.collection,
          viewsPerRow: 1
        });
      }
    , 'Profile.Information' : function(){
        return new ProfileInformationView({
        application: this.application
      , model: ProfileModel.getInstance()
      });
      }


    }
    
  , getContext: function ()
    {
      //@class Address.List.View.Context
      return {
        //@property {String} pageHeader
        pageHeader: this.page_header
      , isEmailSubscribeChecked:SC.ENVIRONMENT.siteSettings.defaultSubscriptionStatus
      };
    }

   });
});