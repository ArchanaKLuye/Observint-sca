<!-- <div class="product-compare-list"> The product {{name}} is added to product comparison list</div>  -->
<div class="facets-item-cell-grid" data-type="item" data-item-id="{{itemId}}" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/Product" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}" data-keyfeatures="{{keyfeatures}}"data-itemtopname="{{itemtopname}}">
    <meta itemprop="url" content="{{url}}" />
    <div class="facets-item-cell-grid-details">
        <div class="facet-item-specification-grid">{{itemtopname}}</div>
        <a class="facets-item-cell-grid-title" href="{{url}}">
            <span id="compare-name" itemprop="name">{{name}}</span>
        </a>
        <div class="facet-item-cell-grid-sku">SKU: {{sku}}</div>
        <!--  <div class="facet-item-cell-grid-sku" >keyfeatures: {{keyfeatures}}</div> -->
        <!--   <div class="facets-item-cell-grid-price" data-view="ItemViews.Price"></div> -->
        {{#if showRating}}
        <div class="facets-item-cell-grid-rating" itemprop="aggregateRating" itemscope="" itemtype="https://schema.org/AggregateRating" data-view="GlobalViews.StarRating">
        </div>
        {{/if}}
    </div>
    <div class="facets-item-cell-grid-image-wrapper">
        <a class="facets-item-cell-grid-link-image" href="{{url}}">
            <img class="facets-item-cell-grid-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image"/>
        </a>
    </div>
    <div class="facets-item-cell-grid-details">
        <!--    <div data-view="ItemDetails.Options"></div>
        <div data-view="AddToCart" class="product-details-full-actions-addtowishlist"></div>
        <div class="facets-item-cell-grid-stock">
            <div data-view="ItemViews.Stock" class="facets-item-cell-grid-stock-message"></div>
        </div>
        <div data-view="StockDescription"></div> -->
        <div data-view="ProductViewsPrice.Price" class="facets-item-cell-grid-price"></div>
    </div>
    <div class="facets-item-cell-grid-quick-addtocomapre">
        <div class="facet-item-add">
            <input type="checkbox" name="product-compare" class="facet-facet-product-compare" id="facet-facet-product-compare" value="{{name}}" data-keyfeatures="{{keyfeatures}}" data-sku="{{sku}}" data-comapreprice="{{compareprice}}" data-comapreImage = "{{thumbnail.url}}" ">
             &nbsp;<span class=" addtocomapre-text">ADD TO COMPARE</span>
            <!-- <a href="#" class="facets-item-cell-grid-quick-view-link-add-to-compare"> -->
            <!--    </a> -->
        </div>
        <div class="facet-item-quick-view">
          
            <a href="{{url}}" class="facets-item-cell-grid-quick-view-link-quickview" data-toggle="show-in-modal">
                  &nbsp;<span class="facets-item-cell-grid-quick-view-txt"> QUICK VIEW</span>
                     <img class="facet-item-quick-view-icon" src="https://www.alibisecurity.ml/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/quick view icon.svg">
                </a>
        </div>
    </div>
    <div data-view="Cart.QuickAddToCart"></div>
</div>
{{!---- Use the following context variables when customizing this template: itemId (Number) name (String) url (String) sku (String) isEnvironmentBrowser (Boolean) thumbnail (Object) thumbnail.url (String) thumbnail.altimagetext (String) itemIsNavigable (Boolean) showRating (Boolean) rating (Number) ----}}