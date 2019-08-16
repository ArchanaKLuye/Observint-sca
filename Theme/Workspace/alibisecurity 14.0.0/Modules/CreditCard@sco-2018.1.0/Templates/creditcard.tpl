<div class="creditcard-myaccounts" data-id="{{creditCartId}}" style="display: none;">
	<div class="creditcard-content" style="background-color: #e5e5e5;border: none; padding: 0px;">
		<div class="credit-card-details-main">
		{{#if showSecurityCodeForm}}
			<div class="creditcard-section">
		{{/if}}
			<div class="card-details">
				<div class="creditcard-header">
					{{#if showCreditCardImage}}
						<img class="creditcard-header-icon-payments" src="{{creditCardImageUrl}}" alt="{{paymentName}}">
					{{else}}
						{{paymentName}}
					{{/if}}
					
					<!-- <p class="creditcard-number-payments">{{translate 'Visa ending in $(0)'ccnumber}}</p> -->
					<p class="creditcard-number-payments">{{translate '$(1) ending in $(0) 'ccnumber paymentName}}</p>
					<p class="creditcard-name">{{ccname}}</p>
				</div>
				<p class="creditcard-expdate">{{translate 'Expires on'}}<br/><span class="cc-exp-date">{{expirationDate}}</span></p>
			</div>

		<!-- {{#if showDefaults}}
			<p class="creditcard-default">
				{{#if isDefaultCreditCard}}
					<i class="creditcard-default-icon"></i>
					{{translate 'Default Credit Card'}}
				{{/if}}
			</p>
		{{/if}} -->
		{{#if showSecurityCodeForm}}
			</div>
			<div class="creditcard-security-code-section">
				<form>
					<!-- <div data-view="CreditCard.Edit.Form.SecurityCode"></div> -->
				</form>
			</div>
		{{/if}}

		{{#if showSelect}}
			<button class="creditcard-use-this-card-button" data-action="select" data-id="{{creditCartId}}" >
				{{selectMessage}}
			</button>
		{{/if}}
	</div>
<hr class="creditcard-divider">
		{{#if showActions}}
			<div class="actions col-sm-12 col-md-12 col-lg-12">
				<div class="check col-sm-6 col-lg-6 col-md-6">
					<label class="creditcard-edit-form-checkbox-disabled">
						<input
							type="checkbox"
							id="ccdefault"
							value="T"
							data-unchecked-value="F"
							name="ccdefault"
							{{#if isDefaultCreditCard}} checked {{/if}}
							disabled
						>
						{{translate 'Default'}}
					</label>
				</div>
				<div class="creditcard-actions col-sm-6 col-lg-6 col-md-6">
					<a class="creditcard-edit-form-button-edit" href="/creditcards/{{creditCartId}}" data-toggle="show-in-modal">
						{{translate 'Edit'}}
					</a>
					<button class="creditcard-edit-form-button-remove" data-action="remove" data-id="{{creditCartId}}">
						{{translate 'Remove'}}
					</button>
				</div>
			</div>
		{{/if}}
	</div>
</div>

<!-- Credit card section in checkout -->

<div class="creditcard-checkout" data-id="{{creditCartId}}" style="display: none;">
	<div class="creditcard-content">
		{{#if showSecurityCodeForm}}
			<div class="creditcard-section">
		{{/if}}

		<div class="card-details">
				<div class="creditcard-header-checkout">
					{{#if showCreditCardImage}}
						<img class="creditcard-header-icon-payments" src="{{creditCardImageUrl}}" alt="{{paymentName}}">
					{{else}}
						{{paymentName}}
					{{/if}}
					<p class="creditcard-number-checkout">{{translate '$(1) ending in $(0) 'ccnumber paymentName}}</p>
					<p class="creditcard-name">{{ccname}}</p>
				</div>
				<p class="creditcard-expdate-checkout">{{translate 'Expires on'}}<br/><span class="cc-exp-date">{{expirationDate}}</span></p>
		</div>

		{{#if showDefaults}}
			<p class="creditcard-default">
				{{#if isDefaultCreditCard}}
					<i class="creditcard-default-icon"></i>
					{{translate 'Default Credit Card'}}
				{{/if}}
			</p>
		{{/if}}
		{{#if showSecurityCodeForm}}
			</div>
			<div class="creditcard-security-code-section">
				<form>
					<div data-view="CreditCard.Edit.Form.SecurityCode"></div>
				</form>
			</div>
		{{/if}}

		{{#if showSelect}}
			<button class="creditcard-use-this-card-button" data-action="select" data-id="{{creditCartId}}" >
				{{selectMessage}}
			</button>
		{{/if}}
	</div>
</div>

<script>
	var url= window.location.href;
	var myact=url.search("my_account");
	if( myact!== -1)
	{
		$('.creditcard-myaccounts').css("display","block");
		/*$('.creditcard-actions').css("display","block");*/
	}
	var check=url.search("checkout");
	if(check!==-1)
	{
		$('.creditcard-checkout').css("display","block");
		/*$(".creditcard-actions").css("display","none");
		$(".creditcard-divider").css("display","none");*/
	}
</script>

{{!----
Use the following context variables when customizing this template:

	creditCartId (String)
	showSecurityCodeForm (Boolean)
	showCreditCardImage (Boolean)
	creditCardImageUrl (String)
	paymentName (String)
	ccnumber (String)
	ccname (String)
	expirationDate (String)
	showDefaults (Boolean)
	isDefaultCreditCard (Boolean)
	showSelect (Boolean)
	showActions (Boolean)

----}}
