{{#if showBackToAccount}}
	<a href="/" class="creditcard-list-button-back">
		<i class="creditcard-list-button-back-icon"></i>
		{{translate 'Back to Account'}}
	</a>
{{/if}}

<section class="creditcard-list">
	<div class="creditcard-list-pageheader">{{pageHeader}}</div>
	<div class="creditcard-list-title">YOUR SAVED CREDIT CARDS</div>
	<div class="creditcard-list-collection" data-view="CreditCards.Collection"></div>
	<!-- <div class="creditcard-list-button-container">
        <a class="creditcard-list-button" href="/creditcards/new" data-toggle="show-in-modal">{{translate 'Add Credit Card'}}</a>
    </div> -->
    <div class="creditcard-list-button-container">
        <a class="creditcard-list-button-new" href="/creditcards/new" data-toggle="show-in-modal">{{translate 'Add Credit Card'}}</a>
    </div>

	
</section>



{{!----
Use the following context variables when customizing this template: 
	
	pageHeader (String)
	showBackToAccount (Boolean)

----}}
