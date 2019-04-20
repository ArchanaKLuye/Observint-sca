define('UserPreferences'
, [
    'UserPreferences.Router'
  ]
, function
  (
    UserPreferencesRouter
  )
{
  'use strict';

  return {
    mountToApp: function (application)
    {
      return new UserPreferencesRouter(application);
    }
  }
});