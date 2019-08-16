/*
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
*/

//@module Account
// ----------
// Handles account creation, login, logout and password reset
// module Account
define(
	'Account.Model'
,	[
		'SC.Model'
	,	'Application'
	,	'SC.Models.Init'
	,	'Profile.Model'
	,	'LiveOrder.Model'
	,	'Address.Model'
	,	'CreditCard.Model'
	,	'SiteSettings.Model'
	,	'underscore'
	]
,	function (
		SCModel
	,	Application
	,	ModelsInit
	,	Profile
	,	LiveOrder
	,	Address
	,	CreditCard
	,	SiteSettings
	,	_
	)
{
	'use strict';

	// @class Account.Model Defines the model used by the all Account related services.
	// @extends SCModel
	return SCModel.extend({

		name: 'Account'

		//@method login
		//@param {String} email
		//@param {String} password
		//@param {Boolean} redirect
		//@returns {Account.Model.Attributes} ret touchpoints and user profile data
	,	login: function (email, password, redirect)
		{
			ModelsInit.session.login({
				email: email
			,	password: password
			});
			
			var loginAccess;
			var customFields = nlapiGetWebContainer().getShoppingSession().getCustomer().getCustomFieldValues();
	        var pVar2 = JSON.stringify(customFields, null, 2);
            var pVar3Arrray = JSON.parse(pVar2);
             for (var i = 0; i < pVar3Arrray.length; i++) {
             	loginAccess = pVar3Arrray[8].value;           
            }
            
            if(loginAccess == "T"){
              	console.log('Login Access checked');

			var user = Profile.get();
			user.isLoggedIn = ModelsInit.session.isLoggedIn2() ? 'T' : 'F';
			user.isRecognized = ModelsInit.session.isRecognized() ? 'T' : 'F';

			var ret = {
				touchpoints: ModelsInit.session.getSiteSettings(['touchpoints']).touchpoints
			,	user: user
			};

			if (!redirect)
			{
				var Environment = Application.getEnvironment(request)
				,	language = Environment && Environment.currentLanguage || {};
				language.url = language.locale && ModelsInit.session.getAbsoluteUrl('/languages/' + language.locale + '.js') || '';

				_.extend(ret, {
					cart: LiveOrder.get()
				,	address: Address.list()
				,	creditcard: CreditCard.list()
				,	language: language
				,	currency: Environment && Environment.currentCurrency || ''
				});
			}

			// New record to return
			// @class Account.Model.Attributes
				// @property {Array<Object>} touchpoints
				// @property {Profile.Model} user
				// @property {LiveOrder.Model.Data} cart
				// @property {Array<Address.Model.Attributes>} address
				// @property {Array<Address.Model.Attributes>} creditcard
				// @property {Object} language
				// @property {Object} currency
			// @class Account.Model
			return ret;
		}
		else{
			session.logout();

			//window.location = "https://www.alibisecurity.com";
			throw new Error('You are not approved yet..Your application will be reviewed and a member of our dealer team will contact you within 1-2 business days.');
		}
		}

		//@method forgotPassword
		//@param {String} email
		//@returns {Boolean} success
	,	forgotPassword: function (email)
		{
			try
			{
				// this API method throws an exception if the email doesn't exist
				// 'The supplied email has not been registered as a customer at our Web store.'
				ModelsInit.session.sendPasswordRetrievalEmail2(email);
			}
			catch (e)
			{
				var error = Application.processError(e);
				// if the customer failed to log in previously
				// the password retrieval email is sent but an error is thrown
				if (error.errorCode !== 'ERR_WS_CUSTOMER_LOGIN')
				{
					throw e;
				}
			}

			return  {
				success: true
			};
		}

		//@method resetPassword
		//@param {Object} params
		//@param {String} password
		//@returns {Boolean} success
	,	resetPassword: function (params, password)
		{
			if (!ModelsInit.session.doChangePassword(params, password))
			{
				throw new Error('An error has occurred');
			}
			else
			{
				return {
					success: true
				};
			}
		}

		//@method registerAsGuest
		//@param {Object} user
		//@return {Account.Model.Attributes}
	,	registerAsGuest: function (user)
		{
			var site_settings = SiteSettings.get();

			if (site_settings.registration.companyfieldmandatory === 'T')
			{
				user.companyname = 'Guest Shopper';
			}

			ModelsInit.session.registerGuest(user);

			user = Profile.get();
			user.isLoggedIn = ModelsInit.session.isLoggedIn2() ? 'T' : 'F';
			user.isRecognized = ModelsInit.session.isRecognized() ? 'T' : 'F';

			return {
				touchpoints: ModelsInit.session.getSiteSettings(['touchpoints']).touchpoints
			,	user: user
			,	cart: LiveOrder.get()
			,	address: Address.list()
			,	creditcard: CreditCard.list()
			};
		}

		//@method register
		//@param {UserData} user_data
		//@param {Account.Model.Attributes} user_data
	,	register: function (user_data)
		{
			//var customer = ModelsInit.getCustomer();

			if (ModelsInit.customer.isGuest())
			{
				var guest_data = ModelsInit.customer.getFieldValues();

				ModelsInit.customer.setLoginCredentials({
					internalid: guest_data.internalid
				,	email: user_data.email
				,	password: user_data.password
				});

				ModelsInit.session.login({
					email: user_data.email
				,	password: user_data.password
				});

				ModelsInit.customer.updateProfile({
					internalid: guest_data.internalid
				,	firstname: user_data.firstname
				,	lastname: user_data.lastname
				,	companyname: user_data.company
				,	emailsubscribe: (user_data.emailsubscribe && user_data.emailsubscribe !== 'F') ? 'T' : 'F'
				});
			}
			else
			{
				user_data.emailsubscribe = (user_data.emailsubscribe && user_data.emailsubscribe !== 'F') ? 'T' : 'F';

				ModelsInit.session.registerCustomer({
					firstname: user_data.firstname
				,	lastname: user_data.lastname
				,	companyname: user_data.company
				,	email:user_data.email
				,	password:user_data.password
				,	password2:user_data.password2
				,	emailsubscribe: (user_data.emailsubscribe && user_data.emailsubscribe !== 'F') ? 'T' : 'F'
				});
//updating the customer record with the custom fields in registration form
				customer.updateProfile({
                   internalid: user_data.customerid,                            
               
                   customfields: {
                   	"custentity_company_website":user_data.company_website,
                   	"custentity_accesscontrol":user_data.access_control,
                   	"custentity_audio_survelliance":user_data.audio_surveillance,
                   	"custentity_home_automation":user_data.home_automation,
                   	"custentity_video_survelliance":user_data.video_survelliance,
                   	"custentity_other":user_data.other_field                 
                   }        
                   });
//adding address to the customer

				customer.addAddress({
                         internalid: user_data.customerid,
						 addressee : user_data.firstname,
                         addr1 : user_data.Address_1,
    					 city : user_data.city,
   						 state : user_data.state,
    					 zip : user_data.zip,
  						 country : user_data.country,
  						 phone : user_data.phone,  						
  						 defaultshipping : 'T',
                         defaultbilling : 'T'
					});	
//updating the contact record of the customer, created during the customer registration with the phone-no.
//The field id "phone" in the contact record is updated with the phone field value entered during customer registration.	
				var customerid = customer.getFieldValues(['internalid']).internalid;
				
				
				var contactSearch = nlapiSearchRecord("contact",null,
				[
				   ["customer.internalidnumber","equalto",customerid]
				], 
				[
				   new nlobjSearchColumn("internalid")
				]
				);
				var internalid = contactSearch[0].getValue("internalid") || undefined;
				var record = nlapiLoadRecord('contact', internalid, {
				              		recordmode : 'dynamic'
				            	});
				 record.setFieldValue('phone',user_data.phone);
				 nlapiSubmitRecord(record);
			}
//checking whether the customer is approved.
//Only if the checkbox LOGIN ACCESS(fieldid:custentity_loginaccess) in the customer record is checked, can a customer login to the website.
			var loginAccess;
			var customFields = nlapiGetWebContainer().getShoppingSession().getCustomer().getCustomFieldValues();
	        var pVar2 = JSON.stringify(customFields, null, 2);	        
            var pVar3Arrray = JSON.parse(pVar2);            
             for (var i = 0; i < pVar3Arrray.length; i++) {
             	loginAccess = pVar3Arrray[8].value;           
            }
            
            if(loginAccess == "T"){
              	console.log('Login Access checked');
				var user = Profile.get();
				user.isLoggedIn = ModelsInit.session.isLoggedIn2() ? 'T' : 'F';
				user.isRecognized = ModelsInit.session.isRecognized() ? 'T' : 'F';

				return {
					touchpoints: ModelsInit.session.getSiteSettings(['touchpoints']).touchpoints
				,	user: user
				,	cart: LiveOrder.get()
				,	address: Address.list()
				,	creditcard: CreditCard.list()
				};
			}
			else
			{
				session.logout();
				
				throw new Error('Your application will be reviewed and a member of our dealer team will contact you within 1-2 business days.');	
			}
			
		}
	});
});


//@class UserData
//@property {String} email
//@property {String} password
//@property {String} password2
//@property {String} firstname
//@property {String} lastname
//@property {String} company
//@property {String} emailsubscribe T or F