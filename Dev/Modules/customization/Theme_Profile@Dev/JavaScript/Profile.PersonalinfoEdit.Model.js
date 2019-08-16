define(
	'Profile.PersonalinfoEdit.Model'
,	[
		'Backbone'
	,	'underscore'
	,	'Utils'
	]
,	function (
		Backbone
	,	_
	)
{
	'use strict';

	// @class Profile.PersonalinfoEdit.Model @extends Backbone.Model
	return Backbone.Model.extend(
	{
		urlRoot: 'services/Profile.Service.ss'
	/*,	validation: {
			current_password:  { required: true, msg: _('Current password is required').translate() }
		,	confirm_email: [
				{ required: true, msg: _('Confirm Email is required').translate() }
			,	{ equalTo: 'new_email', msg: _('New Email and Confirm New Email do not match').translate() }
			]
		,	new_email: { required: true, msg: _('New Email is required').translate() }
		}*/
	});
});