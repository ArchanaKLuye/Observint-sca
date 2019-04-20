<div data-cms-area="qwerty" data-cms-area-filters="path"></div>
<div class="product-details-full">
    <div data-cms-area="item_details_banner" data-cms-area-filters="page_type"></div>
    <header class="product-details-full-header">
        <div id="banner-content-top" class="product-details-full-banner-top"></div>
    </header>
    <!--   <div class="product-details-full-divider-desktop" ></div> -->
    <div class="product-compare-list"> <span>This</span> <span id="comparision-product"> {{name}} </span> <span>added to the</span> <span id="product-compare-list"><a href="http://alibi-security-sandbox.production.netsuitestaging.com/preferences">product compare list</a></span><span class="item-count">count</span><span class="clear-list">X</span></div>
    <article class="product-details-full-content" itemscope itemtype="https://schema.org/Product">
        <meta itemprop="url" content="{{itemUrl}}">
        <div id="banner-details-top" class="product-details-full-banner-top-details"></div>
        <div classs="half-body-first">
            <section class="product-details-full-main-content col-lg-12">
               <section class="left-half-body col-lg-9">
                <div class="upper-half-body">
                <div class="product-details-full-main-content-left col-lg-3">
                    <div class="product-details-full-image-gallery-container">
                        <div id="banner-image-top" class="content-banner banner-image-top"></div>
                        <div data-view="Product.ImageGallery"></div>
                        <div id="banner-image-bottom" class="content-banner banner-image-bottom"></div>
                        <div data-cms-area="product_details_full_cms_area_2" data-cms-area-filters="path"></div>
                        <div data-cms-area="product_details_full_cms_area_3" data-cms-area-filters="page_type"></div>
                        <!--  <div>{{{videos}}}</div> -->
                    </div>
                    <!-- <iframe width="80" height="60" src="{{videos}}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
                    <p id="getmedias" style="display: none;">{{videos}}</p>
                    <div id="showvid" class="row" style="display: inline-block;"></div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <iframe id="iframeYoutube" width="560" height="315" src="https://www.youtube.com/embed/OniVaR0UBb8" frameborder="0" allowfullscreen></iframe>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <iframe width="80" height="60" src="https://www.youtube.com/embed/abDvK-G95Dc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
<iframe width="80" height="60" src="https://www.youtube.com/embed/oLuKauChb5M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
<iframe width="80" height="60" src="https://www.youtube.com/embed/kGVVZyhJFHE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
                   <!--  <div class="facet-facet-list-add-to-compare-list" style="display:block;"> -->
                        <!--    <div class="facet-item-cell-grid-sku">keyfeatures:{{name}}</div> -->
                        <!--   <div class="facet-item-cell-grid-sku">sku: {{sku}}</div> -->
                        <!-- <div class="facet-item-add">
                            <input type="checkbox" name="product-compare" class="facet-facet-product-compare" id="facet-facet-product-compare" value="{{name}}" data-keyfeatures="{{keyfeatures}}" data-sku="{{sku}}" data-comapreprice="{{compareprice}}" data-comapreImage="{{thumbnail.url}}" "><span class=" addtocomapre-text">ADD TO COMPARE</span> -->
                            <!-- <a href="#" class="facets-item-cell-grid-quick-view-link-add-to-compare"> -->
                            <!--    </a> -->
                        <!-- </div>
                    </div> -->
                </div>
                <div class="whole-product-details-main col-lg-6" style="display: inline-block;">
                    <div class="product-details-full-content-header">
                        <div data-cms-area="product_details_full_cms_area_1" data-cms-area-filters="page_type"></div>
                        <div class="product-details-itemtopname">{{itemtopname}}</div>
                        <h1 class="product-details-full-content-header-title" itemprop="name">{{pageHeader}}</h1>
                        <div data-view="Product.Sku" class="product-sku"></div>
                        <div class="product-details-full-rating" data-view="Global.StarRating"></div>
                        <div data-view="Product.Stock.Info" calss="product-stock-information"></div>
                        <!-- <div class="product-information">
                    <div class="more">{{{keyfeatures}}}</div> -->
                        <!-- <a class="read-more-product-information-label" href="#">See More</a> -->
                        <!-- </div> -->
                        <div class="article-readmore">
                            <div class="readmore">{{{keyfeatures}}}</div>
                        </div>
                        <!-- <div class="facet-facet-list-add-to-compare-list">
      -->
                        <!--    <div class="facet-item-cell-grid-sku">keyfeatures:{{name}}</div> -->
                        <!--   <div class="facet-item-cell-grid-sku">sku: {{sku}}</div> -->
                        <!-- <div class="facet-item-add">
            <input type="checkbox" name="product-compare" class="facet-facet-product-compare" id="facet-facet-product-compare" value="{{name}}" data-keyfeatures="{{keyfeatures}}" data-sku="{{sku}}" data-comapreprice="{{compareprice}}" data-comapreImage = "{{thumbnail.url}}" "><span class=" addtocomapre-text">ADD TO COMPARE</span> -->
                        <!-- <a href="#" class="facets-item-cell-grid-quick-view-link-add-to-compare"> -->
                        <!--    </a> -->
                        <!-- </div>
    </div> -->
                        <div data-cms-area="item_info" data-cms-area-filters="path"></div>
                    </div>
                    <div class="product-details-full-main-content-right">
                        <!-- <div class="product-details-full-divider"></div> -->
                        <div class="ship-info">{{translate 'Ships same business day when ordered by 3.00pm central time'}}</div>
                        <div class="product-details-full-main">
                            {{#if isItemProperlyConfigured}}
                            <form id="product-details-full-form" data-action="submit-form" method="POST">
                                <section class="product-details-full-info">
                                    <div id="banner-summary-bottom" class="product-details-full-banner-summary-bottom"></div>
                                </section>
                                <section data-view="Product.Options"></section>
                                <div data-cms-area="product_details_full_cms_area_4" data-cms-area-filters="path"></div>
                                <!--  <div data-view="Product.Sku"></div> -->
                                <div data-view="Product.Price" class="product-price"></div>
                                <div data-view="Quantity.Pricing"></div>
                                <!-- <div data-view="Product.Stock.Info"></div> -->
                                {{#if isPriceEnabled}}
                                <div class="purchase-quantity">
                                    <div data-view="Quantity" style="display: inline-block;"></div>
                                    <section class="product-details-full-actions" style="display: inline-block;">
                                        <div class="product-details-full-actions-container">
                                            <div data-view="AddToProductList" class="product-details-full-actions-addtowishlist"></div>
                                            <div data-view="MainActionView"></div>
                                        </div>
                                        <!-- <div class="product-details-full-actions-container">
                                <div data-view="AddToProductList" class="product-details-full-actions-addtowishlist"></div>
                                <div data-view="ProductDetails.AddToQuote" class="product-details-full-actions-addtoquote"></div>
                            </div> -->
                                    </section>
                                </div>
                                {{/if}}
                                <!-- <div data-view="StockDescription"></div> -->
                                <!-- <div data-view="SocialSharing.Flyout" class="product-details-full-social-sharing"></div> -->
                                <div class="product-details-full-main-bottom-banner">
                                    <div id="banner-summary-bottom" class="product-details-full-banner-summary-bottom"></div>
                                </div>
                            </form>
                            {{else}}
                            <div data-view="GlobalViewsMessageView.WronglyConfigureItem"></div>
                            {{/if}}
                            <div id="banner-details-bottom" class="product-details-full-banner-details-bottom" data-cms-area="item_info_bottom" data-cms-area-filters="page_type"></div>
                        </div>
                    </div>
                </div>

         <!--    </section> -->
             <!-- <div class="customer-aslo-brought col-lg-3" style="display: inline-block;">
                    <div class="customer-aslo-brought-header-title">Customers Also Bought</div>
                    <div class="customer-aslo-brought-header">Lorem ipsum dolor sit amet, ut tempus ligula, vulputate donec etiam lacus, neque cursus leo bibendum vel convallis ac. Dolor sodales ut per eu nisl, ultricies mus. Egestas et cursus id lacus amet, sit a qui tempus fringilla sodales. Sed a lorem neque, mi risus, wisi sit felis leo at odio, vitae vivamus porttitor lectus mauris a a. Ultricies elementum ullamcorper massa, nulla consectetuer risus elit, nibh ultricies curabitur sollicitudin ante vitae. Pede morbi commodo luctus
                    </div>
                </div>  -->
            <!-- </section> -->
        <!-- </div> -->
    </div>
    <div class="facet-facet-list-add-to-compare-list" style="display:block;">
                        <!--    <div class="facet-item-cell-grid-sku">keyfeatures:{{name}}</div> -->
                        <!--   <div class="facet-item-cell-grid-sku">sku: {{sku}}</div> -->
                        <div class="facet-item-add">
                            <input type="checkbox" name="product-compare" class="facet-facet-product-compare" id="facet-facet-product-compare" value="{{name}}" data-keyfeatures="{{keyfeatures}}" data-sku="{{sku}}" data-comapreprice="{{compareprice}}" data-comapreImage="{{thumbnail.url}}" "><span class=" addtocomapre-text">ADD TO COMPARE</span>
                            <!-- <a href="#" class="facets-item-cell-grid-quick-view-link-add-to-compare"> -->
                            <!--    </a> -->
                        </div>
    </div>
        <div data-cms-area="product_details_full_cms_area_5" data-cms-area-filters="page_type"></div>
        <div data-cms-area="product_details_full_cms_area_6" data-cms-area-filters="path"></div>
        <div clas="rest-half-body" style="display:block; padding-right: 10px;">
            <div class="product-details-rest-body ">
                <div class="product-details-full-divider-desktop"></div>
                <section data-view="Product.Information"></section>
                <!--  <section data-view="Show.Accessories"></section> -->
                <!-- <div class="product-details-full-divider-desktop"></div> -->
                <div class="product-details-full-divider-desktop"></div>
                <section data-view="Product.Specification"></section>
                <div class="product-details-full-divider-desktop"></div>
                <div class="full-product-details ">
                    <section data-view="Product.Details">
                    </section>
                     <div class="product-details-full-divider-desktop" id="pdp-video-underline"></div>
                     <div>
                         <img class="reviews_section" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/reviews_section.PNG">
                     </div>
                </div>
                <div data-cms-area="product_details_full_cms_area_7" data-cms-area-filters="path"></div>
                <!-- <div data-view="ProductReviews.Center"></div> -->
            </div>
        </div>
    </section>
    <div class="customer-aslo-brought col-lg-3" style="display: inline-block;">
                    <!-- <div class="customer-aslo-brought-header-title">Customers Also Bought</div>
                    <div class="customer-aslo-brought-header">Lorem ipsum dolor sit amet, ut tempus ligula, vulputate donec etiam lacus, neque cursus leo bibendum vel convallis ac. Dolor sodales ut per eu nisl, ultricies mus. Egestas et cursus id lacus amet, sit a qui tempus fringilla sodales. Sed a lorem neque, mi risus, wisi sit felis leo at odio, vitae vivamus porttitor lectus mauris a a. Ultricies elementum ullamcorper massa, nulla consectetuer risus elit, nibh ultricies curabitur sollicitudin ante vitae. Pede morbi commodo luctus
                    </div> -->
                    <div class="product-details-full-content-correlated-items">
            <div data-view="Correlated.Items"></div>
        </div>
                </div>
      </section>  
  </div>
        <div data-cms-area="product_details_full_cms_area_8" data-cms-area-filters="path"></div>
        <!-- <div class="product-details-full-content-related-items">
            <div data-view="Related.Items"></div>
        </div> -->
       <!--  <div class="product-details-full-content-correlated-items">
            <div data-view="Correlated.Items"></div>
        </div> -->
        <div id="banner-details-bottom" class="content-banner banner-details-bottom" data-cms-area="item_details_banner_bottom" data-cms-area-filters="page_type"></div>
    <div class="facet-facet-our-trusted-brands" style="background-color: white;min-height: 50px">
        <div class="home">
        <div data-cms-area="facet_cms_area_our_trusted_brands" data-cms-area-filters="page_type"></div>
        </div>
    </div>
    </article>
</div>
<div class="facet-facet-our-trusted-brands" style="background-color: white;min-height: 50px">
    <div class="home">
        <div data-cms-area="pdp_cms_area_our_trusted_brands" data-cms-area-filters="page_type"></div>
    </div>
</div>
<script>
  if ($(".product-details-information-tab-content-container").length <2){
    $("#pdp-video-underline").hide();
  }
  
if($(".product-details-full-content-header-title").length>0){
     $('.shoppingdomain-layout-breadcrumb').css("background-color","white");
        }
    

(function($, window, document, undefined) {
    "use strict";

    var el = $('.readmore'),

        clone = el.clone(),
        originalHtml = clone.html(),
        originalHeight = el.outerHeight(),
        Trunc = {
            moreLink: '<a href="#" class="readmore-toggle" data-read="more">View More<span class="icon-arrow-bottom"</span></a>',
            lessLink: '<a href="#" class="readmore-toggle" data-read="less">View Less <span class="icon-arrow-top"></span></a>',
            addTrigger: function() {
                $('.article-readmore').append(this.moreLink);
                console.log("el", el);
            },
            truncateText: function(textBlock) {
                while (textBlock.text().length > 240) {
                    textBlock.html(function(index, text) {
                        return text.replace(/\W*\s(\S)*$/, '...');
                    });
                }
            },
            replaceText: function(textBlock, original) {
                return textBlock.html(original).height(originalHeight);
            }

        };
    Trunc.addTrigger();
    Trunc.truncateText(el);

    $(document).on('click', '[data-read]', function(e) {
        e.preventDefault();

        if ($(this).data('read') == 'more') {
            Trunc.replaceText(el, originalHtml);
            $(this).replaceWith(Trunc.lessLink);
            console.log("originalHtml1", originalHtml);
            console.log("el1", el);
        } else if ($(this).data('read') == 'less') {
            Trunc.truncateText(el);
            $(this).replaceWith(Trunc.moreLink);
            el.css('height', '100%');
            console.log("el2", el);
        }

    });

})(jQuery, window, document, undefined);

$(function() {

    /* if coockie no empty push that last item into Compare list*/
    if ($.cookie('ComapreArray')) {
        console.log("Cocckie is not empty");
        var old_compareArray = $.parseJSON($.cookie("ComapreArray"));
        console.log("old_compareArray", old_compareArray);

        /*Check any item is exist in the array*/
        if (old_compareArray.length > 0) {
            var last_added_item = "";

            /*  Update the compare list by push the checked item*/
            last_added_item = old_compareArray[old_compareArray.length - 1].Compare_Name;
            $("#comparision-product").text(last_added_item);
            $(".item-count").text(old_compareArray.length);
            $(".product-compare-list").css("display", "block");
        }
    }

    /* Creating Coockie For a new user*/
    else {
        console.log("creating coockie")
        var ComapreArray = new Array();
        var checkedSKUObj = {};
        $.cookie("ComapreArray", JSON.stringify(ComapreArray));
    }

    /* Parse Coockie*/
    $(".facet-facet-product-compare").change(function(event) {
        ComapreArray = $.parseJSON($.cookie("ComapreArray"));
        var checkedSKUObj = {};

        /*  Maximum Item That can added into list is 4*/
        if (ComapreArray.length < 4) {

            /* Checking if checkbox is checked*/
            if (this.checked) {

                /*Item name*/
                var checkbox_to_update = $(event.currentTarget).prop('value');
                console.log("checkbox_to_update", checkbox_to_update);

                /*Item sku*/
                var $compare_sku = $(event.currentTarget).attr('data-sku');
                console.log("compare_sku", $compare_sku);

                /*Item key-features*/
                var $compare_keyFeatures = $(event.currentTarget).attr('data-keyfeatures');
                console.log("compare_keyFeatures", $compare_keyFeatures);

                /* Item Price*/
                var $compare_price = $(event.currentTarget).attr('data-comapreprice');
                console.log("$compare_price", $compare_price);

                /*  Item Immage*/
                var $compare_Immage = $(event.currentTarget).attr('data-comapreImage');
                console.log("$compare_Immage", $compare_Immage);

                /*  Update the compare list by push the checked item*/
                $("#comparision-product").text(checkbox_to_update);
                $(".product-compare-list").css("display", "block");

                /* Update the new object by settings the item attributes*/
                checkedSKUObj.Compare_Name = checkbox_to_update;
                checkedSKUObj.Compare_Sku = $compare_sku;
                checkedSKUObj.compare_keyFeatures = $compare_keyFeatures;
                checkedSKUObj.compare_price = $compare_price;
                checkedSKUObj.compare_immage = $compare_Immage;


                /*Update the array by push the object into array*/
                ComapreArray.push(checkedSKUObj);
                console.log("ComapreArray", ComapreArray);
                $(".item-count").text(ComapreArray.length);

                /*if item is unchecked*/
            } else {

                /*Item Name*/
                var checkbox_to_update = $(event.currentTarget).prop('value');
                console.log(checkbox_to_update);

                /*If the item exist in the array drop the item by searching the item name */
                for (var i = 0; i < ComapreArray.length; i++) {
                    if (ComapreArray[i].Compare_Name == checkbox_to_update) {
                        ComapreArray.splice(i, 1);
                        break;
                    }
                }

                console.log("ComapreArray", ComapreArray);

                /*  Update the compare list by push the checked item*/
                if (ComapreArray.length > 0) {
                    last_added_item = ComapreArray[ComapreArray.length - 1].Compare_Name;
                    $("#comparision-product").text(last_added_item);
                    $(".product-compare-list").css("display", "block");
                    $(".item-count").text(ComapreArray.length);
                }
            }

        }
        /*If exceed the limit of compare list(4), then when uncheck checkbox that are already checked*/
        else if (!this.checked) {
            /* Item name*/
            var checkbox_to_update = $(event.currentTarget).prop('value');
            console.log(checkbox_to_update);

            /*If the item exist in the array drop the item by searching the item name */
            for (var j = 0; j < ComapreArray.length; j++) {
                if (ComapreArray[j].Compare_Name == checkbox_to_update) {
                    ComapreArray.splice(j, 1);
                    break;
                }
            }
            console.log("ComapreArray", ComapreArray);

            /*  Update the compare list by push the checked item*/
            if (ComapreArray.length > 0) {
                last_added_item = ComapreArray[ComapreArray.length - 1].Compare_Name;
                $("#comparision-product").text(last_added_item);
                $(".product-compare-list").css("display", "block");
                $(".item-count").text(ComapreArray.length);
            }
        }

        /*If checking checkbox when compare list limit is exceeded*/
        else {
            alert('Please Uncheck an Item');

            /*Set the checked checkbox to unchecked state*/
            $(event.currentTarget).is(':checked');
            $(event.currentTarget).attr('checked', false);
        }

        /* Set the coockie*/
        $.cookie("ComapreArray", JSON.stringify(ComapreArray));
        console.log("SetCoockie_checkedSKUObj", ComapreArray);

    });

    /*When click on the close button in the compare list*/
    $(".clear-list").click(function() {

        /* Clear the array*/
        ComapreArray = new Array();

        /* Set the coockie*/
        $.cookie("ComapreArray", JSON.stringify(ComapreArray));

        /*close the div*/
        $(".product-compare-list").css("display", "none");
        var lengthChecked = $('.facet-facet-product-compare:checked').size()
        console.log("lengthChecked", lengthChecked);

        /*Uncheck all the checkboxes in the page*/
        if ($('.facet-facet-product-compare').is(':checked')) {
            $('.facet-facet-product-compare').attr('checked', false);
        }

        alert('Product Comparison List Is Cleared');
    });

});

///Ravin Function Starts
setTimeout(function() {
    $(document).ready(function() {
        console.log($(".product-reviews-review").length);
        if ($(".product-reviews-review").length > 1) {
            var length = $(".product-reviews-center-list").height();
            var divNum = $(".product-reviews-review").length;
            var h = length.toString() + "px";
            $("#rev").css("display", "inline-block");
            $(".product-reviews-center-list").addClass("rev-close");

            $("#rev").click(function() {
                $("#rev").text($("#rev").text() == 'View More' ? 'View Less' : 'View More');
                $(".product-reviews-center-list").toggleClass("rev-close rev-open");
            });
        }
    });
}, 6000);



var vid = new Array();
var allVid = document.getElementById('getmedias').innerHTML.trim().split(',');
for (var i = 0; i < allVid.length; i++) {
    if (allVid[i] != "0" && allVid[i] != "") {
        vid.push("<div class=@video@>");
        vid.push("<img src=@https://i.ytimg.com/vi/" + allVid[i] + "/1.jpg@/>");
        vid.push("<a onclick=@changeVideo(\'" + allVid[i] + "\')@></a>");
        vid.push("</div>");
    }
}
vid = vid.toString().replace(/"/g, "");
vid = vid.replace(/@/g, "\"");
vid = vid.replace(/,/g, "");
document.getElementById("showvid").innerHTML = vid;


$(document).ready(function() {
    $("#myModal").on("hidden.bs.modal", function() {
        $("#iframeYoutube").attr("src", "#");
    })
})

function changeVideo(vId) {
    var iframe = document.getElementById("iframeYoutube");
    iframe.src = "https://www.youtube.com/embed/" + vId;
    $("#myModal").modal("show");
}
///Ravin function Ends
</script>
{{!---- Use the following context variables when customizing this template: model (Object) model.item (Object) model.item.internalid (Number) model.item.type (String) model.quantity (Number) model.options (Array) model.options.0 (Object) model.options.0.cartOptionId (String) model.options.0.itemOptionId (String) model.options.0.label (String) model.options.0.type (String) model.location (String) model.fulfillmentChoice (String) pageHeader (String) itemUrl (String) isItemProperlyConfigured (Boolean) isPriceEnabled (Boolean) ----}}