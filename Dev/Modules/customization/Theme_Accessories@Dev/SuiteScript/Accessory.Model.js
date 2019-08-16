define('Accessory.Model', [
    'SC.Model',
    'SC.Models.Init',
    'Backbone.Validation',
    'underscore'
], function(
    SCModel,
    ModelsInit,
    BackboneValidation,
    _
) {
    'use strict';

    return SCModel.extend({
        name: 'Accessory',
        get: function get(item) {
            var responseData = {};
            var it = nlapiLookupField(
                'item',
                item.internalid, ['custitem_custom_productaccessories']
            );
            var AccessoryID = (it.custitem_custom_productaccessories || '').split(',');
            var AccessoryData = [];
            var getAll = [];
            var HaveItem;
            var itemid;
            var salesdescription;
            var internalid;
            var imageurl;

            for (var i = 0; i < AccessoryID.length; i++) {
                AccessoryID[i] = AccessoryID[i].trim();

                if (AccessoryID[i] != undefined && AccessoryID[i] != '' && AccessoryID[i] != null) {
                    getAll[i] = this.getAccessory(AccessoryID[i]);
                    itemid = _.compact(_.uniq(_.pluck(getAll[i], 'itemid')));
                    salesdescription = _.compact(_.uniq(_.pluck(getAll[i], 'salesdescription')));
                    internalid = _.compact(_.uniq(_.pluck(getAll[i], 'internalid')));
                    imageurl = _.compact(_.uniq(_.pluck(getAll[i], 'imageurl')));

                    AccessoryData.push({

                        itemid: itemid,
                        salesdescription: salesdescription,
                        internalid: internalid,
                        imageurl: imageurl,
                        HaveItem: true
                    });
                }


            }

            console.log('AccessoryData',AccessoryData);
            return {
                AccessoryData: AccessoryData,
            }
        },

        getAccessory: function getData(id) {



            var columns = [
                new nlobjSearchColumn("itemid"),
                new nlobjSearchColumn("salesdescription"),
                new nlobjSearchColumn("internalid"),
                new nlobjSearchColumn("imageurl")
            ];

            var filters = [
                ["internalidnumber", "equalto", id]
            ];

            var results = nlapiSearchRecord("item", null, filters, columns);

            return _.map(results, function(result) {


                var data = {
                    itemid: result.getValue('itemid') || undefined, //TEXT
                    salesdescription: result.getValue('salesdescription') || undefined, //TEXT
                    internalid: result.getValue('internalid') || undefined, //TEXT
                    imageurl: result.getValue('imageurl') || undefined //TEXT
                };

                return data;
            });
        }


    });

});