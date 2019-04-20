define('UserPreferences.List.View', [
    'Backbone', 'user_preferences_list.tpl'
], function(
    Backbone, user_preferences_list_tpl
) {
    'use strict';

    return Backbone.View.extend({
        template: user_preferences_list_tpl

            ,
        getContext: function() {
            return {
                message: 'Compare Your Products 🌍👋',

            }
        }
    })
});
