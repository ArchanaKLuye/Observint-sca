<div class="product-details-information-content">
    {{#if showInformation}} {{#each details}} {{!-- Mobile buttons --}}
    <button class="product-details-information-pusher" data-target="product-details-information-{{ @index }}" data-type="sc-pusher">
        {{ name }} <i></i>
        <p class="product-details-information-hint"> {{{trimHtml content 150}}} </p>
    </button>
    {{/each}}
    <div class="product-details-information-content-container">
        <div id="banner-content-top" class="content-banner banner-content-top"></div>
        <div role="tabpanel">
            {{!-- When more than one detail is shown, these are the tab headers --}}
            <ul class="product-details-information-content-tabs" role="tablist">
                {{#each details}}
                <li class="product-details-information-tab-title {{#if @first}} active {{/if}}" role="presentation">
                    <a href="#" data-action="selected-tab" data-id="{{@index}}" data-target="#product-details-information-tab-{{@index}}" data-toggle="tab">{{name}}</a>
                </li>
                {{/each}}
            </ul>
            {{!-- Tab Contents --}}
            <div class="product-details-information-tab-content" data-type="information-content" data-action="tab-content">
                {{#each details}}
                <div role="tabpanel" class="product-details-information-tab-content-panel {{#if @first}}active{{/if}}" id="product-details-information-tab-{{@index}}" itemprop="{{itemprop}}" data-action="pushable" data-id="product-details-information-{{ @index }}">
                    {{#if ../showHeader}}
                     <button class="product-details-information-class">
                        <h2 class="product-details-information-tab-content-panel-title">{{name}}</h2>
                        <i class="fa fa-angle-down pdp-angle-up" id="angle-down-product-details-information"></i>
                     </button>{{/if}}
                    <div id="product-details-information-tab-content-container-{{@index}}" class="product-details-information-tab-content-container" data-type="information-content-text" style="display: block;">{{{content}}}</div>
                </div>
                {{/each}}
                <div class="product-details-information-tab-action" data-type="information-content-text-actions">
                    <a href="#" class="product-details-information-tab-action-more" data-action="show-more">{{translate 'View More'}}</a>
                    <a href="#" class="product-details-information-tab-action-less" data-action="show-more">{{translate 'View Less'}}</a>
                </div>
            </div>
        </div>
        <div id="banner-content-bottom" class="content-banner banner-content-bottom"></div>
    </div>
    {{/if}}
</div>
<script>
    /*$(".product-details-information-class").click(function () {
    $(this).toggleClass(".pdp-angle-up");
});*/
var acc = document.getElementsByClassName("product-details-information-class");
var i;

    /*$(this).toggleClass("pdp-angle-down");*/

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
         if (panel.style.display === "block") {
            panel.style.display = "none";
            $(".pdp-angle-up").removeClass("fa fa-angle-down").addClass("fa fa-angle-up");
            $(".product-details-information-tab-action").hide();
        } else {
            panel.style.display = "block";
           $(".pdp-angle-up").removeClass("fa fa-angle-up").addClass("fa fa-angle-down");
           $(".product-details-information-tab-action").show();
            
        }
     });
    
}

</script>
{{!---- Use the following context variables when customizing this template: showInformation (Boolean) showHeader (Boolean) details (Array) ----}}
