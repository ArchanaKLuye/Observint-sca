/*
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
*/

// ContactDetails.ServiceController.js
// ----------------
// Service to manage ContactDetailses requests
define(
	'ContactDetails.ServiceController'
,	[
		'ServiceController'
	,	'Application'
	,	'ContactDetails.Model'
	]
,	function(
		ServiceController
	,	Application
	,	ContactDetailsModel
	)
	{
		'use strict';

		// @class ContactDetails.ServiceController Manage ContactDetailses requests
		// @extend ServiceController
		return ServiceController.extend({

			// @property {String} name Mandatory for all ssp-libraries model
			name:'ContactDetails.ServiceController'

			// @property {Service.ValidationOptions} options. All the required validation, permissions, etc.
			// The values in this object are the validation needed for the current service.
			// Can have values for all the request methods ('common' values) and specific for each one.
		,	options: {
				common: {
					requireLogin: true
				}
			}

			// @method get The call to ContactDetails.Service.ss with http method 'get' is managed by this function
			// @return {ContactDetails.Model.Attributes | Array<ContactDetails.Model.Attributes>} one or all user ContactDetailses
		,	get: function()
			{	
				var id = this.request.getParameter('internalid');
				return id ? ContactDetailsModel.get(id) : (ContactDetailsModel.list() || []);
			}

			// @method post The call to ContactDetails.Service.ss with http method 'post' is managed by this function
			// @return {ContactDetailsModel.Attributes}
		,	post: function()
			{
				var id = ContactDetailsModel.create(this.data);
				
				//Do not return anything here, we need send content with status 201
				this.sendContent(ContactDetailsModel.get(id), {'status': 201});
			}

			// @method update The call to ContactDetails.Service.ss with http method 'put' is managed by this function
			// @return {ContactDetails.Model.Attributes}
		,	put: function()
			{
				var id = this.request.getParameter('internalid');
				
				ContactDetailsModel.update(id, this.data);
				return ContactDetailsModel.get(id);
			}

			// @method delete The call to ContactDetails.Service.ss with http method 'delete' is managed by this function
			// @return {StatusObject}
		,	delete: function()
			{
				var id = this.request.getParameter('internalid');
				
				ContactDetailsModel.remove(id);
				// If something goes wrong in the remove, an exception will fire
				return {'status': 'ok'};
			}
		});
	}
);