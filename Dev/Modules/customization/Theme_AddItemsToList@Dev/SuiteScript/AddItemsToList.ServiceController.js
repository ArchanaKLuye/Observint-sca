define(
	'AddItemsToList.ServiceController'
,	[
		'ServiceController'
	,	'Application'
	,	'AddItemsToList.Model'
	]
,	function(
		ServiceController
	,	Application
	,	AddItemsToListModel
	)
	{
		'use strict';

		// @extend ServiceController
		return ServiceController.extend({

			// @property {String} name Mandatory for all ssp-libraries model
			name:'AddItemsToList.ServiceController'	

		
		,	get: function()
			{
				try
				{
				var itemsku = [];
				var quantity = [];
				var id = this.request.getParameter('id');
			    itemsku =JSON.parse(this.request.getParameter('itemsku'));
				quantity = JSON.parse(this.request.getParameter('quantity'));
				AddItemsToListModel.get({					
					id : id,
					itemsku : JSON.stringify(itemsku),
					quantity : JSON.stringify(quantity)
				});
				return true;
				}
				catch(e)
				{
				console.warn('AddItemsToList.Service.ss::' + e.name, e);
                this.sendError(e);
				}
			}
		
		});
});