 <div class="address-edit-fields col-sm-12 checkout-address" style="padding: 0px;">
	<div data-type="alert-placeholder"></div>

	<div class="address-edit-fields-group col-sm-6" data-input="fullname" data-validation="control-group" style="display: none;">
		<label class="address-edit-fields-group-label col-sm-12" for="{{manage}}fullname" style="padding: 0px;">
			 <span class="address-edit-fields-group-label-required">*</span>{{translate 'Full Name'}}
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}fullname" name="fullname" value="{{fullName}}" style="min-height: 0px">
		</div>
	</div>

	<div class="col-sm-12 col-md-12 col-lg-12" style="padding: 0px;">
	<div class="address-edit-fields-group city-zip-fname-phone col-sm-6 " data-input="firstname" data-validation="control-group">
		<label class="address-edit-fields-group-label col-sm-12"  for="{{manage}}firstname" style="padding: 0px;">
			<span class="address-edit-fields-group-label-required">*</span>{{translate 'First Name'}} 
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}firstname" name="firstname" value="{{firstname}}" style="width: 100%;">
		</div>
	</div>
	<div class="address-edit-fields-group state-country-lname col-sm-6" data-input="lastname" data-validation="control-group">
		<label class="address-edit-fields-group-label col-sm-12" for="{{manage}}lastname" style="padding: 0px;">
			<span class="address-edit-fields-group-label-required">*</span>{{translate 'Last Name'}} 
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}lastname" name="lastname" value="{{lastname}}" style="width: 100%;">
		</div>
	</div>
	</div>
	{{#if showCompanyField}}
	<div class="address-edit-fields-group col-sm-12" {{#if isCompanyFieldMandatory}} data-input="company" data-validation="control-group" {{/if}} style="padding: 0px;">
		<label class="address-edit-fields-group-label" for="{{manage}}company">
			
			{{#if isCompanyFieldMandatory}}
				 <span class="address-edit-fields-group-label-required">*</span>
			{{else}}
				<p class="address-edit-fields-company-optional-label"><!-- {{translate '(optional)'}} --></p>
			{{/if}}
			{{translate 'Company Name'}}
		</label>
		<div  class="address-edit-fields-group-form-controls" {{#if isCompanyFieldMandatory}} data-validation="control" {{/if}}>
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}company" name="company" value="{{company}}" style="width: 100%;" >
		</div>
	</div>
	{{/if}}

	<div class="address-edit-fields-group col-sm-12" data-input="addr1" data-validation="control-group" style="padding: 0px;">
		<label class="address-edit-fields-group-label" for="{{manage}}addr1">
			 <span class="address-edit-fields-input-required">*</span>{{translate 'Address'}}
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}addr1" name="addr1" value="{{addressLine1}}" style="width: 100%;height: 80px;">
			<!-- <small class="address-edit-fields-input-help">{{translate 'Example: 1234 Main Street'}}</small> -->
		</div><div class="address-edit-fields-group-label">{{translate 'Please note that we cannot ship to P.O Boxes'}}</div>
	</div>


	<!-- {{#if showAddressFormSecondAddress}}
	<div class="address-edit-fields-group address-edit-fields-group-big" data-input="addr2">
		<label for="{{manage}}addr2" class="address-edit-fields-addr2-optional-label">
			{{translate '(optional)'}}
		</label>
		<div>
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}addr2" name="addr2" value="{{addressLine2}}">
			<small class="address-edit-fields-input-help">{{translate 'Example: Apt. 3 or Suite #1516'}}</small>
		</div>
	</div>
	{{/if}} -->
<div class="col-sm-12" style="padding: 0px; padding-top: 10px;">
	<div class="address-edit-fields-group city-zip-fname-phone col-sm-6 col-xs-12" data-input="city" data-validation="control-group">
		<label class="address-edit-fields-group-label" for="{{manage}}city">
			 <span class="address-edit-fields-input-required">*</span>{{translate 'City'}}
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}city" name="city" value="{{city}}" style="width: 100%;">
		</div>
	</div>
	<div class="address-edit-fields-group state-country-lname col-sm-6 col-xs-12" data-input="state" data-view="StatesView" data-validation="control-group">
	</div>
</div>
<div class="col-sm-12 " style="padding: 0px;">
	<div class="address-edit-fields-group city-zip-fname-phone col-sm-6 col-xs-12" data-input="zip" {{#if isZipOptional}} style="display: none;" {{/if}} data-validation="control-group">
		<label class="address-edit-fields-group-label" for="{{manage}}zip">
			 <span class="address-edit-fields-input-required">*</span>{{translate 'Zip/Postal Code'}}
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input-zip" id="{{manage}}zip" name="zip" value="{{zip}}" data-type="zip" style="width: 100%;">
			<!-- <small class="address-edit-fields-input-help">{{translate 'Example: 94117'}}</small> -->
		</div>
	</div>

	<div class="address-edit-fields-group state-country-lname {{#unless showCountriesField}} hide {{/unless}} col-sm-6 col-xs-12" data-view="CountriesDropdown" data-input="country" data-validation="control-group">
	</div>
</div>

<div class="col-sm-12" style="padding: 0px;">
	<div class="address-edit-fields-group city-zip-fname-phone col-sm-6 col-xs-12" data-input="phone" data-validation="control-group">
		<label class="address-edit-fields-group-label" for="{{manage}}phone">
			
			{{#if isPhoneFieldMandatory}}
				 <span class="address-edit-fields-input-required">*</span>
			{{else}}
				<p class="address-edit-fields-phone-optional-label">{{translate '(optional)'}}</p>
			{{/if}}
			{{translate 'Telephone / Mobile'}}
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="tel" class="address-edit-fields-group-input" id="{{manage}}phone" name="phone" value="{{phone}}" data-action="inputphone" style="width: 100%;">
			<!-- <small class="address-edit-fields-input-help">{{translate 'Example: 555-123-1234'}}</small> -->
		</div>
	</div>

{{#if showAddressFormSecondAddress}}
	<div class="address-edit-fields-group address-edit-fields-group-big col-sm-6" data-input="addr2" data-validation="control-group" style="padding-right: 0px; display: none;">
		<label for="{{manage}}addr2" class="address-edit-fields-addr2-optional-label" style="padding: 0px;">
			{{translate 'Fax'}}
		</label>
		<div class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}addr2" name="addr2" value="{{addressLine2}}"style="width: 100%;">
			<!-- <small class="address-edit-fields-input-help">{{translate 'Example: Apt. 3 or Suite #1516'}}</small> -->
		</div>
	</div>
	{{/if}}
</div>


	<!-- <div class="address-edit-fields-group col-sm-6 " data-input="Fax" data-validation="control-group">
		<label class="address-edit-fields-group-label col-sm-12"  for="{{manage}}fax" style="padding: 0px;">
			<span class="address-edit-fields-group-label-required">*</span>{{translate 'Fax'}} 
		</label>
		<div  class="address-edit-fields-group-form-controls" data-validation="control">
			<input type="text" class="address-edit-fields-group-input" id="{{manage}}fax" name="fax" value="{{fax}}" style="width: 100%;">
		</div>
	</div>
 -->






	<!-- <div class="address-edit-fields-group col-sm-12" data-input="isresidential">
		<label class="address-edit-fields-group-input-checkbox">
			<input type="checkbox" id="{{manage}}isresidential" value="T" data-unchecked-value="F" name="isresidential" {{#if isAddressResidential}} checked {{/if}} >
			{{translate 'This is a Residential Address'}}
			<i class="address-edit-fields-icon-question-sign" data-toggle="tooltip" title="" data-original-title="{{translate 'Indicating that this is a residential address will help us determine the best delivery method for your items.'}}"></i>
		</label>
	</div> 


	{{#if showDefaultControls}}
		<div class="address-edit-fields-group" data-input="defaultbilling">
			<label class="address-edit-fields-group-input-checkbox">
				<input type="checkbox" id="{{manage}}defaultbilling" value="T" data-unchecked-value="F" name="defaultbilling" {{#if isAddressDefaultBilling}} checked {{/if}}>
				{{#if isCurrentTouchPointCheckout}}
					{{translate 'Save as my primary billing address'}}
				{{else}}
					{{translate 'Make this my default billing address'}}
				{{/if}}
			</label>
		</div>

		<div class="address-edit-fields-group" data-input="defaultshipping">
			<label class="address-edit-fields-group-input-checkbox">
				<input type="checkbox" id="{{manage}}defaultshipping" value="T" data-unchecked-value="F" name="defaultshipping" {{#if isAddressDefaultShipping}} checked {{/if}}>
				{{#if isCurrentTouchPointCheckout}}
					{{translate 'Save as my primary shipping address'}}
				{{else}}
					{{translate 'Make this my default shipping address'}}
				{{/if}}
			</label>
		</div>
	{{/if}} -->

	<div class="address-edit-fields-group col-sm-12" data-input="defaultbilling" style="padding: 0px;">
			<label class="address-edit-fields-group-input-checkbox" style="font-size: 12px">
				<input type="checkbox" id="{{manage}}defaultbilling" value="T" data-unchecked-value="F" name="defaultbilling" {{#if isAddressDefaultBilling}} checked {{/if}}>
				{{#if isCurrentTouchPointCheckout}}
					{{translate 'Make this my default billing address'}}
				{{else}}
					{{translate 'Make this my default billing address'}}
				{{/if}}
			</label>
		</div>

		<div class="address-edit-fields-group col-sm-12" data-input="defaultshipping" style="padding: 0px;">
			<label class="address-edit-fields-group-input-checkbox" style="font-size: 12px">
				<input type="checkbox" id="{{manage}}defaultshipping" value="T" data-unchecked-value="F" name="defaultshipping" {{#if isAddressDefaultShipping}} checked {{/if}}>
				{{#if isCurrentTouchPointCheckout}}
					{{translate 'Make this my default shipping address'}}
				{{else}}
					{{translate 'Make this my default shipping address'}}
				{{/if}}
			</label>
		</div>
</div>

<script>

$('#in-modal-firstname').change(function(){
	var fname = $('#in-modal-firstname').val();
	var lname = $('#in-modal-lastname').val();
	//alert( fname + " " + lname);
	$('#in-modal-fullname').val(fname + " " + lname);
})
$('#in-modal-lastname').change(function(){
	var fname = $('#in-modal-firstname').val();
	var lname = $('#in-modal-lastname').val();
	//alert( fname + " " + lname);
	$('#in-modal-fullname').val(fname + " " + lname);
	//var name= 
})

</script>



{{!----
Use the following context variables when customizing this template: 
	
	manage (String)
	showCompanyField (Boolean)
	isCompanyFieldMandatory (Boolean)
	isPhoneFieldMandatory (Boolean)
	showCountriesField (Boolean)
	isZipOptional (Boolean)
	isAddressResidential (Boolean)
	showDefaultControls (Boolean)
	isAddressDefaultBilling (Boolean)
	isCurrentTouchPointCheckout (Boolean)
	isAddressDefaultShipping (Boolean)
	showAddressFormSecondAddress (Boolean)
	fullName (String)
	addressLine1 (String)
	city (String)
	zip (String)
	phone (String)
	company (String)
	addressLine2 (String)

----}}
