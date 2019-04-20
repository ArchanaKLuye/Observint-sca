define('UserPreferences.Router', [
    'UserPreferences.List.View',
    'Backbone'
], function(
     UserPreferencesListView,
     Backbone
   
) {
    'use strict';

    return Backbone.Router.extend({
        routes: {
            'preferences': 'preferencesList',
            'preferences/add': 'preferencesAdd',
            'preferences/:id': 'preferencesEdit'
        },
        initialize: function(application) {
                this.application = application;
            }

         ,
        preferencesList: function() {
            var view = new UserPreferencesListView({
                application: this.application

            });
            view.showContent();
        }
    });
});