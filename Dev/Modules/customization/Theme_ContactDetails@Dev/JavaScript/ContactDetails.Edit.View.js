define('ContactDetails.Edit.View',
  [
  'Backbone',
  'contactdetails_edit.tpl',
  'SC.Configuration',
  'GlobalViews.Message.View',
  'GlobalViews.CountriesDropdown.View',
  'GlobalViews.States.View',
  'Backbone.CompositeView',
  'Backbone.FormView',
  'underscore',
  'jQuery',
  'Utils'
  ],
  function (
    Backbone,
    contactdetails_edit_tpl,
    Configuration,
    GlobalViewsMessageView,
    CountriesDropdownView,
    GlobalViewsStatesView,
    BackboneCompositeView,
    BackboneFormView,
    _,
    jQuery
  ) 
  {
    return Backbone.View.extend({
      template: contactdetails_edit_tpl,
      events: {
        'submit form': 'save'
      },
      save: function(e)
      {
        return this.saveForm(e,this.model);
      },

      bindings: {
        '[name="name"]': 'name'
      , '[name="phone"]': 'phone'
      , '[name="company"]': 'company'
      , '[name="address1"]': 'address1'
      , '[name="address2"]': 'address2'
      , '[name="city"]': 'city'
      , '[name="state"]': 'state'
      , '[name="zipcode"]': 'zipcode'
      , '[name="country"]': 'country'
      },

     getSelectedMenu: function ()
      {
        return 'contacts';
      },

      getBreadcrumbPages: function ()
      {
        return [
          {
            text: _('Contact').translate()
          , href: '/contacts'
          }
        , {
            text: this.title
          , href: '/contacts/new'
          }
        ];
      },

      render: function ()
      {
        Backbone.View.prototype.render.apply(this, arguments);

        this.$('[rel="tooltip"]').tooltip({
          placement: 'right'
        }).on('hide', function (e)
        {
          e.preventDefault();
          jQuery(e.target).next('.tooltip').hide();
        });
      },

      initialize: function(options) {
        var addNewContactLabel = _('ADD NEW CONTACT').translate();
        var editContactLabel = _('EDIT CONTACT ADDRESS').translate();
        this.title = this.model.isNew() ? addNewContactLabel : editContactLabel;
        this.application = options.application;
        this.model = options.model;
        this.countries = Configuration.get('siteSettings.countries');
        this.selectedCountry = this.model.get('country') || Configuration.get('siteSettings.defaultshipcountry');
        if (!this.selectedCountry && _.size(this.countries) === 1)
        {
          this.selectedCountry = _.first(_.keys(this.countries));
        }

        if (!!this.selectedCountry)
        {
          this.model.set('country', this.selectedCountry);
        }
        BackboneCompositeView.add(this);
        BackboneFormView.add(this);
      },

      childViews: {
        'CountriesDropdown': function ()
        {
          return new CountriesDropdownView({
            countries: this.countries
          , selectedCountry: this.selected_country
          , manage: this.options.manage
          });
        }
      , 'StatesView': function ()
        {console.log("this in states view contact detailsedit",this);
          return new GlobalViewsStatesView({
            countries: this.countries
          , selectedCountry: this.model.attributes.country
          , selectedState: this.model.get('state')
          , manage: this.options.manage
          });
        }
      },

  
      getContext: function() {
        return {
          isNew: this.model.isNew(),
          name: this.model.get('name'),
          phone: this.model.get('phone'),
          address: this.model.get('address'),

        }
      }

    });
  }
)