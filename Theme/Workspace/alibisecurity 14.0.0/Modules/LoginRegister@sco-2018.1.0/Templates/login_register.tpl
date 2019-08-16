<section class="login-register">
    <header class="login-register-header">
        <h1 class="login-register-title"> {{translate 'LOG IN OR APPLY FOR THE ALIBI PARTNER PROGRAM'}}</h1>
        <h1 class="reghead"> {{translate 'APPLY FOR THE ALIBI PARTNER PROGRAM'}}</h1>
    </header>
    <div {{#if showRegister}} class="login-register-body" {{else}} class="login-register-body-colored" {{/if}}>
        {{#if showLogin}}
        <div class="login-register-wrapper-column-login">
            <div class="login-register-wrapper-login" data-view="Login" style="background-color: #fff;padding-top: 30px;padding-bottom: 7px;padding-right: 30px;padding-left: 40px;"></div>
        </div>
        <div class="login-register-wrapper-column-login">
            <div class="login-register-wrapper-login new-login-container" style="background-color: #fff;padding-top: 39px;padding-bottom: 43px;padding-right: 39px;padding-left: 39px;">
                <div class="Registerbox">
                    <div class="Registerbox-head">NEW CUSTOMERS</div>
                    <div class="Registerbox-content">Apply for an account to enjoy the many benefits of the Partner Program.
                     Your application will be reviewed and a member of our dealer team will contact you within 1-2 business days.</div>
                    <div class="register-box-image1">
                        <img class="a-register-box-image-set" src="http://alibisecurity.production.netsuitestaging.com/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/login-page-dummyimage1.png">
                </div>
                        <div class="register-bottom-section">
                            <div class="Registerbox-button">
                                <button type="submit" class="Registerbox-btn">APPLY FOR AN ACCOUNT</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{/if}}
            <div class="login-register-wrapper-column-register col-sm-12 col-md-12 col-lg-12">
                <div class="login-register-wrapper-register" style="background-color: #fff;">
                    <div classs="login-register-description-register" style="line-height: 2.1em; padding: 5px;margin-bottom: 20px; color: #435363; font-weight: 500;font-size: 14px;">The Alibi Partners Program is designed with you in mind.We are committed to helping your grow your business through differentiated products adn competitive pricing with deep partner discounts, dedicated account managers, field sales support, unlimited U.S.-based techenical support and turn-key generation activities. Please compleate the form below and a member of our partner team will review your application within 1-2 business days.</div>
                    <h2 class="login-register-title-register">{{translate 'PERSONAL INFORMATION'}}</h2> {{#if showCheckoutAsGuest}}
                    <div class="login-register-wrapper-guest" data-view="CheckoutAsGuest" style="display: none;"></div>
                    {{/if}} {{#if showRegister}}
                    <div class="{{#if showCheckoutAsGuest}}collapse{{/if}} " data-view="Register" id="register-view"></div>
                    {{/if}}
                </div>
            </div>
        </div>
</section>
<script>
$(document).ready(function() {
    var url = window.location.href;
    console.log(url);
    var arguments = url.split('#login-register?')[1];
    console.log("arguments", arguments);
    if (arguments == "registrationTrue") {
        $(".login-register-wrapper-column-login").css("display", "none");
        $(".login-register-title").css("display", "none");
        $(".login-register-wrapper-column-register").css("display", "block");
        $(".reghead").css("display", "block");
    } else {
        $(".login-register-wrapper-column-register").css("display", "none");
        $(".reghead").css("display", "none");
        $('.Registerbox-btn').click(function() {
            $(".login-register-wrapper-column-login").css("display", "none");
            $(".login-register-title").css("display", "none");
            $(".login-register-wrapper-column-register").css("display", "block");
            $(".reghead").css("display", "block");

        });
    }
    
    if (screen.width > 767) {

  setInterval(function() {

            if ($("p:contains(Valid Email is required)").length === 0 && $("p:contains(Please enter a valid password)").length === 0) {
                $(".new-login-container").css("min-height", "466px");
            } else if ($("p:contains(Valid Email is required)").length === 1 && $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "560px");
            } else if ($("p:contains(Valid Email is required)").length === 1 || $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "513px");
            }
             if ($(".global-views-message-error").length === 1) {
                $(".new-login-container").css("min-height", "519px");
            }
    
     
     if ( 900 > screen.width < 991) {

            if ($("p:contains(Valid Email is required)").length === 0 && $("p:contains(Please enter a valid password)").length === 0) {
                $(".new-login-container").css("min-height", "450px");
            } else if ($("p:contains(Valid Email is required)").length === 1 && $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "546px");
            } else if ($("p:contains(Valid Email is required)").length === 1 || $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "499px");
            }
      
           if ($(".global-views-message-error").length === 1) {
                $(".new-login-container").css("min-height", "521px");
            }
        }

    if (screen.width > 992) {

            if ($("p:contains(Valid Email is required)").length === 0 && $("p:contains(Please enter a valid password)").length === 0) {
                $(".new-login-container").css("min-height", "466px");
            } else if ($("p:contains(Valid Email is required)").length === 1 && $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "562px");
            } else if ($("p:contains(Valid Email is required)").length === 1 || $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "514px");
            }
      
           if ($(".global-views-message-error").length === 1) {
                $(".new-login-container").css("min-height", "520px");
            }
            
    }
    if (screen.width === 1024) {
    
         if ($(".global-views-message-error").length === 1) {
                $(".new-login-container").css("min-height", "539px");
            }
        }
    if (screen.width === 768) {

            if ($("p:contains(Valid Email is required)").length === 0 && $("p:contains(Please enter a valid password)").length === 0) {
                $(".new-login-container").css("min-height", "433px");
            } else if ($("p:contains(Valid Email is required)").length === 1 && $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "530px");
            } else if ($("p:contains(Valid Email is required)").length === 1 || $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "483px");
            }
      
           if ($(".global-views-message-error").length === 1) {
                $(".new-login-container").css("min-height", "520px");
            }
            
    }
   if (screen.width === 812) {

            if ($("p:contains(Valid Email is required)").length === 0 && $("p:contains(Please enter a valid password)").length === 0) {
                $(".new-login-container").css("min-height", "437px");
            } else if ($("p:contains(Valid Email is required)").length === 1 && $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "534px");
            } else if ($("p:contains(Valid Email is required)").length === 1 || $("p:contains(Please enter a valid password)").length === 1) {
                $(".new-login-container").css("min-height", "484px");
            }
      
           if ($(".global-views-message-error").length === 1) {
                $(".new-login-container").css("min-height", "506px");
            }
            
    }
  
    
   }, 250);

}
});

</script>

{{!---- Use the following context variables when customizing this template: showRegister (Boolean) showCheckoutAsGuest (Boolean) showLogin (Boolean) showRegisterOrGuest (Boolean) ----}}