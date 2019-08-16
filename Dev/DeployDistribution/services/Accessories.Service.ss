function service(request, response)
{
	'use strict';
	try 
	{
		require('Accessories.ServiceController').handle(request, response);
	} 
	catch(ex)
	{
		console.log('Accessories.ServiceController ', ex);
		var controller = require('ServiceController');
		controller.response = response;
		controller.request = request;
		controller.sendError(ex);
	}
}