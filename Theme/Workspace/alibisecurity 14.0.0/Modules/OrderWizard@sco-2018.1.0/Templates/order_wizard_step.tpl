<div data-action="skip-login-message" class="order-wizard-step-guest-message"></div>

{{#if showTitle}}
<header class="order-wizard-step-header">
	<h2 data-type="wizard-step-name-container" class="order-wizard-step-title">{{title}}</h2>
</header>
{{/if}}

<div data-type="alert-placeholder-step"></div>

<div class="order-wizard-step-review-wrapper">
	
	<section class="order-wizard-step-review-main">
		<div id="wizard-step-review-left"></div>
	</section>

	<section id="wizard-step-review-right" class="order-wizard-step-review-secondary">
	</section>

</div>

<!-- <div data-cms-area="checkoutpage_top_cms_area" data-cms-area-filters="page_type"></div> -->

<div class="order-wizard-step-content-wrapper">
	
	<section id="wizard-step-content" class="order-wizard-step-content-main">
	</section>
<div>
	<section id="wizard-step-content-right" class="order-wizard-step-content-secondary">
	</section>

	<div class="order-wizard-step-actions">

		{{#if showBottomMessage}}
		<small class="order-wizard-step-message {{bottomMessageClass}}">
			{{bottomMessage}}
		</small>
		{{/if}}

		<div class="order-wizard-step-button-container">

			{{#if showContinueButton}}
			<button class="order-wizard-step-button-continue" data-action="submit-step">
				{{continueButtonLabel}}
			</button>
			{{/if}}
			<button class="order-wizard-step-button-back" {{#unless showBackButton}}style="display:none;"{{/unless}} data-action="previous-step">
				{{translate 'Back'}}
			</button>
		</div>
	</div>
</div>
</div>

<script>
	var url= window.location.href;
	var confirmation=url.search("confirmation");
	if( confirmation!== -1)
	{
		$('.order-wizard-step-content-main').css("width","100%");
		$('.order-wizard-step-review-main').css({"width":"100%","margin-top":"5%"});
		$('.order-wizard-step-review-secondary').css("display","none");
	}
	
</script>



{{!----
Use the following context variables when customizing this template: 
	
	showTitle (Boolean)
	title (String)
	showContinueButton (Boolean)
	continueButtonLabel (String)
	showSecondContinueButtonOnPhone (Boolean)
	showBackButton (Boolean)
	showBottomMessage (Boolean)
	bottomMessage (String)
	bottomMessageClass (String)

----}}
