<section class="facets-facet-browse">
    {{#if showItems}}
    <div class="product-compare-list"><span id="comparision-product"> {{name}} </span> <span style="font-weight:500;">added to the</span> <span id="product-compare-list"><a href="http://alibi-security-sandbox.production.netsuitestaging.com/preferences">product compare list</a></span><span class="item-count">count</span><span class="clear-list">X</span></div>
    {{/if}}
    <div data-cms-area="item_list_banner" data-cms-area-filters="page_type"></div>
    {{#if showResults}}
    <div class="facets-facet-browse-content">
        <div class="facets-facet-browse-facets" data-action="pushable" data-id="product-search-facets">
            <div data-cms-area="facet_navigation_top" data-cms-area-filters="page_type"></div>
            {{#if isCategory}}
            <div data-view="Facets.CategorySidebar" class="facets-facet-browse-facets-sidebar"></div>
            {{/if}}
            <div data-view="Facets.FacetedNavigation" data-exclude-facets="commercecategoryname,category,custitem2,isonline,custitem4,commercecategory,custitem5,custitem_topsellers_merchandasing,custitem_all_products_merchandising,custitem_products_merchandizing"></div>
            <div data-cms-area="facet_navigation_bottom" data-cms-area-filters="page_type"></div>
        </div>
        <!--
            Sample of how to add a particular facet into the HTML. It is important to specify the data-facet-id="<facet id>"
            properly <div data-view="Facets.FacetedNavigation.Item" data-facet-id="custitem1"></div>
             -->
        <div class="facets-facet-browse-results" itemscope="" itemtype="https://schema.org/ItemList">
            <header class="facets-facet-browse-header">
                {{#if isCategory}}
                <div class="facets-facet-browse-category">
                    <div id="facets-facet-browse-commercecategory-head" data-view="Facets.Browse.CategoryHeading"></div>
                    <div data-view="Facets.CategoryCells"></div>
                </div>
                {{/if}} {{#if showItems}}
                <div class="facets-facet-browse-header-section1">
                    <h1 class="facets-facet-browse-title" data-quantity="{{total}}">

                <div class="facets-facet-browse-header-productnum-mobile">
                        {{#if keywords}}
                            {{#if isTotalProductsOne}}
                                {{translate '1 Result for <span class="facets-facet-browse-title-alt">$(0)</span>' keywords}}
                            {{else}}
                                {{translate '$(0) Results for <span class="facets-facet-browse-title-alt">$(1)</span>' total keywords}}
                            {{/if}}
                        {{else}}
                            {{#if isTotalProductsOne}}
                                {{translate '1 Product'}}
                            {{else}}
                                {{translate '$(0) Products' total}}
                            {{/if}}
                        {{/if}}
                        </div>
                    </h1>
                    <nav class="facets-facet-browse-list-header">
                        <div class="facets-facet-browse-category-head" data-view="Facets.Browse.CategoryHeading"></div>
                        <div class="facets-facet-browse-list-header-actions" data-view="Facets.ItemListDisplaySelector"></div>
                        <div class="facets-facet-browse-list-header-expander">
                            <button class="facets-facet-browse-list-header-expander-button collapsed" data-toggle="collapse" data-target="#list-header-filters" aria-expanded="true" aria-controls="list-header-filters">
                                {{translate 'Sort & Filter'}}
                                <i class="facets-facet-browse-list-header-expander-icon"></i>
                            </button>
                        </div>
                        <div class="facets-facet-browse-list-header-filters collapse" id="list-header-filters">
                            <div class="facets-facet-browse-list-header-filters-wrapper">
                                <div class="facets-facet-browse-list-header-filters-row">
                                    <div class="facets-facet-browse-list-header-filter-column" data-view="Facets.ItemListShowSelector">
                                    </div>
                                    <div class="facets-facet-browse-list-header-filter-column" data-view="Facets.ItemListSortSelector">
                                    </div>
                                    {{#if hasItemsAndFacets}}
                                    <div class="facets-facet-browse-list-header-filter-column">
                                        <button class="facets-facet-browse-list-header-filter-facets" data-type="sc-pusher" data-target="product-search-facets">
                                            {{translate 'Narrow By'}}
                                            <i class="facets-facet-browse-list-header-filter-facets-icon"></i>
                                        </button>
                                    </div>
                                    {{/if}}
                                </div>
                            </div>
                        </div>
                    </nav>
                    {{/if}}
                </div>
                {{#if showItems}}
                <div class="facets-facet-browse-header-section2">
                    <div class="facets-facet-browse-header-section2-productnum col-md-4 col-lg-4">
                        {{#if keywords}} {{#if isTotalProductsOne}} {{translate '1 Result for <span class="facets-facet-browse-title-alt">$(0)</span>' keywords}} {{else}} {{translate ' Showing $(0) Results for <span class="facets-facet-browse-title-alt">$(1)</span>' total keywords}} {{/if}} {{else}} {{#if isTotalProductsOne}} {{translate '1 Product'}} {{else}} {{translate '<b>Showing -</b> $(0) items in Products' total}} {{/if}} {{/if}}
                    </div>
                    <div class="facets-facet-browse-pagination-header col-md-4 col-lg-4" data-view="GlobalViews.Pagination"></div>
                    <div class="facets-facet-browse-list-header-filter-column-header col-md-4 col-lg-4" data-view="Facets.ItemListSortSelector">
                    </div>
                </div>
                {{/if}}
            </header>
            <meta itemprop="name" content="{{title}}" />
            <div data-cms-area="facets_facet_browse_cms_area_1" data-cms-area-filters="page_type"></div>
            <div id="banner-section-top" class="content-banner banner-section-top" data-cms-area="item_list_banner_top" data-cms-area-filters="path"></div>
            {{#if showItems}}
            <div class="facets-facet-browse-narrowedby" data-view="Facets.FacetsDisplay"></div>
            {{#if isEmptyList}}
            <div data-view="Facets.Items.Empty"></div>
            {{else}}
            <div class="facets-facet-browse-items" data-view="Facets.Items"></div>
            {{/if}} {{/if}}
        </div>
        <div class="facets-facet-browse-pagination-footer-mobile">
            <div class="facets-facet-browse-pagination" data-view="GlobalViews.Pagination"></div>
        </div>
    </div>
    {{#if showItems}}
    <div class="bottomsection">
        <span class="facets-facet-browse-list-header-filter-column-footer" data-view="Facets.ItemListShowSelector">
        </span>
        <span class="facets-facet-browse-pagination-footer" data-view="GlobalViews.Pagination"></span>
    </div>
    {{/if}}
<!--     <div class="facets-facet-browse-cms-area-2" data-cms-area="facets_facet_browse_cms_area_2" data-cms-area-filters="page_type"></div> -->
    {{else}}
    <div class="facets-facet-browse-empty-items" data-view="Facets.Items.Empty"></div>
    {{/if}}
 <!--    <div id="banner-section-bottom" class="content-banner banner-section-bottom facets-facet-browse-banner-section-bottom" data-cms-area="item_list_banner_bottom" data-cms-area-filters="page_type"></div> -->
</section>
<div class="facet-facet-our-trusted-brands" style="background-color: white;min-height: 50px">
    <div class="home">
        <div data-cms-area="facet_cms_area_our_trusted_brands" data-cms-area-filters="page_type"></div>
    </div>
</div>
<script>
$(function(){
    if($(".facets-facet-browse").length>0){
            $('.shoppingdomain-layout-breadcrumb').css("background-color","#e5e5e5");
        }
})

    function setCookie(cname, cvalue, exdays) {
  var d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  var expires = "expires="+ d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
$(function() {
     /* TO remove multiple Category head on category page and PLP*/
    if ($('.facets-facet-browse-category-head').length > 0) {
        $("#facets-facet-browse-commercecategory-head,.facets-facet-browse-facets-sidebar,.facets-browse-category-heading-main-description-desc").css("display", "none");
    }

    /* if coockie no empty push that last item into Compare list*/
    if ($.cookie('ComapreArray')) {
        /* console.log("Cocckie is not empty");*/

        var old_compareArray = $.parseJSON($.cookie("ComapreArray"));
        /*  console.log("old_compareArray", old_compareArray);*/

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
        /*   console.log("creating coockie")*/
        var ComapreArray = new Array();
       
        var checkedSKUObj = {};
        $.cookie("ComapreArray", JSON.stringify(ComapreArray));
    }

    /* Parse Coockie*/
    $(".facet-facet-product-compare").change(function(event) {
var ja =0;
        var car = [];
        ComapreArray = $.parseJSON($.cookie("ComapreArray"));
        console.log("aaaa",ComapreArray);
        var checkedSKUObj = {};

        /*  Maximum Item That can added into list is 4*/
        if (ComapreArray.length < 4) {

            /* Checking if checkbox is checked*/
            if (this.checked) {

                /*Item name*/
                var checkbox_to_update = $(event.currentTarget).prop('value');
                /* console.log("checkbox_to_update", checkbox_to_update);*/

                /*Item sku*/
                var $compare_sku = $(event.currentTarget).attr('data-sku');
                /*  console.log("compare_sku", $compare_sku);*/

                /*Item key-features*/
                var $compare_keyFeatures = $(event.currentTarget).attr('data-keyfeatures');
                /* console.log("compare_keyFeatures", $compare_keyFeatures);*/

                /* Item Price*/
                var $compare_price = $(event.currentTarget).attr('data-comapreprice');
                /* console.log("$compare_price",$compare_price);*/

                /*  Item Immage*/
                var $compare_Immage = $(event.currentTarget).attr('data-comapreImage');
                /*console.log("$compare_Immage",$compare_Immage);*/

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
                ComapreArray.push("checkedSKUObj");
                car.push(ja);
                ja++;
                /* console.log("ComapreArray", ComapreArray);*/
                $(".item-count").text(ComapreArray.length);

                /*if item is unchecked*/
            } else {

                /*Item Name*/
                var checkbox_to_update = $(event.currentTarget).prop('value');
                /*  console.log(checkbox_to_update);*/

                /*If the item exist in the array drop the item by searching the item name */
                for (var i = 0; i < ComapreArray.length; i++) {
                    if (ComapreArray[i].Compare_Name == checkbox_to_update) {
                        ComapreArray.splice(i, 1);
                        break;
                    }
                }

                /* console.log("ComapreArray", ComapreArray);*/

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
            /*  console.log(checkbox_to_update);*/

            /*If the item exist in the array drop the item by searching the item name */
            for (var j = 0; j < ComapreArray.length; j++) {
                if (ComapreArray[j].Compare_Name == checkbox_to_update) {
                    ComapreArray.splice(j, 1);
                    break;
                }
            }
            /*  console.log("ComapreArray", ComapreArray);*/

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
        console.log("ComapreArray",ComapreArray);
        console.log("car",car);

        $.cookie("ComapreArray", JSON.stringify(ComapreArray));
        setCookie("orange", JSON.stringify(ComapreArray), 10);
        setCookie("car", car, 10);


        /* console.log("SetCoockie_checkedSKUObj", ComapreArray);*/

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
        /*  console.log("lengthChecked",lengthChecked);*/

        /*Uncheck all the checkboxes in the page*/
        if ($('.facet-facet-product-compare').is(':checked')) {
            $('.facet-facet-product-compare').attr('checked', false);
        }

        alert('Product Comparison List Is Cleared');
    });



});

//RAVIN: SCRIPT STARTS HERE
$(function() {
    if ($('.facets-facet-browse').length > 0) {
        var bCrumb = new Array();
        var aItem;
        var dItemsLength = $('.global-views-breadcrumb-item').length;
        var lIndex = $('.global-views-breadcrumb-item').length - 1;
        var lLink = $('.global-views-breadcrumb-item')[lIndex].innerHTML.trim().split('>').toString().split('"')[1].toString();
        var lName = $('.global-views-breadcrumb-item-active')[0].innerText.trim();

        for (var i = 0; i < dItemsLength; i++) {
            bCrumb.push('<li class=@global-views-breadcrumb-item@>');
            bCrumb.push($('.global-views-breadcrumb-item')[i].innerHTML.trim().replace(/"/g, '@'));
            bCrumb.push('<\/li>');
            bCrumb.push('<li class=@global-views-breadcrumb-divider@><span> / </span></li>');
        }

        if (dItemsLength <= 2) {
            aItem = "/" + $('.global-views-breadcrumb-item-active')[0].innerHTML.trim().toLowerCase().replace(/ /g, '-');
        } else {
            aItem = lLink + "/" + $('.global-views-breadcrumb-item-active')[0].innerHTML.trim().toLowerCase().replace(/ /g, '-');
        }

        bCrumb.push('<li class=@global-views-breadcrumb-item@>');
        bCrumb.push('<a href=@' + aItem + '@>' + lName + '</a>');
        bCrumb.push('<\/li>');
        bCrumb.push('<li class=@global-views-breadcrumb-divider@><span> / </span></li>');

        $(".facets-item-cell-grid-title").click(function() {
            bCrumb.push('<li class=@global-views-breadcrumb-item-active@>');
            bCrumb.push($('#compare-name').text().trim());
            bCrumb.push('<\/li>');
            bCrumb = bCrumb.toString();
            bCrumb = bCrumb.toString().replace(/"/g, "");
            bCrumb = bCrumb.replace(/@/g, "\"");
            bCrumb = bCrumb.replace(/,/g, "");
            setTimeout(function() {
                document.getElementById('pdpcrumb').innerHTML = bCrumb;
            }, 1500);
        });
    }

});
</script>
{{!---- Use the following context variables when customizing this template: total (Number) isTotalProductsOne (Boolean) title (String) hasItemsAndFacets (Boolean) collapseHeader (Boolean) keywords (undefined) showResults (Boolean) isEmptyList (Boolean) isCategory (Boolean) showItems (Number) ----}}