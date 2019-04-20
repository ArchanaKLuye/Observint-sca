<div class="cart-confirmation-modal">
    <div class="main-conainer-addtocart">
        <div class="cart-confirmation-modal-img col-xs-6 col-sm-2 col-md-2">
            <img data-loader="false" src="{{resizeImage thumbnail.url 'main'}}" alt="{{thumbnail.altimagetext}}">
    </div>
            <div class="cart-confirmation-modal-details col-xs-12 col-sm-10 col-md-10" itemscope itemtype="https://schema.org/Product">
                <div class="section1 col-xs-12 col-sm-12 col-md-6">
                    <a href="{{model.item._url}}" class="cart-confirmation-modal-item-name">{{itemName}}</a>
                    <!-- SKU -->
                    <div data-view="Line.Sku" class="cart-confirmation-modal-sku"></div>
                </div>
                <div class="section2 col-xs-12 col-sm-12 col-md-6">
                    <div class="addcart-price col-xs-12 col-sm-6 col-md-6">
                        {{#if showQuantity}}
                        <div class="cart-confirmation-modal-quantity">
                            <span class="cart-confirmation-modal-quantity-label">{{translate 'QTY  '}}</span>
                            <span class="cart-confirmation-modal-quantity-value">{{model.quantity}}</span>
                        </div>
                        {{/if}}
                        <div class="cart-confirmation-modal-price">
                            <div data-view="Line.Price"></div>
                        </div>
                    </div>
                    <div class="total-price col-xs-12 col-sm-6 col-md-6">
                       
                        <div class="cart-item-summary-item-list-actionable-amount">
                            <span class="addet-to-cart-total-txt">{{translate 'TOTAL ' }}</span><br>
                           
                            <span class="addet-to-cart-total-val">{{ model.total_formatted }}</span> {{#if showComparePrice}}
                            <small class="muted cart-item-summary-item-view-old-price">{{ model.amount_formatted}}</small> {{/if}}
                        </div>

                       
                    </div>
                    <!-- Item Options -->
                    <div class="cart-confirmation-modal-options">
                        <div data-view="Line.SelectedOptions"></div>
                    </div>
                    <!-- Quantity -->
                </div>
            </div>
        </div>
        <div class="cart-confirmation-modal-actions-container col-md-12">
            <div class="cart-confirmation-modal-actions-txt col-sm-12 col-md-6">You Have {{model.quantity}} Products In Your Shopping Cart.</div>
            <div class="cart-confirmation-modal-actions col-xs-12 col-sm-12 col-md-6">
                <div class="cart-confirmation-modal-view-cart">
                    <a href="/cart" class="cart-confirmation-modal-view-cart-button">{{translate 'View Cart'}}</a>
                </div>
                <div class="cart-confirmation-modal-continue-shopping">
                    <button class="cart-confirmation-modal-continue-shopping-button" data-dismiss="modal">{{translate 'Continue Shopping'}}</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    $(function() {
        var $quantity = $('.cart-confirmation-modal-quantity-value').html();
        $.cookie("$quantity", JSON.stringify($quantity));
    });
    </script>
    {{!----
    Use the following context variables when customizing this template:
    model (Object)
    model.item (Object)
    model.item.internalid (Number)
    model.quantity (Number)
    model.options (Array)
    model.options.0 (Object)
    model.options.0.cartOptionId (String)
    model.options.0.itemOptionId (String)
    model.options.0.label (String)
    model.options.0.type (String)
    model.options.0.value (Object)
    model.options.0.value.internalid (String)
    model.options.0.value.label (String)
    model.location (String)
    model.fulfillmentChoice (String)
    thumbnail (Object)
    thumbnail.altimagetext (String)
    thumbnail.url (String)
    showQuantity (Boolean)
    itemName (String)
    ----}}