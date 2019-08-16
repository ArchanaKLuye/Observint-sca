{{#if loggedInHome}}
<div class="bg-dealer">
    <div class="home">
        <div class="welcome-msg">
            <h1 class="head1">welcome !</h1> {{translate '
            <h2 class="name" id="456">$(0)</h2>' displayName}}
            <h2 class="login-head2">solutions for</h2>
            <h2 class="login-head2">security professionals</h2>
            <div style="padding-top: 15px">
                <h4 class="sub2"> Lorem ipsum dolor sit amet, consectetur adipiscing elit,</h4>
                <h4 class="sub2"> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h4>
            </div>
            <a href="#" data-touchpoint="customercenter" data-hashtag="#purchases" name="orderhistory" class="order-button">My Orders</a>
        </div>
        <div class="bg-background-image-loged">
            <div class="home-logged-banner-section">
                <h2 class="home-logged-banner-section-head">HD BUNDLE START AT</h2>
                <h1 class="home-logged-banner-section-price">$199<sup>99</sup></h1>
            </div>
            <img class="bg-bg-img-loged" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/PLP bannerImage2.png">
        </div>
        </div>
    </div>
    <div class="home">
        <div class="row">
            <h2 class="partner">HOW CAN WE HELP YOU ?</h2>
            <div class="features">
                <div class="col_BS">
                    <div class=" detailsbox">
                        <img src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/tech.svg" class="detailimg">
                        <h4 class="sub3-login">tech support</h4>
                        <h4 class="deal_details">Lorem ipsum sit amet, Lorem ipsum sit accumsan, Lorem ipsum sit consectetLorem ipsum sit leo, Lorem ipsum sit lacinia</h4>
                        <h4 class="learmore"></h4>
                    </div>
                </div>
                <div class="col_BS">
                    <div class=" detailsbox">
                        <img src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/contact.svg" class="detailimg">
                        <h4 class="sub3-login">contact sales</h4>
                        <h4 class="deal_details">Lorem ipsum sit amet, Lorem ipsum sit accumsan, Lorem ipsum sit consectetLorem ipsum sit leo, Lorem ipsum sit lacinia</h4>
                        <h4 class="learmore"></h4>
                    </div>
                </div>
                <div class="col_BS">
                    <div class=" detailsbox">
                        <img src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/marketing-service.svg" class="detailimg">
                        <h4 class="sub3-login">marketing services</h4>
                        <h4 class="deal_details">Lorem ipsum sit amet, Lorem ipsum sit accumsan, Lorem ipsum sit consectetLorem ipsum sit leo, Lorem ipsum sit lacinia</h4>
                        <h4 class="learmore"></h4>
                    </div>
                </div>
                <div class="col_BS">
                    <div class=" detailsbox">
                        <img src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/marketing-service.svg" class="detailimg">
                        <h4 class="sub3-login">partner promotions</h4>
                        <h4 class="deal_details">Lorem ipsum sit amet, Lorem ipsum sit accumsan, Lorem ipsum sit consectetLorem ipsum sit leo, Lorem ipsum sit lacinia</h4>
                        <h4 class="learmore"></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{else}}
    <div class="bg">
        <div class="home">
            <div data-cms-area="home_cms_area_logged_homepage_banner" data-cms-area-filters="path"></div>
        </div>
    </div>
    <div class="home">
        <div data-cms-area="home_cms_area_logged_partner" data-cms-area-filters="path"></div>
    </div>
    {{/if}}
    <!-- Full Width Div -->
    <div class="features2">
        <div class="home">
            <div data-cms-area="home_cms_area_features2" data-cms-area-filters="path"></div>
        </div>
    </div>
    {{#if loggedInHome}}
    <!-- <div class="TopSellers"> -->
    <div data-cms-area="home_cms_area_14" data-cms-area-filters="path"></div>
    <!-- <div class="home">
        <div data-cms-area="home_cms_area_5" data-cms-area-filters="path"></div>
    </div>
    <div data-cms-area="home_cms_area_6" data-cms-area-filters="path"></div>
</div> -->
    {{else}}
    <div class="Allproducts">
        <div data-cms-area="home_cms_area_1" data-cms-area-filters="path"></div>
        <div class="home">
            <div data-cms-area="home_cms_area_2" data-cms-area-filters="path"></div>
        </div>
        <div data-cms-area="home_cms_area_3" data-cms-area-filters="path"></div>
    </div>
    {{/if}}
    <div class="home">
        <!--   {{#if loggedInHome}}
    <div data-view="RecentlyViewed.Items"></div>
    {{/if}} -->
        <div data-cms-area="home_cms_area_our_trusted_brands" data-cms-area-filters="path"></div>
    </div>
    <div data-cms-area="home_cms_area_background2" data-cms-area-filters="path"></div>
    <div data-view="FooterContent"></div>
    <div data-cms-area="home_cms_area_testimonials" data-cms-area-filters="path"></div>
    {{!---- Use the following context variables when customizing this template: imageHomeSize (String) imageHomeSizeBottom (String) carouselImages (Array) bottomBannerImages (Array) ----}}