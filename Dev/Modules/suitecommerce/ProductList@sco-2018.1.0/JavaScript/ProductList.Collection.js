/*
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
*/

// @module ProductList
define('ProductList.Collection'
,	[	'ProductList.Model'

	,	'underscore'
	,	'Backbone'
	,	'Utils'
	]
,	function (
		ProductListModel

	,	_
	,	Backbone
	)
{
	'use strict';

	// @class ProductList.Collection @extends Backbone.Collection
	return Backbone.Collection.extend({

		url: _.getAbsoluteUrl('services/ProductList.Service.ss')

	,	model: ProductListModel

		// Filter based on the iterator and return a collection of the same type
	,	filtered: function(iterator)
		{
			return new this.constructor(this.filter(iterator));
		}
	,	update: function (options)
		{
			var filter_changed = this.selectedFilter !== options.filter
			,	sort_changed = this.selectedSort !== options.sort
			,	order_changed = this.order !== options.order
			,	range_changed = !_.isEqual(options.range, this.range) && (this.range || options.range);

			this.selectedFilter = options.filter;
			this.selectedSort = options.sort;
			this.order = options.order;
			this.range = options.range;

			if (filter_changed)
			{
				this.applyFilter().applySort();
			}
			else if (sort_changed)
			{
				this.applySort();
			}
			else if (order_changed)
			{
				this.reverseOrder();
			}

			// All of the previous methods where silent
			// so if anything changed, we trigger the event
			// after everything was done
			if (filter_changed || sort_changed || order_changed || range_changed)
			{
				this.trigger('reset');
			}
		}
	,	applyFilter: function ()
		{
			this.reset(this.selectedFilter.filter.call(this), {silent: true});

			return this;
		}
	,	applySort: function ()
		{
			this.reset(this.selectedSort.sort.call(this), {silent: true});

			// if the current order is inverse
			if (this.order === -1)
			{
				// we need to reverse the order
				this.reverseOrder();
			}
	
			return this;
		}
	
	,	reverseOrder: function ()
		{
			this.reset(this.models.reverse(), {silent: true});

			return this;
		}
	});
});