<div class="pagination" style="background-color: white;">
<div class="paginationtext">SHOW</div>
<select data-type="navigator" class="facets-item-list-show-selector"  style="display: inline-block;">
	{{#each options}}

	<option value="{{configOptionUrl}}" class="{{className}} pagination-count" {{#if isSelected}} selected="" {{/if}}><b> {{className}}</b></option>
	{{/each}}
</select>
</div>
{{!----
Use the following context variables when customizing this template: 
	
	options (Array)

----}}
