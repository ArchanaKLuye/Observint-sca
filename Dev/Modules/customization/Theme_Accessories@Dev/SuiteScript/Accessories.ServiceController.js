define('Accessories.ServiceController', [
    'Accessory.Model',
    'ServiceController',
    'Application',
    'SC.Models.Init',
    'underscore'
], function AccessoriesServiceController(
    AccessoryModel,
    ServiceController,
    Application,
    ModelsInit,
    _
) {

    'use strict';

    // @class Address.ServiceController Manage addresses requests
    // @extend ServiceController
    return ServiceController.extend({
        // @property {String} name Mandatory for all ssp-libraries model
        name: 'Accessories.ServiceController',
        get: function() {
            var id = this.request.getParameter('internalid');
            var type = this.request.getParameter('type');
            return AccessoryModel.get({
                internalid: new String(id).toString(),
                itemtype: type,
                //itemfields: SC.Configuration.fieldKeys.itemsFieldsStandardKeys
            });
        }
    });
});