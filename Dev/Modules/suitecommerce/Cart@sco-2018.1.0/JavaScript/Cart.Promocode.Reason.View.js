/*
    © 2017 NetSuite Inc.
    User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
    provided, however, if you are an authorized user with a NetSuite account or log-in, you
    may use this code subject to the terms that govern your access and use.
*/

//@module Cart
define('Cart.Promocode.Reason.View', [
    'cart_promo_reason.tpl'

    , 'Backbone', 'underscore'
], function(
    cart_promo_reason_tpl

    , Backbone, _
) {
    'use strict';

    //@class Cart.Promocode.List.Item.View @extend Backbone.View
    return Backbone.View.extend({

        //@property {Function} template
        template: cart_promo_reason_tpl

            //@method getContext
            //@return {Cart.Promocode.List.Item.View.Context}
            ,
        getContext: function getContext() {
            console.log(this.model);
            var reason = this.model.get('applicabilityreason');
            var status = this.model.get('applicabilitystatus');
            var reasonmsg = '',
                statusmsg = '';

            if (status == 'APPLIED') {
                statusmsg = _('Promotion is applied for this item.').translate();
            } else if (status == 'NOT_APPLIED') {
                statusmsg = _('Sorry, no discount is added to your order').translate();
            } else if (status == 'NOT_AVAILABLE') {
                statusmsg = _('Status of this promotion is not available.').translate();
            }

            if (reason == 'DISCARDED_BEST_OFFER') {
                reasonmsg = _('Promotion is not applied as there is another promocode or a combination of promocodes that is giving you a better discount.').translate();
            } else if (reason == 'CRITERIA_NOT_MET') {
                reasonmsg = _('Sorry, the promocode is not applied as it does not meet the criteria.').translate();
            }

            return {

                reasonmsg: reasonmsg,
                statusmsg: statusmsg
            };
            //@class Cart.Promocode.List.Item.View
        }
    });
});

//@class Cart.Promocode.List.Item.View.Initialize.Options
//@property {Backbone.Model<{code:String,internalid:String}>} model
//@property {Boolean?} isReadOnly