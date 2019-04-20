<nav class="header-menu-secondary-nav">
    <!-- <div class="header-menu-search">
    <button class="header-menu-search-link" data-action="show-sitesearch" title="{{translate 'Search'}}">
        <i class="header-menu-search-icon"></i>
    </button>
</div> -->
    <ul class="header-menu-level1">
        {{#each categories}} {{#if text}}
        <li class="topmenuicons" {{#if categories}}data-toggle="categories-menu" {{/if}}>
            <a class="{{class}}" {{objectToAtrributes this}}>
                    {{translate text}}
                    </a> {{#if categories}}
            <ul class="header-menu-level-container">
                <li class="header-menu-level2">
                    {{#each categories}}
                    <li class="menu2" id="ltwo">
                        <a class="menu2-link {{class}}" {{objectToAtrributes this}}>{{translate text}}</a> {{#if categories}}
                        <ul class="header-menu-level3" style="left: 100%;width: 150%;padding-left: 50px;padding-top:20px;">
                            {{#each categories}}
                            <li class="menu3" id="lthree">
                                <a class="menu3-link {{class}}" {{objectToAtrributes this}}>{{translate text}}</a>
                            </li>
                            {{/each}}
                        </ul>
                        {{/if}}
                    </li>
                    {{/each}}
                </li>
            </ul>
            {{/if}}
        </li>
        {{/if}} {{/each}} {{#if showExtendedMenu}}
        <li style="float: right;"><a class="QuickOrder" href="#cart?openQuickOrder=true"><i class="quickorder-icon"> </i>
    {{translate 'Quick Orders'}}</a></li>{{/if}}
    </ul>
</nav>
<script>
$(function() {
    $('.topmenuicons').mouseover(function() {
        $(".header-menu-level-container").css("width", "25%");
    });
    $('.menu2-link').mouseover(function() {
        $(".header-menu-level-container").css("width", "25%");
        $(this).next('.header-menu-level3').addClass('activated');
        $(".header-menu-level-container").css("width", "100%");
        if ($(this).next('.header-menu-level3').length === 0) {
            $(".header-menu-level-container").css("width", "25%");
        };
    }).mouseout(function() {
        $('.menu2-link').next('.header-menu-level3').removeClass('activated');

    });
     $('ul.header-menu-level3').mouseover(function() {
        $(this).parent().css('background-color', '#435363');
        }).mouseout(function() {
         $(this).parent().css('background-color', '');

    });

});
</script>
{{!---- Use the following context variables when customizing this template: categories (Array) showExtendedMenu (Boolean) showLanguages (Boolean) showCurrencies (Boolean) ----}}