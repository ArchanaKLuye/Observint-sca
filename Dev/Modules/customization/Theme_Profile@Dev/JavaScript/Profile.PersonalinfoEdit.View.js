
// @module Profile
define(
	'Profile.PersonalinfoEdit.View'
,	[
		'GlobalViews.Message.View'
	,	'Backbone.FormView'
	,	'SC.Configuration'

	,	'profile_personalinfo_edit.tpl'

	,	'Backbone'
	,	'underscore'
	,	'Utils'
	]
,	function (
		GlobalViewsMessageView
	,	BackboneFormView
	,	Configuration

	,	profile_personalinfo_edit_tpl

	,	Backbone
	,	_
	)
{
	'use strict';

	// @class Profile.ChangeEmailAddress.View @extends Backbone.View
	return Backbone.View.extend({

		template: profile_personalinfo_edit_tpl

	,	page_header: _('EDIT PERSONAL INFORMATION').translate()

	,	title: _('Change Email').translate()

	,	events: {
			'submit form': 'saveFormCustom'
		}

	,	bindings: {
			'[name="firstname"]': 'firstname'
		,	'[name="lastname"]': 'lastname'
		,	'[name="companyname"]': 'companyname'
		//,	'[name="phone"]': 'phoneno'
		//,	'[name="fax"]': 'fax'
		//,	'[name="altphone"]': 'altphone'
		}

	,	initialize: function()
		{
			Backbone.View.prototype.initialize.apply(this, arguments);
			BackboneFormView.add(this);
		}

	,	saveFormCustom: function (e)
		{
			/*this.model.unset('campaignsubscriptions');
			this.model.unset('emailsubscribe');*/
			return this.saveForm(e,this.model);
		}

	,	showSuccess: function (placeholder)
		{	location.reload(0);
			var global_view_message = new GlobalViewsMessageView({
					
					message: _('Profile successfully updated').translate() +'</strong>'
				,	type: 'success'
				,	closable: true
			}); 

			//placeholder.html(global_view_message.render().$el.html());

		}
	,	getContext: function()
		{
		var phonemain,phmainsplit,ctrycode1,phonenoandext,phonenosplit,phoneno,ext,faxmain,faxmainsplit,ctrycode2,faxno,altphonemain,altphonemainsplit,ctrycode3,altphoneno;
		console.log("this.model.get('phone')",this.model.get('phone'));
		var phonemain = String(this.model.get('phone'));
		var phmainsplit = phonemain.split(" ");
		var ctrycode1 = phmainsplit[0];
		var phonenoandext = phmainsplit[1];
		var phonenosplit = phonenoandext.split("x");
		var phoneno = phonenosplit[0];
		var ext = phonenosplit[1];
		var faxmain = String(this.model.get('fax'));
		console.log("faxmain",faxmain);
		if(faxmain != 'null')
		{
		var faxmainsplit = faxmain.split(" ");
		var ctrycode2 = faxmainsplit[0];
		var faxno = faxmainsplit[1];
		}
		var altphonemain = String(this.model.get('altphone'));
		console.log("altphonemain",altphonemain);
		if(altphonemain != 'null')
		{
		var altphonemainsplit = altphonemain.split(" ");
		var ctrycode3 = altphonemainsplit[0];
		var altphoneno = altphonemainsplit[1];
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
			//,	phone: this.model.get('phone') || ''
			,	phoneno: phoneno || ''
			,	ctrycode1: ctrycode1 || ''
			,	ext: ext || ''
			,	faxno: faxno || ''
			,	ctrycode2: ctrycode2 || ''
			,	altphoneno: altphoneno || ''
			,	ctrycode3: ctrycode3 || ''
				//@property {Boolean} showBackToAccount
			,	showBackToAccount: Configuration.get('siteSettings.sitetype') === 'STANDARD'

			,	isEmailSubscribeChecked:SC.ENVIRONMENT.siteSettings.defaultSubscriptionStatus
			
			};
		}
	});
});