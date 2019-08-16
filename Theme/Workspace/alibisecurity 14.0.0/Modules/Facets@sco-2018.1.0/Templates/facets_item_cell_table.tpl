<div class="facets-item-cell-table" itemprop="itemListElement" data-item-id="{{itemId}}" itemscope itemtype="https://schema.org/Product" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">
    <meta itemprop="url" content="{{url}}">
    <div class="facets-item-cell-table-content-wrapper">
        <div class="facet-item-specification-grid">{{itemtopname}}</div>
        <h2 class="facets-item-cell-table-title">
            <a href="{{url}}" style="color: #00a7ce;">
                <span id="compare-name" itemprop="name">
                    {{name}}
                </span>
            </a>
        </h2>
        <div class="facet-item-cell-list-sku">SKU: {{sku}}</div>
        {{#if showRating}}
        <div class="facets-item-cell-table-rating" itemprop="aggregateRating" itemscope="" itemtype="https://schema.org/AggregateRating" data-view="GlobalViews.StarRating">
        </div>
        {{/if}}
        <div class="facets-item-cell-table-price">
            <div data-view="ItemViews.Price"></div>
        </div>
    </div>
    <div class="facets-item-cell-table-image-wrapper">
        <a class="facets-item-cell-table-link-image" href="{{url}}">
            <img class="facets-item-cell-table-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image">
        </a>
        {{#if isEnvironmentBrowser}}
        <div class="facets-item-cell-table-quick-view-wrapper">
            <a href="{{url}}" class="facets-item-cell-table-quick-view-link" data-toggle="show-in-modal">
                <i class="facets-item-cell-table-quick-view-icon"></i>
                {{translate 'Quick View'}}
            </a>
        </div>
        {{/if}}
    </div>
    <div class="facets-item-cell-table-content-wrapper">
        <div data-view="ProductViewsPrice.Price" class="facets-item-cell-grid-price"></div>
        <div data-view="ItemDetails.Options"></div>
        <div class="facets-item-cell-grid-quick-addtocomapre">
            <div class="facet-item-add">
                <input type="checkbox" name="product-compare" class="facet-facet-product-compare" id="facet-facet-product-compare" value="{{name}}" data-keyfeatures="{{keyfeatures}}" data-sku="{{sku}}" data-comapreprice="{{compareprice}}" data-comapreImage="{{thumbnail.url}}"" >&nbsp;&nbsp;&nbsp;<span class=" addtocomapre-text">ADD TO COMPARE</span>
                <!-- <a href="#" class="facets-item-cell-grid-quick-view-link-add-to-compare"> -->
                <!--    </a> -->
            </div>
            <div class="facet-item-quick-view">
                <a href="{{url}}" class="facets-item-cell-table-quick-view-link-quickview" data-toggle="show-in-modal">

                    <i class="facets-item-cell-grid-quick-view-icon"></i>
                  <span class="facets-item-cell-grid-quick-view-txt-list"> QUICK VIEW</span>
                     <img class="facet-item-quick-view-icon" src="https://www.alibisecurity.ml/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/quick view icon.svg">
                </a>
            </div>
        </div>
        <div data-view="Cart.QuickAddToCart"></div>
        <!-- <div class="facets-item-cell-table-stock">
            <div data-view="ItemViews.Stock" class="facets-item-cell-table-stock-message"></div>
        </div> -->
        <!-- <div data-view="StockDescription"></div> -->
    </div>
</div>
{{!----
Use the following context variables when customizing this template:
itemId (Number)
name (String)
url (String)
sku (String)
isEnvironmentBrowser (Boolean)
thumbnail (Object)
thumbnail.url (String)
thumbnail.altimagetext (String)
itemIsNavigable (Boolean)
showRating (Boolean)
rating (Number)
----}}