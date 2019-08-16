<form>
     <div data-validation="control-group">
        <label class="contactdetails-edit-label"><span class="contactdetails-edit-required">*</span>Name</label>
        <span data-validation="control">
            <input class="contactdetails-edit-fields" id="name" name="name" type="text">
        </span>
    </div>
    {{#if isNew}}
     <label class="contactdetails-edit-label">Phone</label><input class="contactdetails-edit-fields" id="phone" name="phone" type="text">
    {{/if}}
    	<input class="contactdetails-edit-fields" id="company" name="company" type="text" placeholder="Additional company line (optional)">
     <div data-validation="control-group">
     <label class="contactdetails-edit-label"><span class="contactdetails-edit-required">*</span>Address</label>
     	<span data-validation="control">
            <input class="contactdetails-edit-fields" id="address1" name="address1" type="text">
        </span>
     </div>
     	<input class="contactdetails-edit-fields" id="address2" name="address2" type="text">
     
<div class="contactdetails-edit-fields-group col-sm-12">
     <div data-validation="control-group" class="contactdetails-edit-fields-cell-left col-sm-6">
        <label class="contactdetails-edit-label"><span class="contactdetails-edit-required">*</span>City</label>
        <span data-validation="control">
            <input class="contactdetails-edit-fields" id="city" name="city" type="text">
        </span>
    </div>
    <!--  <div data-validation="control-group">
        <label>State</label>
        <span data-validation="control">
            <input id="state" name="state" type="text">
        </span>
    </div> -->

    <div class="contactdetails-edit-fields-cell-right col-sm-6" data-input="state" data-view="StatesView" data-validation="control-group"></div>
</div>
<div class="contactdetails-edit-fields-group col-sm-12">
     <div data-validation="control-group" class="contactdetails-edit-fields-cell-left col-sm-6">
        <label class="contactdetails-edit-label"><span class="contactdetails-edit-required">*</span>Zip/Postal Code</label>
        <span data-validation="control">
            <input class="contactdetails-edit-fields" id="zipcode" name="zipcode" type="text">
        </span>
     </div>
     <!-- <div data-validation="control-group">
        <label>Country</label>
        <span data-validation="control">
            <input id="country" name="country" type="text">
        </span>
    </div> -->

    <div class="contactdetails-edit-fields-cell-right col-sm-6" data-view="CountriesDropdown" data-input="country" data-validation="control-group">
    </div>
</div>
    <div class="contactdetails-edit-checkbox">
     <input id="defaultshipaddr" name="defaultshipaddr" type="checkbox" value="T">
     <label class="contactdetails-edit-label">Set as my default shipping address</label>
    </div>
    <div class="contactdetails-edit-action">
        <button type="submit" class="contactdetails-edit-form-button-submit">{{#if isNew}}ADD{{else}}SAVE{{/if}}</button>
    </div>
</form>