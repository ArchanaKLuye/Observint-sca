//@module ContactDetails
define('ContactDetails',
  [
  'ContactDetails.Router'
  ],
  function (Router) {
    'use strict';
    return {

      MenuItems: {
        parent: 'settings',
        id: 'contactinfo',
        name: 'Contact info',
        url: 'contacts',
        index: 6
      },

      mountToApp: function(application) {
        return new Router(application);
      }
    }
  }
);