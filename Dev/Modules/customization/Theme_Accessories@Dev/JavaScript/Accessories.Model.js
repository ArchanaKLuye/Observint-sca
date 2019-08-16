define('Accessories.Model', [
    'underscore',
    'Backbone.CachedModel',
    'Utils'
], function(
    _,
    CachedModel,
    Utils
) {
    'use strict';
    return CachedModel.extend({
        urlRoot: Utils.getAbsoluteUrl('services/Accessories.Service.ss')
    })
});