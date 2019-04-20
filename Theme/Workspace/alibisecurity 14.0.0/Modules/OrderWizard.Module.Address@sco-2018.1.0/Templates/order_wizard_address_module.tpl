<div class="order-wizard-address-module">
	<div class="order-wizard-address-module-show-addresses-container">
		{{#if showTitle}}
			<h3 class="order-wizard-address-module-title">
				{{title}}
			</h3>
		{{/if}}
		<!--  {{#if isbilling}}
		<div class="section-billing-address">BILLING ADDRESS</div>
         {{/if}}
         {{#if isshipping}}
		<div class="section-shipping-address">SHIPPING ADDRESS</div>
         {{/if}} -->
        {{#if isSameAsEnabled}}
			<label class="order-wizard-address-module-checkbox">
				<input 
					{{#if isSameAsCheckBoxDisable}}disabled="disabled"{{/if}}
					class="same-as-billing"
					type="checkbox"
					name="same-as-address"
					data-action="same-as"
					value="1"
					{{#if isSameAsSelected}}checked{{/if}} 
				   >
				  <!--  {{#if isSameAsSelected}}checked{{/if}} -->
				<div class="order-wizard-address-module-checkbox-label">{{sameAsMessage}}</div>
			</label>
		{{/if}}

		{{#if showSingleAddressDetails}}
			<div data-view="Single.Address.Details" class="order-wizard-address-module-single"></div>
		{{else}}
			{{#if showAddressList}}
				<div id="order-wizard-address-module-placeholder" {{#if showManageValue}}data-manage="{{manageValue}}"{{/if}} class="order-wizard-address-module-list-placeholder">
					<!-- <p>
						<a class="order-wizard-address-module-new-button" href="/addressbook/new" data-toggle="show-in-modal">
							{{translate 'Add New Address'}}
						</a>
					</p> -->
					<!-- <div class="order-wizard-address-module-address-container">
						<div data-view="Address.List"></div>
					</div> -->
				</div>
			{{else}}
				<div id="address-module-form-placeholder" {{#if showManageValue}}data-manage="{{manageValue}}"{{/if}} class="order-wizard-address-module-form-placeholder">
					<div data-view="New.Address.Form"></div>

					{{#if showSaveButton}}
						<div class="order-wizard-address-module-form-actions">
							<button type="submit" class="order-wizard-address-module-save-button" data-action="submit">
								{{translate 'Save Address'}}
							</button>
						</div>
					{{/if}}
				</div>
			{{/if}}
		{{/if}}
		
		

<!--jj starts............................ -->
{{#if defaultbilladdress}}
<div id=defaultbilladdress style="display: none;">
{{defaultbilladdress}}
</div>
{{/if}}
{{#if defaultshipaddress}}
<div id=defaultshipaddress style="display: none;">
{{defaultshipaddress}}
</div>
{{/if}}
{{#if isshipping}}
<button class="accordion-section-shipping-address" onclick="myFunction2()">
<span class="serial-shipping-address">2</span>
<div class="section-shipping-address">SHIPPING ADDRESS</div>
<!-- <span class="fa fa-minus shipping-address-check-plus" id="accor-plus-shipping-address"></span> -->
<span class="minu-accc-section-shipping-address" id="minu-accc-section-shipping-address"><img class="ship-accordion" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/minus.png"></span>
</button>
<div class="info-section-shipping-address" id="info-section-shipping-address">
<div class="text-shipping-address">{{translate 'Select a shipping address from your address book or enter a new address.'}}
</div>

		<div>
		<select id=shipping >
			{{#each addr}}
				<option  data-id="{{internalid}}" >{{fullname}}, {{company}}, {{addr1}}, {{city}}, {{state}}, {{zip}}, {{country}}</option>
			{{/each}}  
		</select>
		</div>

<div class="address-list-button-container">
	<a href="/addressbook/new"  class="address-list-button-info-cards-new" data-toggle="show-in-modal"><span class="section-address-list-button-container"></span> <span>Add New Address</span></a>		
</div>
		
</div>
{{/if}}
{{#if isbilling}}
 <button class="accordion-section-billing-address"  onclick="myFunction1()">
 <span class="serial-billing-address">1</span>
<div class="section-billing-address">BILLING ADDRESS</div>
<!-- <span class="fa fa-minus billing-address-check-plus" id="accor-plus-billing-address"></span>
</button> -->
<span class="minu-accc-section-billing-address" id="minu-accc-section-billing-address"><img class="bill-accordion" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/img/minus.png"></span>
</button>
<div class="info-section-billing-address" id="info-section-billing-address">	
<div class="text-billing-address">{{translate 'Select a billing address from your address book or enter a new address.'}}
</div>

		<div>
		<select id=billing>
			{{#each addr}}
				<option  class="billing_dropdown_label" data-id="{{internalid}}">{{fullname}}, {{company}}, {{addr1}}, {{city}}, {{state}}, {{zip}}, {{country}}</option>
			{{/each}}
		</select>
		</div>
		<div class="address-list-button-container">
			<a href="/addressbook/new"  class="address-list-button-info-cards-new" data-toggle="show-in-modal"><span class="section-address-list-button-container"></span> Add New Address</a>		
		</div>	
</div>
{{/if}}
<!--jj ends............................ -->


	</div>
</div>

<!-- <script>
$("#billing").on('change', function () {
	var ide = $(this).find('option:selected').attr('data-id');
    alert($(this).find('option:selected').attr('data-id'));
    $('.address-details-change-address').click();
    $('.address-details-select-address[data-id='+ide+']').click();
});


	$("#abcd").on('change', function () {
	var ide = $(this).find('option:selected').attr('data-id');
    alert($(this).find('option:selected').attr('data-id'));
    $('.address-details-change-address').click();
    $('.address-details-select-address[data-id='+ide+']').click();
});

</script> 
 -->


<script>
	if($('#defaultbilladdress').length>0)
	{
	var defaultbillingaddress= document.getElementById("defaultbilladdress").innerHTML;
	//$('#billing option[data-id=b]').attr("selected",true);
	$('#billing option[data-id='+defaultbillingaddress+']').attr("selected",true);
	}
    if($('#defaultshipaddress').length>0)
    {
    	var defaultshippingaddress=document.getElementById("defaultshipaddress").innerHTML;
    	$('#shipping option[data-id='+defaultshippingaddress+']').attr("selected",true);
	}
	

	
	$('#shipping').on('change', function() {
		if ($('input.same-as-billing').is(':checked')) {
          $(".same-as-billing"). prop("checked", false);
            }
	});	


/*function myFunction1() {
  var x = document.getElementById("info-section-billing-address");
  if (x.style.display === "none") {
    x.style.display = "block";
    $("#minu-accc-section-billing-address").text("-");
     $(".order-wizard-address-module-checkbox").show();
  } else {
    x.style.display = "none";
    $("#minu-accc-section-billing-address").text("+");
    $(".order-wizard-address-module-checkbox").hide();

  }
}

function myFunction2() {
  var x = document.getElementById("info-section-shipping-address");
  if (x.style.display === "none") {
    x.style.display = "block";
    $("#minu-accc-section-shipping-address").text("-");
  } else {
    x.style.display = "none";
     $("#minu-accc-section-shipping-address").text("+");
  }
}*/








function myFunction1() {
  var x = document.getElementById("info-section-billing-address");
  $(".bill-accordion").hide();
  if (x.style.display === "none") {
    x.style.display = "block";

    $("#minu-accc-section-billing-address").removeClass("plus").addClass("minus");
     $(".order-wizard-address-module-checkbox").show();
  } else {
    x.style.display = "none";
    $("#minu-accc-section-billing-address").removeClass("minus").addClass("plus");
    $(".order-wizard-address-module-checkbox").hide();

  }
}









function myFunction2() {
  var x = document.getElementById("info-section-shipping-address");
   $(".ship-accordion").hide();
  if (x.style.display === "none") {
    x.style.display = "block";
    $("#minu-accc-section-shipping-address").removeClass("plus").addClass("minus");
  } else {
    x.style.display = "none";
     $("#minu-accc-section-shipping-address").removeClass("minus").addClass("plus");
  }
}

var maxLength =90;
$('#billing > option').text(function(i, text) {
     if(screen.width > 1204){
   	if (text.length > maxLength) {
        return text.substr(0,100) + '...';  
    }
   }
   else if(screen.width <= 1204 &&  screen.width >768){
   	if (text.length > maxLength) {
        return text.substr(0,75) + '...';  
    }
   }
    else if(screen.width <= 768 &&  screen.width >411){
   	if (text.length > maxLength) {
        return text.substr(0,60) + '...';  
    }
   }
     else if(screen.width <= 411 &&  screen.width >360){
   	if (text.length > maxLength) {
        return text.substr(0,35) + '...';  
    }
   }

     else if(screen.width <= 360 &&  screen.width >300){
   	if (text.length > maxLength) {
        return text.substr(0,32) + '...';  
    }
   }


});
$('#shipping > option').text(function(i, text) {
     if(screen.width > 1204){
   	if (text.length > maxLength) {
        return text.substr(0,100) + '...';  
    }
   }
   else if(screen.width <= 1204 &&  screen.width >768){
   	if (text.length > maxLength) {
        return text.substr(0,75) + '...';  
    }
   }
    else if(screen.width <= 768 &&  screen.width >411){
   	if (text.length > maxLength) {
        return text.substr(0,60) + '...';  
    }
   }
     else if(screen.width <= 411 &&  screen.width >360){
   	if (text.length > maxLength) {
        return text.substr(0,35) + '...';  
    }
   }

     else if(screen.width <= 360 &&  screen.width >300){
   	if (text.length > maxLength) {
        return text.substr(0,32) + '...';  
    }
   }


});
 
	
</script>


{{!----
Use the following context variables when customizing this template: 
	
	showTitle (Boolean)
	title (String)
	isSameAsEnabled (Boolean)
	isSameAsCheckBoxDisable (Boolean)
	isSameAsSelected (Boolean)
	sameAsMessage (String)
	showSingleAddressDetails (Boolean)
	showAddressList (Boolean)
	changeLinkText (String)
	selectedAddressId (String)
	showManageValue (Boolean)
	manageValue (String)
	model (Object)
	model.addresses (Array)
	model.addresses.0 (Object)
	model.addresses.0.zip (String)
	model.addresses.0.country (String)
	model.addresses.0.addr2 (String)
	model.addresses.0.addr1 (String)
	model.addresses.0.city (String)
	model.addresses.0.addr3 (String)
	model.addresses.0.isvalid (String)
	model.addresses.0.internalid (String)
	model.addresses.0.phone (String)
	model.addresses.0.defaultbilling (String)
	model.addresses.0.defaultshipping (String)
	model.addresses.0.isresidential (String)
	model.addresses.0.state (String)
	model.addresses.0.fullname (String)
	model.addresses.0.company (undefined)
	model.shipmethods (Array)
	model.shipmethods.0 (Object)
	model.shipmethods.0.internalid (String)
	model.shipmethods.0.name (String)
	model.shipmethods.0.shipcarrier (String)
	model.shipmethods.0.rate (Number)
	model.shipmethods.0.rate_formatted (String)
	model.lines (Array)
	model.lines.0 (Object)
	model.lines.0.item (Object)
	model.lines.0.item.internalid (Number)
	model.lines.0.item.type (String)
	model.lines.0.quantity (Number)
	model.lines.0.internalid (String)
	model.lines.0.options (Array)
	model.lines.0.options.0 (Object)
	model.lines.0.options.0.cartOptionId (String)
	model.lines.0.options.0.itemOptionId (String)
	model.lines.0.options.0.label (String)
	model.lines.0.options.0.type (String)
	model.lines.0.options.0.value (Object)
	model.lines.0.options.0.value.label (String)
	model.lines.0.options.0.value.internalid (String)
	model.lines.0.location (String)
	model.lines.0.fulfillmentChoice (String)
	model.paymentmethods (Array)
	model.paymentmethods.0 (Object)
	model.paymentmethods.0.type (String)
	model.paymentmethods.0.primary (Boolean)
	model.paymentmethods.0.creditcard (Object)
	model.paymentmethods.0.creditcard.internalid (String)
	model.paymentmethods.0.creditcard.ccnumber (String)
	model.paymentmethods.0.creditcard.ccname (String)
	model.paymentmethods.0.creditcard.ccexpiredate (String)
	model.paymentmethods.0.creditcard.ccsecuritycode (undefined)
	model.paymentmethods.0.creditcard.expmonth (String)
	model.paymentmethods.0.creditcard.expyear (String)
	model.paymentmethods.0.creditcard.paymentmethod (Object)
	model.paymentmethods.0.creditcard.paymentmethod.internalid (String)
	model.paymentmethods.0.creditcard.paymentmethod.name (String)
	model.paymentmethods.0.creditcard.paymentmethod.creditcard (Boolean)
	model.paymentmethods.0.creditcard.paymentmethod.ispaypal (Boolean)
	model.paymentmethods.0.creditcard.paymentmethod.isexternal (Boolean)
	model.paymentmethods.0.creditcard.paymentmethod.key (String)
	model.internalid (String)
	model.confirmation (Object)
	model.confirmation.addresses (Array)
	model.confirmation.shipmethods (Array)
	model.confirmation.lines (Array)
	model.confirmation.paymentmethods (Array)
	model.multishipmethods (Array)
	model.lines_sort (Array)
	model.lines_sort.0 (String)
	model.latest_addition (undefined)
	model.promocodes (Array)
	model.ismultishipto (Boolean)
	model.shipmethod (undefined)
	model.billaddress (String)
	model.shipaddress (String)
	model.isPaypalComplete (Boolean)
	model.touchpoints (Object)
	model.touchpoints.logout (String)
	model.touchpoints.customercenter (String)
	model.touchpoints.serversync (String)
	model.touchpoints.viewcart (String)
	model.touchpoints.login (String)
	model.touchpoints.welcome (String)
	model.touchpoints.checkout (String)
	model.touchpoints.continueshopping (String)
	model.touchpoints.home (String)
	model.touchpoints.register (String)
	model.touchpoints.storelocator (String)
	model.agreetermcondition (Boolean)
	model.summary (Object)
	model.summary.discounttotal_formatted (String)
	model.summary.taxonshipping_formatted (String)
	model.summary.taxondiscount_formatted (String)
	model.summary.itemcount (Number)
	model.summary.taxonhandling_formatted (String)
	model.summary.total (Number)
	model.summary.tax2total (Number)
	model.summary.discountedsubtotal (Number)
	model.summary.taxtotal (Number)
	model.summary.discounttotal (Number)
	model.summary.discountedsubtotal_formatted (String)
	model.summary.taxondiscount (Number)
	model.summary.handlingcost_formatted (String)
	model.summary.taxonshipping (Number)
	model.summary.taxtotal_formatted (String)
	model.summary.totalcombinedtaxes_formatted (String)
	model.summary.handlingcost (Number)
	model.summary.totalcombinedtaxes (Number)
	model.summary.giftcertapplied_formatted (String)
	model.summary.shippingcost_formatted (String)
	model.summary.discountrate (String)
	model.summary.taxonhandling (Number)
	model.summary.tax2total_formatted (String)
	model.summary.discountrate_formatted (String)
	model.summary.estimatedshipping (Number)
	model.summary.subtotal (Number)
	model.summary.shippingcost (Number)
	model.summary.estimatedshipping_formatted (String)
	model.summary.total_formatted (String)
	model.summary.giftcertapplied (Number)
	model.summary.subtotal_formatted (String)
	model.options (Object)
	model.purchasenumber (String)
	model.sameAs (Boolean)

----}}