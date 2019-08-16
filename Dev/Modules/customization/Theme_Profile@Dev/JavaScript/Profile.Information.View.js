/*
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
*/

// @module Profile
define(
	'Profile.Information.View'
,	[
		'SC.Configuration'
	,	'GlobalViews.Message.View'
	,	'Backbone.FormView'

	,	'Profile.ChangeEmailAddress.Model'
	,	'Profile.ChangeEmailAddress.View'
	,	'Profile.PersonalinfoEdit.Model'
	,	'Profile.PersonalinfoEdit.View'
	


	,	'profile_information.tpl'

	,	'Backbone'
	,	'underscore'
	,	'jQuery'
	,	'Utils'
	]
,	function (
		Configuration
	,	GlobalViewsMessageView
	,	BackboneFormView

	,	ProfileChangeEmailModel
	,	ProfileChangeEmailView
	,	ProfilePersonalinfoEditModel
	,	ProfilePersonalinfoEditView
	

	,	profile_information_tpl

	,	Backbone
	,	_
	,	jQuery
	)
{
	'use strict';

	// @class Profile.Information.View @extends Backbone.View
	return Backbone.View.extend({

		template: profile_information_tpl
	,	page_header: _('Profile Information').translate()
	,	title: _('Profile Information').translate()
	,	attributes: {'class': 'ProfileInformationView'}
	,	events: {
			'submit form': 'save'
		,	'change input[data-type="phone"]': 'formatPhone'
		,	'click [data-action="change-email"]': 'changeEmail'
		,	'click [data-action="edit"]': 'edit'
		}

	,	bindings: {
			'[name="firstname"]': 'firstname'
		,	'[name="lastname"]': 'lastname'
		,	'[name="companyname"]': 'companyname'
		,	'[name="phone"]': 'phone'
		}

	,	save: function(e)
		{
			// Do not change the email preferences from this screen
			this.model.unset('campaignsubscriptions');
			this.model.unset('emailsubscribe');
			return this.saveForm(e,this.model);
		}

	,	initialize: function(options)
		{
			BackboneFormView.add(this);
			this.application = options.application;
		}

	,	formatPhone: function (e)
		{
			var $target = jQuery(e.target);
			$target.val(_($target.val()).formatPhone());
		}

	,	changeEmail: function ()
		{
			var model = new ProfileChangeEmailModel(this.model.attributes);

			var	view = new ProfileChangeEmailView({
				application: this.application
			,	model: model
			});

			var self = this;

			model.on('save', function () {
				view.showSuccess(self.$('[data-type="alert-placeholder"]'));
			});

			view.useLayoutError = true;

			this.application.getLayout().showInModal(view);
		}



	,	edit: function()
	{
			var model = new ProfilePersonalinfoEditModel(this.model.attributes);

			var view = new ProfilePersonalinfoEditView({
				application: this.application
			,	model: model
			});
			
			var self = this;

			model.on('save', function(){
				view.showSuccess(self.$('[data-type="alert-placeholder"]'));
			})

			view.useLayoutError = true;

			this.application.getLayout().showInModal(view);

	}




	,	showSuccess: function ()
		{
			if (this.$savingForm)
			{
				var global_view_message = new GlobalViewsMessageView({
						message: _(' successfully updated!').translate()
					,	type: 'success'
					,	closable: true
				});
				this.showContent();
				this.$('[data-type="alert-placeholder"]').append(global_view_message.render().$el.html());
			}
		}

		//@method getSelectedMenu
	,	getSelectedMenu: function ()
		{
			return 'profileinformation';
		}
		//@method getBreadcrumbPages
	,	getBreadcrumbPages: function ()
		{
			return {
				text: this.title
			,	href: '/profileinformation'
			};
		}


		// @method getContext @return Profile.Information.View.Context
	,	getContext: function()
		{
		var addr = this.model.attributes.addresses.models;
		
		for(var i=0;i<addr.length;i++)
		{
			
			var defaultbilling = addr[i].attributes.defaultbilling;
			if(defaultbilling === 'T')
			{
				var fullname = addr[i].attributes.fullname;
				var addr1 = addr[i].attributes.addr1;
				var addr2 = addr[i].attributes.addr2;
				var city = addr[i].attributes.city;
				var company = addr[i].attributes.company;
				var country = addr[i].attributes.country;
				var state = addr[i].attributes.state;
				var zip = addr[i].attributes.zip;
			}
		}


			// @class Profile.Information.View.Context
			return {
				// @property {String} pageHeader
				pageHeader: this.page_header
				// @property {Boolean} isNotCompany
			,	isNotCompany: this.model.get('type') !== 'COMPANY'
				// @property {String} phoneFormat
			,	phoneFormat: Configuration.get('siteSettings.phoneformat')
				// @property {Boolean} isCompanyAndShowCompanyField
			,	isCompanyAndShowCompanyField: this.model.get('type') === 'COMPANY' || Configuration.get('siteSettings.registration.showcompanyfield') === 'T'
				// @property {Boolean} isCompanyFieldRequired
			,	isCompanyFieldRequired: _.getPathFromObject(this, 'model.validation.companyname.required', false)
				// @property {Boolean} isPhoneFieldRequired
			,	isPhoneFieldRequired:  _.getPathFromObject(this, 'model.validation.phone.required', false)
				// @property {String} firstName
			,	firstName: this.model.get('firstname') || ''
				// @property {String} lastName
			,	lastName: this.model.get('lastname') || ''
				// @property {String} companyName
			,	companyName: this.model.get('companyname') || ''
				// @property {String} email
			,	email: this.model.get('email') || ''
				// @property {String} phone
			,	phone: this.model.get('phone') || ''
				//@property {Boolean} showBackToAccount
			,	showBackToAccount: Configuration.get('siteSettings.sitetype') === 'STANDARD'
			
			,	fullname: fullname || ''
			,	addr1: addr1 || ''
			,	addr2: addr2 || ''
			,	city: city || ''
			,	company: company || ''
			,	country: country || ''
			,	state: state || ''
			,	zip: zip || ''
			};
		}
	});
});
