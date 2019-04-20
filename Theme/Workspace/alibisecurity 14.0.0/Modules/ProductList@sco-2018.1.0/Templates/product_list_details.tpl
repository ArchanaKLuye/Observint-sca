<a href="/wishlist" class="product-list-details-button-back">
	<i class="product-list-details-button-back-icon"></i>
	{{translate 'Go to Product Lists'}}
</a>
<div data-confirm-message class="product-list-details-confirm-message"></div>
<section class="product-list-details" data-product-list-id="{{internalId}}" data-id="{{internalId}}">
	<header class="product-list-details-header">
	<div class="product-list-details-header1">
		<div class="product-list-details-title">
			{{#if isTypePredefined}}{{translate name}}{{else}}{{name}}{{/if}}
			{{#if hasItems}}
			<span class="product-list-details-count">({{itemsLength}})</span>
			{{/if}}
		</div>
		<div class="product-list-details-edit" data-action="edit-list">EDIT</div>
		<div class="product-list-details-remove" data-action="delete-list-custom">DELETE</div>
		<div class="product-list-details-back" data-action="back">BACK</div>
	</div>
	<div class="product-list-details-lastupdated">{{translate 'Updated $(0)' lastmodifieddate}}</div>
	<div class="product-list-details-header2 col-sm-12">
		<div class="product-list-details-camera-list col-sm-12 col-md-6 col-lg-6">
			<div class="camera-list">
			<div class="product-list-details-camera-list-title">{{translate 'CAMERA LIST'}}</div>
			<div class="product-list-details-camera-list-description">{{description}}</div>
			{{#if hasItems}}
			<div class="product-list-details-camera-list-count">{{itemsLength}} {{#if hasOneItem}}{{translate 'Product'}}{{else}}{{translate 'Products'}}{{/if}}</div>
			<div>
				<button data-action="add-list-to-cart" class="product-list-details-button-add-to-cart">{{translate 'Add List to Cart'}}</button>
			</div>
			{{/if}}
		</div>
		</div>
		<div class="product-list-details-camera-list col-sm-12 col-md-6 col-lg-6">
		<div class="item-search">
			<div class="product-list-details-camera-list-title">{{translate 'ADD PRODUCTS TO LIST'}}</div>
			<div id="append-row">
				<div class="product-list-item-search-row">
					<div class="sku-id">
						<label>SKU ID</label>
						<input class="sku" type="text" name="sku">
					</div>
					<div class="qty">
						<label>QTY</label>
						<input class="quantity" type="Number" name="quantity">
					</div>
				</div>
				<div class="product-list-item-search-row">
					<div class="sku-id">
						<!-- <label>SKU ID</label> -->
						<input class="sku" type="text" name="sku">
					</div>
					<div class="qty">
						<!-- <label>QTY</label> -->
						<input class="quantity" type="Number" name="quantity">
					</div>
				</div>
			</div>
			<div class="add-row" data-action="append-row">Add</div>
			<div>
				<button data-action="add-item" class="product-list-details-button-add-to-cart">{{translate 'Add Item to List'}}</button>
			</div>
		</div>
		</div>
	</div>
	</header>
	<div class="product-list-title2 col-md-12">
	<div class="col-md-6 product-list-title">{{#if isTypePredefined}}{{translate name}}{{else}}{{name}}{{/if}}
		{{#if hasItems}}
		<span class="product-list-details-count">({{itemsLength}})</span>
		{{/if}}
	</div>
	<div class="col-md-6" data-view="ListHeader" style="{{#unless showListHeader}}display:none{{/unless}}"></div>
	</div>
	{{#if hasItems}}
	<div>
		<!-- <span class="product-list-details-item-actions" >SELECT</span>
		<select>SELECT
			<option data-action="select-custom">ALL</option>
			<option>NONE</option>
		</select> -->


 <span class="dropdown">
    <button class="product-list-details-item-actions dropdown-toggle" type="button" data-toggle="dropdown">SELECT
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li data-action="selectAll-custom">ALL</li>
      <li data-action="unselectAll-custom">NONE</li>
    </ul>
  </span>


		
		<span class="product-list-details-item-actions">COMPARE</span>
		<span class="product-list-details-item-actions" data-action="delete-items">REMOVE</span>
		<span class="product-list-details-item-actions">COPY SELECTED TO</span>
		<span class="product-list-details-item-actions">UPDATE ALL</span>
		
				<span data-action="add-items-to-cart" class="product-list-details-items-add-to-cart">{{translate 'Add Selected to Cart'}}</span>
			
		
	</div>
		<table class="product-list-details-list-items {{#if isChecked}}active{{/if}}" data-type="product-list-items">
			<tbody data-view="ProductList.DynamicDisplay">
			</tbody>
		</table>
	{{else}}
		<div class="product-list-details-no-items">
			<h5>{{translate 'You don\'t have items in this list yet. Explore the store or search for an item you would like to add.'}}</h5>
		</div>
	{{/if}}
</section>



{{!----
Use the following context variables when customizing this template: 
	
	showListHeader (Boolean)
	isTypePredefined (Boolean)
	name (String)
	hasItems (Boolean)
	itemsLength (Number)
	hasOneItem (Boolean)

----}}
