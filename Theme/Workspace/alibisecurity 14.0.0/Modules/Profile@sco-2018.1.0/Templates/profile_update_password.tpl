
{{#if showBackToAccount}}
	<a href="/" class="profile-update-password-button-back">
		<i class="profile-update-password-button-back-icon"></i>
		{{translate 'Back to Account'}}
		</a>
{{/if}}
<section class="profile-update-password">
	<div class="profile-update-password-form-title">{{pageHeader}}</div>
	<div class="form-heading-userid"><fieldset>
		<div class="a-user-id-label">
			<br><label class="profile-update-password-form-group-label" style="color:#8a8a8a;"><strong style="color: #435363">USER ID</strong> <small>(CAN BE YOUR EMAIL ADDRESS)</small></label>
		</div>
		<br>
		<div id="profileRememberMe">{{email}}</div>
  </fieldset>
	<div data-type="alert-placeholder"></div>
	<div class="profile-update-password-form-area">
        <form class="profile-update-password-form">
			<fieldset>
				<div ><hr class="hr-line"></div>
				<!-- <small class="profile-update-password-form-label">{{translate 'Required'}} <span 
				class="profile-update-password-form-group-label-required">*</span></small> -->
				 <label class="password-update-area">PASSWORD</label>
					<div class="profile-update-password-form-group" data-input="current_password" data-validation="control-group">
                    <label class="profile-update-password-form-group-label" for="current_password"><span class="profile-update-password-form-group-label-required">*</span>{{translate 'Current Password'}}</label>
					<div  class="profile-update-password-group-form-controls" data-validation="control">
						<input type="password" class="profile-update-password-form-group-input" id="current_password" name="current_password" value="">
					</div>
				</div>

				<div class="profile-update-password-form-group" data-input="password" data-validation="control-group">
					<label class="profile-update-password-form-group-label" for="password"><span class="profile-update-password-form-group-label-required">*</span>{{translate 'New Password'}}</label>
					<div  class="profile-update-password-group-form-controls" data-validation="control">
						<input type="password" class="profile-update-password-form-group-input" id="password" name="password" value="">
					</div>
				</div>

				<div class="profile-update-password-form-group" data-input="confirm_password" data-validation="control-group">
					<label class="profile-update-password-form-group-label" for="confirm_password"><span class="profile-update-password-form-group-label-required">*</span>{{translate 'Confirm New Password'}}</label>
					<div  class="profile-update-password-group-form-controls" data-validation="control">
						<input type="password" class="profile-update-password-form-group-input" id="confirm_password" name="confirm_password" value="">
					</div>
				</div>
				</fieldset>
			<div ><hr class="hr-line"></div><br>
			<div class="remember-me-login-option-head">
			<p class="profile-update-password-form-group-label-foo"><strong>REMEMBER ME</strong>
            </div>
            <br>
			<div class="remember-me-login-option-para">
			<p>Save a step with 'Remember Me' and see your prouducts, pricing, custom catalog and much more, displayed without entering your User ID on each visit.To protect your privacy you will only need to login to access account details,like order history,or excecute sales transactions.
		</div>
		<br>
		<div>
            <label class="profile-profile-profile-form-remindme">
                <input id="profileRememberMe-checkbox" class="profileRememberMe" type="checkbox" checked> <span>Remember Me</span>
            </label>
        </div>
			<div class="profile-update-password-form-actions">
				<button type="submit" class="profile-update-password-form-actions-update">{{translate 'Save'}}</button>
				<!-- <button type="reset" class="profile-update-password-form-actions-reset hide" data-action="reset">{{translate 'Reset'}}</button> -->
			</div>
			
		</form>
	</div>
</section>

<script>
$(function() {
   
    $('.profile-update-password-form-actions-update').click(function() {
        if ($("#profileRememberMe-checkbox").prop('checked') == true) {
            var username = $('#updated-new-email').text().trim();
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

	pageHeader (String)
	showBackToAccount (Boolean)

----}}






