<div class="header-message" data-view="Message.Placeholder"></div>
<div class="header-main-wrapper">
    <div class="header-subheader">
        <div class="header-subheader-container">
            <ul class="header-subheader-options">
                {{#if showLanguagesOrCurrencies}}
                <li class="header-subheader-settings">
                    <a href="#" class="header-subheader-settings-link" data-toggle="dropdown" title="{{translate 'Settings'}}">
                        <i class="header-menu-settings-icon"></i>
                        <i class="header-menu-settings-carret"></i>
                    </a>
                    <div class="header-menu-settings-dropdown">
                        <h5 class="header-menu-settings-dropdown-title">{{translate 'Site Settings'}}</h5> {{#if showLanguages}}
                        <div data-view="Global.HostSelector"></div>
                        {{/if}} {{#if showCurrencies}}
                        <div data-view="Global.CurrencySelector"></div>
                        {{/if}}
                    </div>
                </li>
                {{/if}}
                <li class="contact">888.858.1440</li>
                {{#if loggedInHome}}
                <li><a href="#whats-new" > <span class="locate-a-dealer">What's New</span> </a></li>
                <i class="quickorder-accesspoints-icon"></i>
                <li><a href="#support" ><span class="locate-a-dealer"> Support </span></a></li>
                {{else}}
                <li data-view="StoreLocatorHeaderLink"></li>
                <li data-view="QuickOrderHeaderLink"></li>
                {{/if}}
                <!-- <li data-view="StoreLocatorHeaderLink"></li> -->
                <!-- <li data-view="RequestQuoteWizardHeaderLink"></li> -->
                <!--  <li data-view="QuickOrderHeaderLink"></li> -->
                <li class="header-menu-profile" data-view="Header.Profile"></li>
            </ul>
        </div>
    </div>
    <nav class="header-main-nav">
        <div id="banner-header-top" class="content-banner banner-header-top" data-cms-area="header_banner_top" data-cms-area-filters="global"></div>
        <div class="header-sidebar-toggle-wrapper">
            <button class="header-sidebar-toggle" data-action="header-sidebar-show">
                <i class="header-sidebar-toggle-icon" style="color: white"></i>
            </button>
        </div>
        <div class="header-content">
        <div class="header-logo-wrapper col-xs-12 col-sm-12 col-md-3 col-lg-3">
                <div data-view="Header.Logo"></div>
            </div>
            <div class="header-site-search col-xs-12 col-md-6 col-lg-6" data-view="SiteSearch" data-type="SiteSearch"></div>
            <div class="header-right-menu">
                {{#if loggedInHome}}
                <a class="become-dealer" style="display: none;">
                    <img class="become-dealer-img" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/dealer.svg">
                    <div class="become-dealer-txt" >become</div>
                    <div class="become-dealer-txt">a dealer</div>
                </a>
                {{else}}
                <a class="become-dealer" style="display: block;">
                    <img class="become-dealer-img" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/dealer.svg">
                    <div class="become-dealer-txt" style="margin-top: -3px">become</div>
                    <div class="become-dealer-txt">a dealer</div>
                </a>
                {{/if}}
                <!--  <div class="header-menu-profile" data-view="Header.Profile"></div>  -->
                <!-- !!!!IMPORTANT MESSSAGE: DO NOT DELETE. HAS TO BE USED FOR AFTER LOGIN!!!! -->
                <div class="header-menu-locator-mobile" data-view="StoreLocatorHeaderLink"></div>
                <div class="header-menu-searchmobile">
                    <button class="header-menu-searchmobile-link" data-action="show-sitesearch" title="{{translate 'Search'}}">
                        <i class="header-menu-searchmobile-icon"></i>
                    </button>
                </div>
                {{#if loggedInHome}}
                <div class="header-menu-cart">
                    <div class="header-menu-cart-dropdown">
                        <div data-view="Header.MiniCart"></div>
                    </div>
                </div>
                {{/if}}
            </div>
        </div>
        <div id="banner-header-bottom" class="content-banner banner-header-bottom" data-cms-area="header_banner_bottom" data-cms-area-filters="global"></div>
    </nav>
</div>
<div class="header-sidebar-overlay" data-action="header-sidebar-hide"></div>
<div class="header-secondary-wrapper" data-view="Header.Menu" data-phone-template="header_sidebar" data-tablet-template="header_sidebar">
</div>
<script>
$(document).ready(function() {
    $(".become-dealer").click(function() {
        var reg = "registrationTrue";
        window.location.href = "https://www.alibisecurity.ml/c.4299000_SB1/sca-dev-aconcagua/checkout.ssp?is=login&n=2&login=T&fragment=login-register#login-register?" + reg;
    });
});
</script>
{{!---- Use the following context variables when customizing this template: profileModel (Object) profileModel.addresses (Array) profileModel.addresses.0 (Array) profileModel.creditcards (Array) profileModel.firstname (String) profileModel.paymentterms (undefined) profileModel.phoneinfo (undefined) profileModel.middlename (String) profileModel.vatregistration (undefined) profileModel.creditholdoverride (undefined) profileModel.lastname (String) profileModel.internalid (String) profileModel.addressbook (undefined) profileModel.campaignsubscriptions (Array) profileModel.isperson (undefined) profileModel.balance (undefined) profileModel.companyname (undefined) profileModel.name (undefined) profileModel.emailsubscribe (String) profileModel.creditlimit (undefined) profileModel.email (String) profileModel.isLoggedIn (String) profileModel.isRecognized (String) profileModel.isGuest (String) profileModel.priceLevel (String) profileModel.subsidiary (String) profileModel.language (String) profileModel.currency (Object) profileModel.currency.internalid (String) profileModel.currency.symbol (String) profileModel.currency.currencyname (String) profileModel.currency.code (String) profileModel.currency.precision (Number) showLanguages (Boolean) showCurrencies (Boolean) showLanguagesOrCurrencies (Boolean) showLanguagesAndCurrencies (Boolean) isHomeTouchpoint (Boolean) cartTouchPoint (String) ----}}