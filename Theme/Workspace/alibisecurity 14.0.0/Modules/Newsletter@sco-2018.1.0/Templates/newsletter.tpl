<!-- <form class="newsletter-suscription-form" data-action="newsletter-subscribe" novalidate>

    <div data-validation="control-group">

        <h5 class="newsletter-subscription-form-label" for="login-email">{{translate 'Newsletter Sign Up'}}</h5>

        <div class="newsletter-subscription-form-container {{#if showErrorMessage}}error{{/if}}" data-validation="control">
            <input
                name="email"
                id="email"
                type="email"
                class="newsletter-suscription-form-input"
                placeholder="{{translate 'username@domain.com'}}"
            >

            <button type="submit" class="newsletter-subscription-form-button-subscribe">
                {{translate 'Subscribe'}}
            </button>

            <div class="newsletter-alert-placeholder" data-type="alert-placeholder" >
                {{#if isFeedback}}
                <div data-view="GlobalMessageFeedback"></div>
                {{/if}}
            </div>
        </div>
    </div>
</form> -->
<!-- NewsLetter Template -->
<div class="newsletter-home">
    <form class="newsletter-suscription-form" data-action="newsletter-subscribe" novalidate>
        <div data-validation="control-group">
            <div class="home newsletter-subscription-form-container {{#if showErrorMessage}}error{{/if}}" data-validation="control">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <h2 class="nlHead">get in touch</h2>
                        <p class="nlSub">get weekly news and exciting offers</p>
                        <p class="nlSub">delivered to your inbox</p>
                    </div>
                     <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 home_newsletter">
                        <input name="email" id="email" type="nlEmail" class="nlInput" placeholder="{{translate 'your email address'}}"/>
                        <div class="newsletter-alert-placeholder" data-type="alert-placeholder">
                            {{#if isFeedback}}
                            <div data-view="GlobalMessageFeedback"></div>
                            {{/if}}
                        </div>
                        <button type="submit" class="nlButton">
                            <img src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/arrow.svg">
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- NewsLetter Template Ends-->
{{!---- Use the following context variables when customizing this template: isFeedback (Boolean) model (Object) ----}}