<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<div id="layout" class="shopping-layout">
    <header id="site-header" class="shopping-layout-header" data-view="Header"></header>
    <div id="main-container">
        <div data-cms-area="home_cms_area_shoppingdomain" data-cms-area-filters="global"></div>
        <div class="shoppingdomain-layout-breadcrumb">
            <div class="shopping-layout-breadcrumb" itemscope itemtype="https://schema.org/WebPage">
                <div data-view="Global.Breadcrumb" data-type="breadcrumb"></div>
            </div>
        </div>
        <div class="shopping-layout-notifications">
            <div data-view="Notifications"></div>
        </div>
        <!-- Main Content Area -->
        <div id="content" class="shopping-layout-content"></div>
        <!-- / Main Content Area -->
        <div class="shopping-our-trusted-brands" style="background-color: white;min-height: 50px">
    <div class="home">
        <div data-cms-area="shopping_cms_area_our_trusted_brands" data-cms-area-filters="path"></div>
    </div>
</div>
    </div>
    <footer id="site-footer" class="shopping-layout-footer" data-view="Footer"></footer>
</div>
  <script>
        $(function(){
             $('div[id="Cart.Detailed.View"]').css("background-color","#e5e5e5");
         });
       
    </script>

{{!---- The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools. ----}}