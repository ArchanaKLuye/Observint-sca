<section class="Register">	
	<div {{#if showRegister}} class="login-register-body" {{else}} class="login-register-body-colored" {{/if}}>

	{{#if showRegisterOrGuest}}
			<div class="login-register-wrapper-column-register" style="display:none;">
				<div class="login-register-wrapper-register">
					<h2 class="login-register-title-register">{{translate 'New customer'}}</h2>

					{{#if showCheckoutAsGuest}}
						<div class="login-register-wrapper-guest" data-view="CheckoutAsGuest" style="display: none;"></div>
					{{/if}}

					{{#if showRegister}}
						<div class="{{#if showCheckoutAsGuest}}collapse{{/if}} " data-view="Register" id="register-view"></div>
					{{/if}}
				</div>
			</div>
		{{/if}}

	</div>
</section>