<div class="modal-dialog global-views-modal {{modalDialogClass}}">
    <!--Modal-Header -->
        <div id="modal-header" class="global-views-modal-content-header">
            <button type="button" class="global-views-modal-content-header-close" data-dismiss="modal" aria-hidden="true">
                &times;
            </button>
            {{#if showPageHeader}}
            <h2 class="global-views-modal-content-header-title" >
                    {{pageHeader}}
                </h2>
            {{/if}}
        </div>
    <div class="global-views-modal-content">
        
        <!--Modal-content -->
        <div id="modal-body" data-type="modal-body" class=" global-views-modal-content-body" data-view="Child.View">
        </div>
    </div>
</div>
<!-- <script>
$(function() {
    
    var pageHead = $('.global-views-modal-content-header-title').html();
    if (!(pageHead === undefined || pageHead === null | pageHead === ' ')) {
        
        var $pageHead = pageHead.trim();
        if ($pageHead === "Added to Cart") {
            $('.global-views-modal-content').css("background-color", "#e5e5e5");
            $('.global-views-modal-content-header-title').replaceWith('<h2 class="global-views-modal-content-header-title">' + '1 ITEM ADDED TO CART' + "</h2>");
            $('.global-views-modal-content-header-title').css("color", "#fff");
        }
        setTimeout(function() {
            coockieQuantity = $.parseJSON($.cookie("$quantity"));
            if ($pageHead === "Added to Cart") {
                $('.global-views-modal-content-header-title').replaceWith('<h2 class="global-views-modal-content-header-title">' + coockieQuantity + ' ' + ' ITEMS ADDED TO CART' + "</h2>");
                $('.global-views-modal-content-header-title').css("color", "#fff");
            }
        }, 2500);
    }
});
</script> -->
{{!----
Use the following context variables when customizing this template:
pageHeader (String)
showPageHeader (Boolean)
modalDialogClass (String)
----}}