<div class="creditcard-edit-form-securitycode">
	<div class="creditcard-edit-form-securitycode-group" data-input="ccsecuritycode" data-validation="control-group">
		<span class="creditcard-edit-form-securitycode-group-label-required">*</span><label class="creditcard-edit-form-securitycode-group-label" for="ccsecuritycode">
			{{translate 'CVV'}} 
		</label>

		<div class="creditcard-edit-form-securitycode-controls" data-validation="control">
			<input type="password" class="creditcard-edit-form-securitycode-group-input" id="ccsecuritycode" name="ccsecuritycode" value="{{value}}" maxlength="4">
			<img class="creditcard-edit-form-securitycode-group-input-icon" src="
			/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/cvv_all_cards.jpg">
			<span class="creditcard-edit-form-securitycode-group-input-label">Last 3 digits printed on the back of the card</span>

			<a href="#" class="creditcard-edit-form-securitycode-link">
				<span class="creditcard-edit-form-securitycode-icon-container">
					<i class="creditcard-edit-form-securitycode-icon"  data-toggle="popover" data-placement="bottom" data-title="{{creditCardHelpTitle}}"/>
				</span>
			</a>
		</div>
	</div>
</div>



{{!----
Use the following context variables when customizing this template:

	showCreditCardHelp (Boolean)
	creditCardHelpTitle (String)
	showError (Boolean)
	errorMessage (String)

----}}
