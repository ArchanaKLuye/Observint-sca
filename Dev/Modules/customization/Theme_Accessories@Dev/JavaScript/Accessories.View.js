define('Accessories.View', [
    'accessories_details.tpl',
    'Accessories.Model',
    'ProductViews.Price.View',
    'Backbone.CompositeView',
    'Utils',
    'Backbone',
    'underscore'
], function(
    accessories_details_tpl,
    AccessoriesModel,
    ProductViewsPriceView,
    BackboneCompositeView,
    Utils,
    Backbone,
    _
) {
    'use strict';

    // @class Case.Details.View @extends Backbone.View
    return Backbone.View.extend({
        template: accessories_details_tpl,

        initialize: function(options) {
            var self = this;
            self.model = new AccessoriesModel();
            self.model.fetch({
                data: {
                    internalid: options.items.get('internalid')
                }
            }).done(function() {
                self.render();
            });
        },
        getContext: function() {
            return {
                model: this.model,
                item: this.options.item
            }
        }
    });
});