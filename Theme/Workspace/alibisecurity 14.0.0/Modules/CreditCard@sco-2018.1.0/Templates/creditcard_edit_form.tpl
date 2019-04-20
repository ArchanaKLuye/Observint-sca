<fieldset class="creditcard-edit-form">
	<div data-type="alert-placeholder"></div>

	<!-- <small class="creditcard-edit-form">{{translate 'Required'}} <span class="creditcard-edit-form-required">*</span></small>
 -->
	<div class="creditcard-edit-form" data-input="ccnumber" data-validation="control-group">
		<span class="creditcard-edit-form-label-required">*</span><label class="creditcard-edit-form-label" for="ccnumber">
			{{translate 'Credit Card Number'}} 
		</label>
		<div class="creditcard-edit-form-controls" data-validation="control">
			<input type="text" class="creditcard-edit-form-input" id="ccnumber" name="ccnumber" value="{{ccnumber}}" {{#unless isNew}}disabled{{/unless}}>
		</div>
	</div>

	<div class="creditcard-edit-form">
		{{#if showPaymentSelector}}
			<div class="creditcard-edit-form-controls-cc-select-container" data-value="creditcard-select-container" data-validation="control-group">
					<span class="creditcard-edit-form-required">*</span> <label class="creditcard-edit-form-controls-cc-select-label" for="paymentmethod"> 
						{{translate 'Credit Card Type:'}}
					</label>
					<div data-validation="control">
						<select class="creditcard-edit-form-controls-cc-select" id="paymentmethod" name="paymentmethod">
							<option value="0">{{translate 'Please Select Credit Card Type'}}</option>
							{{#each paymentMethods}}
								<option value="{{key}}" {{#if selected}} selected {{/if}}>{{name}}</option>
							{{/each}}
						</select>
					</div>
			</div>
		{{else}}
			<input class="creditcard-edit-form-input" type="hidden" id="paymentmethod" name="paymentmethod" value="{{paymentMethodValue}}"/>
		{{/if}}
		



		<div class="creditcard-edit-form-controls-img-container" data-value="creditcard-img-container">
			{{#each paymentMethods}}
				<img
					class="creditcard-edit-form-card-icon {{#if hidden}} hidden {{/if}}"
					src="{{icon}}"
					data-value="{{key}}"
					alt="{{name}}"
					data-image="creditcard-icon"
				/>
			{{/each}}			
		</div>
	</div>

	<div class="creditcard-edit-form" data-input="ccname" data-validation="control-group">
		<span class="creditcard-edit-form-label-required">*</span><label class="creditcard-edit-form-label" for="ccname">
			{{translate 'Name on Card'}} 
		</label>
		<div class="creditcard-edit-form-controls" data-validation="control">
			<input type="text" class="creditcard-edit-form-input" id="ccname" name="ccname" maxlength="26" value="{{ccname}}">
		</div>
	</div>

	<div class="creditcard-edit-form" data-validation="control-group">
		<!-- <span class="creditcard-edit-form-label-required">*</span>
		<label class="creditcard-edit-form-label" for="expmonth">{{translate 'Expiry Month'}} </label>
		<span class="creditcard-edit-form-label-required">*</span>
		<label class="creditcard-edit-form-label-year">{{translate 'Expiry Year'}}</label> -->
		<div class="creditcard-edit-form-controls" data-validation="control">
			<div class="cc-date col-sm-12 col-xs-12 col-md-12 col-lg-12 col-xl-12">
				<div class="cc-month col-sm-6 col-xs-6 col-md-6 col-lg-6 col-xl-6">
					<label class="creditcard-edit-form-label-month" for="expmonth"><span class="creditcard-edit-form-label-required">*</span>{{translate 'Expiry Month'}} </label>
					<div>
						<select class="creditcard-edit-form-select" id="expmonth" name="expmonth">
							{{#each months}}
								<option value="{{month}}" {{#if selected}} selected {{/if}}>
									{{month}}
								</option>
							{{/each}}
						</select>
					</div>
				</div>
				<div class="cc-year col-sm-6 col-xs-6 col-md-6 col-lg-6 col-xl-6"> 
					<label class="creditcard-edit-form-label-year"><span class="creditcard-edit-form-label-required">*</span>{{translate 'Expiry Year'}}
					</label>
					<div>
						<select class="creditcard-edit-form-select" id="expyear" name="expyear">
							{{#each years}}
								<option value="{{year}}" {{#if selected}} selected {{/if}} {{#if disabled}} disabled {{/if}}>
									{{year}}
								</option>
							{{/each}}
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
	{{#if showSecurityCodeForm}}
		<div data-view="CreditCard.Edit.Form.SecurityCode"></div>
	{{/if}}


	{{#if showDefaults}}
	<div class="creditcard-edit-form">
		<label class="creditcard-edit-form-checkbox">
			<input
				type="checkbox"
				id="ccdefault"
				value="T"
				data-unchecked-value="F"
				name="ccdefault"
				{{#if ccdefault}} checked {{/if}}
			>
			<!-- {{translate 'Make this my default credit card'}} -->
			<span class="default-cc-text">Make this my default credit card</span>
		</label>
	</div>
	{{/if}}
	{{#if showSaveCreditCardCheckbox}}
	<div class="creditcard-edit-form">
		<label class="creditcard-edit-form-checkbox">
			<input
				type="checkbox"
				id="savecreditcard"
				class="savecreditcard"
				value="T"
				data-unchecked-value="F"
				name="savecreditcard"
				{{#if saveCreditCardByDefault}} checked {{/if}}
			>
			{{translate 'Save this card for faster payments'}}
		</label>
	</div>
	{{/if}}

</fieldset>




{{!----
Use the following context variables when customizing this template: 
	
	paymentMethods (Array)
	paymentMethodValue (String)
	showPaymentSelector (Boolean)
	isNew (Boolean)
	months (Array)
	years (Array)
	showDefaults (Boolean)
	ccdefault (Boolean)
	showSecurityCodeForm (Boolean)
	showSaveCreditCardCheckbox (Boolean)
	saveCreditCardByDefault (Boolean)

----}}
