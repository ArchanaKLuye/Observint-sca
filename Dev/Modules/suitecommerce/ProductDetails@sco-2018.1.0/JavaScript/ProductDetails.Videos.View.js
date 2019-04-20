define(
    'ProductDetails.Videos.View', [
        'SC.Configuration'

        , 'product_videos.tpl'

        , 'Backbone', 'Utils', 'underscore'
    ],
    function(
        Configuration

        , product_videos_tpl

        , Backbone, Utils, _
    ) {
        'use strict';

        return Backbone.View.extend({

            template: product_videos_tpl


                ,
            initialize: function initialize() {
                    Backbone.View.prototype.initialize.apply(this, arguments);
                    this.details = this.options.details;
                }

                ,
            render: function() {
                    this.details = this.details || this.computeDetailsArea();

                    this._render();
                }

                ,
            computeDetailsArea: function() {
                    var self = this,
                        details = [];
                    var desc = self.model.get('item').get('custitem_product_description');
                    var video = $("<p/>").html(desc).text();
                    if(video != "")
                    {
                   // var test = self.model.get('item').get('custitem_customfield_itemaccessories');
                    _.each(Configuration.get('productDetailsInformation', []), function(item_information) {
                        // var itemURL = self.model.getFullLink();
                        details.push({

                            desc: video
                        });

                    });
                }

                    return details;
                }

                ,
            getContext: function() {
                var haveVideo;
                if((this.details).length>0)
                    { haveVideo=true; } 
                else 
                    {haveVideo=false;}
                
                return {
                    details: this.details,
                    params: haveVideo
                };
            }

        });
    });