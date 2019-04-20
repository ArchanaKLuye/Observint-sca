{{#if params}}
<div class="product-details-information-content">
    {{!-- Tab Contents --}}
    <div class="product-details-information-tab-content-panel-title"><h2 style="color: #00a7ce;">VIDEOS</h2>
    </div>
    <div class="product-details-information-tab-content" data-type="information-content" data-action="tab-content">
        {{#each details}}
        <div class="product-details-information-tab-content-container" data-type="information-content-text">{{{desc}}}</div>
    </div>
    {{/each}}
</div>
{{/if}}
<!-- <div class="product-details-information-content">
    {{!-- Tab Contents --}}
    <h2>VIDEOS</h2>
    <div class="product-details-information-tab-content" data-type="information-content" data-action="tab-content">
        {{#each details}}
        <div class="product-details-information-tab-content-container" data-type="information-content-text">{{{desc}}}</div>
    </div>
    {{/each}}
</div> -->