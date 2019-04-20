<div class="address-details">
	<div class="address-details-container" data-id="{{internalid}}" {{#if isManageOptionsSpecified}} data-manage="{{manageOption}}" {{/if}}>
		<address>
			{{#if showMultiSelect}}
				<div class="address-details-container-multiselect-address-selector" >
					<label class="address-details-container-multiselect-address-selector-checkbox">
						<input type="checkbox" {{#if isAddressCheck}} 'checked' {{/if}} data-id="{{internalid}}" data-action="multi-select-address" />
					</label>
				</div>
			{{/if}}

			<div class="address-details-info{{#if showMultiSelect}} address-details-container-multiselect-address {{/if}}">
				<p class="address-details-container-multiselect-address-title" data-name="company">
					<b>{{fullname}}</b>
				</p>
				{{#if showCompanyAndFullName}}
					<p class="address-details-container-multiselect-address-company" data-name="company">
						{{company}}
					</p>
					<p class="address-details-container-multiselect-address-name" data-name="fullname">
						{{fullname}}
					</p>
				{{else}}
					{{#if showFullNameOnly}}
						<span class="address-details-address-name" data-name="fullname"> 
							{{company}},
						</span>
					{{/if}}
				{{/if}}
				<span class="address-details-container-multiselect-address-details-addr1" data-name="addr1">
					{{addressLine1}},
				</span>
				{{#if showAddressLine1}}
					<span class="address-details-container-multiselect-address-details-addr2" data-name="addr2">
						{{addressLine2}},
					</span>
				{{/if}}
				<span class="address-details-container-multiselect-address-line">
					<span class="address-details-container-multiselect-address-details-city" data-name="city">
						{{city}},
					</span>
					{{#if showState}}
						<span class="address-details-container-multiselect-address-details-state" data-name="state">
							{{state}},
						</span>
					{{/if}}
					<span class="address-details-container-multiselect-address-zip" data-name="zip">
						{{zip}},
					</span>
				</span>
				<p class="address-details-country" data-name="country">
					{{country}}
				</p>
				<p class="address-details-phone" data-name="phone">
					<span class="phone-label">Mobile: </span>{{phone}}
				</p>
			</div>
		</address>

		<!-- {{#if showDefaultLabels}}
			{{#if isDefaultShippingAddress}}
			<p class="address-details-default-shipping">
				<i class="address-details-default-shipping-icon"></i>
				{{translate 'Default Shipping Address'}}
			</p>
			{{/if}}

			{{#if isDefaultBillingAddress}}
			<p class="address-details-default-billing">
				<i class="address-details-default-shipping-icon"></i>
				{{translate 'Default Billing Address'}}
			</p>
			{{/if}}
		{{/if}} -->

		{{#if showSelectionButton}}
			<button class="address-details-select-address" data-action="select" data-id="{{internalid}}">
				{{#if isASelectMessageSpecified}}
					{{selectMessage}}
				{{else}}
					{{translate 'Select Address'}}
				{{/if}}
			</button>
		{{/if}}

	</div>
	<hr class="address-details-divider">
	<div class="address-details-container-actions">	

		{{#if showActionButtons}}
		
			<div class="check-address">
				<label class="address-edit-form-checkbox-disabled">
						<input
							type="checkbox"
							id="ccdefault"
							value="T"
							data-unchecked-value="F"
							name="ccdefault"
							{{#if isDefaultShippingAddress}} checked {{/if}}
							disabled
						>
						{{translate 'Set as default shipping address'}}
				</label>
			</div>
			
				<div class="address-details-actions">
					<a class="address-details-edit" href="/addressbook/{{internalid}}" data-action="edit-address" data-id="{{internalid}}" data-toggle="show-in-modal">
						{{translate 'EDIT'}}
					</a>
						{{#if showChangeButton}}
							{{#if ischangeaddrshipping}}
							<a href="#" class="address-details-change-address-shipping" data-action="change-address">
								{{translate 'CHANGE ADDRESS'}}
							</a>
							{{/if}}
							{{#if ischangeaddrbilling}}
							<a href="#" class="address-details-change-address-billing" data-action="change-address">
								{{translate 'CHANGE ADDRESS'}}
							</a>
							{{/if}}
						{{else}}
							{{#if showRemoveButton}}
								<button class="address-details-remove" data-action="remove" data-id="{{internalid}}" {{#if isInvalidAddressToRemove}}disabled{{/if}}>
								{{translate 'REMOVE'}}
								</button>
							{{/if}}
						{{/if}}
				</div>
			
		
		{{#if isInvalidAddressToRemove}}
		<p class="address-details-invalid-remove-msg">{{translate 'You cannot remove this address because it was already assigned to a shipment'}}</p>
		{{/if}}
		
		{{/if}}



		{{#if showError}}
			<div data-type="address-details-error-container">
				<div class="address-details-error-message">{{translate 'Invalid address, please provide the following:'}}</div>
				{{#each invalidAttributes}}
					<div class="address-details-error-message"> - {{this}} </div>
				{{/each}}
			</div>
		{{/if}}
	</div>
</div>

<script>
	var url= window.location.href;
	var myact=url.search("my_account");
	if( myact!== -1)
	{
		$('.address-details').css("display","block");
	}
	var check=url.search("checkout");
	if(check!==-1)
	{
		$(".address-details").css("display","none");
	}
</script>


{{!----
Use the following context variables when customizing this template: 
	
	model (Object)
	model.internalid (String)
	model.country (String)
	model.state (String)
	model.city (String)
	model.zip (String)
	model.addr1 (String)
	model.addr2 (String)
	model.phone (String)
	model.fullname (String)
	model.company (String)
	model.isvalid (String)
	internalid (String)
	isManageOptionsSpecified (Boolean)
	isAddressCheck (Boolean)
	title (String)
	showCompanyAndFullName (Boolean)
	company (String)
	fullname (String)
	showFullNameOnly (Boolean)
	addressLine1 (String)
	showAddressLine1 (Boolean)
	addressLine2 (String)
	city (String)
	showState (Boolean)
	state (String)
	zip (String)
	country (String)
	phone (String)
	showDefaultLabels (Boolean)
	isDefaultShippingAddress (Boolean)
	isDefaultBillingAddress (Boolean)
	showSelectionButton (Boolean)
	isASelectMessageSpecified (Boolean)
	showActionButtons (Boolean)
	showChangeButton (Boolean)
	showRemoveButton (Boolean)
	invalidAttributes (Array)
	isInvalidAddressToRemove (Boolean)
	manageOption (String)
	showError (Boolean)
	showMultiSelect (Boolean)
	selectMessage (String)

----}}
