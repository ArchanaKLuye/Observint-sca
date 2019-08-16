<div class="contactdetails-details">
	<div class=contactdetails-details-area>
	<tr>
	    <td>
	    	<div class="contactdetails-details-contact-name">{{name}}</div>
	    	<div class="contactdetails-details-contact-address">{{address}}</div>
	    	<div class="contactdetails-details-contact-phone">Phone: {{phone}}</div>
	    </td>
	</tr>
	</div>
	<hr class="contactdetails-details-divider">
	<div class="contactdetails-details-actions">
		<a class="contactdetails-details-edit" href="/contacts/{{internalid}}" data-toggle="show-in-modal">EDIT</a>
		<button class="contactdetails-details-remove" data-action="remove" data-id="{{internalid}}">REMOVE</button>
	</div>
</div>
