<h2 class="login-register-login-title">{{translate 'REGISTERED CUSTOMERS'}}</h2>
<div class="paragraph-login-text">
<p class="login-register-login-description">
    {{#if isSkipLogin}}
    {{translate 'Login below or <a class="login-register-login-register-now" href="register" data-toggle="show-in-modal" data-type="register-now">create an account</a>'}}
    {{else}}
    {{translate 'If you have an account with us, please log in.'}}
    {{/if}}
</p>
</div>
<!-- <small class="login-register-login-required">{{translate 'Required <span class="login-register-login-form-required">*</span>'}}</small> -->
<form class="login-register-login-form" novalidate>
    <fieldset class="login-register-login-form-fieldset">
        <div class="login-register-login-form-controls-group " data-validation="control-group">
            <label class="login-register-login-form-label" for="login-email">
                {{translate '<small class="login-register-login-form-required">*</small>Email Address '}}
            </label>
            <div class="login-register-login-form-controls login-email" data-validation="control">
                <input {{#if hasAutoFocus}} autofocus {{/if}} type="email" name="email" id="login-email" class="login-register-login-form-input" placeholder="{{translate 'your@email.com'}}" />
            </div>
        </div>
        <div class="login-register-login-form-controls-group" data-validation="control-group">
            <label class="login-register-login-form-label" for="login-password">
                {{translate '<small class="login-register-login-form-required">*</small>Password '}}
            </label>
            <div class="login-register-login-form-controls login-email" data-validation="control">
                <input type="password" name="password" id="login-password" class="login-register-login-form-input">
            </div>
        </div>
        {{#if isRedirect}}
        <div class="login-register-login-form-controls-group" data-validation="control-group">
            <div class="login-register-login-form-controls" data-validation="control">
                <input value="true" type="hidden" name="redirect">
            </div>
        </div>
        {{/if}}
        <div data-type="alert-placeholder" class="login-register-login-form-messages">
            {{#if isUserSessionTimedOut}}
            <div data-view="GlobalMessageSessionTimeout"></div>
            {{/if}}
        </div>
        <div>
            <label class="login-register-register-form-remindme">
               <input id="RememberMe" type="checkbox" checked style="zoom:1.5"> 
                <div class="login-register-register-form-remindme-span"<span>Remember Me</span><span style="color:#00a7ce"> What's this?</span></div>
            </label>
            </div>
         <div class="login-register-login-form-controls-group" data-type="form-login-action">
            <button type="submit" class="login-register-login-submit" data-action="login-button" style="background-color: #435363;border-color: #435363;">
                {{translate 'LOGIN'}}
            </button>
            <a class="login-register-login-forgot" data-action="forgot-password" href="/forgot-password">
				{{translate 'Forgot your password? / Reset'}}
			</a>
            <div class="register-box-image">
               </div>
                 <img class="register-box-image-set"  src="http://alibisecurity.production.netsuitestaging.com/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/login-page-dummyimage1.png">
            </div>
    </fieldset>
</form>
<script>
$(function() {
    if ($.cookie('username')) {
        var Setusername = $.parseJSON($.cookie("username"));
        $("#login-email").val(Setusername);
    }
    $('.login-register-login-submit').click(function() {
        if ($("#RememberMe").prop('checked') == true) {
            var username = $('#login-email').val();
            if ($.cookie('username')) {
                $.removeCookie('username');
            }
            $.cookie("username", JSON.stringify(username), { expires: 14 });
        } else {
            if ($.cookie('username')) {
                $.removeCookie('username');
            }
        }
    });
});
</script>
{{!----
Use the following context variables when customizing this template:
isRedirect (Boolean)
hasAutoFocus (Boolean)
isUserSessionTimedOut (Boolean)
isSkipLogin (Boolean)
----}}