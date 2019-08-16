<section class="contactdetails-list">


<!-- <h2>{{pageHeader}}</h2> -->
<div class="contactdetails-list-pageheader">{{pageHeader}}</div>
<div class="profileinformation-list-title">PERSONAL INFORMATION</div>
<div class="contactdetails-profileinfo-call" data-view="Profile.Information"></div>
<div class="contactdetails-list-edit-help-message">
	{{translate 'Click "Edit" to modify your information and/or sign up to receive email announcements for special offers and promotions from Alibi Security.'}}
</div>
<div class="contactdetails-list-subscription-main">
	<label class="contactdetails-list-subscription">
		<input type="checkbox" name="emailsubscribe"  value="T" {{#if isEmailSubscribeChecked}} checked {{/if}} disabled class="newsletter-edit-checkbox">
			<!-- {{translate 'Sign me up to receive Alibi Security marketing emails featuring special promotions, featured products and services, time-saving features and more.'}} -->
      <span class="signmeuptext">Sign me up to receive Alibi Security marketing emails featuring special promotions, featured products and services, time-saving features and more.</span>
	</label>
</div>
<div class="contactdetails-list-title">CONTACT ADDRESS</div>
<!-- <table>
    thead>
      <tr>
          <th>Internal ID</th>S
          <th>Artist</th>
          <th>Genre</th>
      </tr>
    </thead>
    <tbody data-view="ContactDetails.Collection"></tbody>
</table> -->
<div data-view="ContactDetails.Collection"></div>
<a  href="/contacts/new" class="contactdetails-list-newcontact" data-toggle="show-in-modal">ADD NEW CONTACT</a>



</section>