<div class="facets-category-cell">
	<div class="facets-category-cell-title">
		<a class="facets-category-cell-title-head" href="{{url}}" class="facets-category-cell-anchor">
			{{name}}
		</a>
	</div>
	{{#if hasImage}}
		<div class="facets-category-cell-thumbnail">
			<a href="{{url}}" class="facets-category-cell-anchor">
				<img class="facets-category-cell-main-thumbnail" src="{{resizeImage image 'thumbnail'}}" alt="{{name}}" class="facets-category-cell-image">
			</a>
			  <p class="facets-browse-category-heading-main-description-sub-desc">{{{description}}}</p>
			  <!-- <a class="category-expansion" href="{{url}}" id="see_more" style="color: white;">see more</a> -->
			   <a class="category-expansion" href="{{url}}">See More</a>
		</div>

	{{/if}}
	
</div>

<!-- <script type="text/javascript">	
	var elemcount = $('.facets-browse-category-heading-main-description-sub-desc').text().length;
	if(elemcount > 150){
		document.getElementById("see_more").style.color="#435363";
	}
	console.log('elemcount',elemcount);
</script> -->

{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}
