define(
    'ProductDetails.Specification.View', [
        'SC.Configuration'

        , 'product_details_specification.tpl'

        , 'Backbone', 'Utils', 'underscore'
    ],
    function(
        Configuration

        , product_details_specification_tpl

        , Backbone, Utils, _
    ) {
        'use strict';


        return Backbone.View.extend({

            template: product_details_specification_tpl

                ,
            // events: {
            //     'click [data-action="show-more"]': 'showMore',
            //     'click [data-action="selected-tab"]': 'debouncedCheckContentHeight'
            // }


            // ,
            initialize: function initialize() {
                    Backbone.View.prototype.initialize.apply(this, arguments);
                    this.details = this.options.details;
                }

                ,
            render: function() {
                    this.details = this.details || this.computeDetailsArea();

                    this._render();

                    // if (!SC.isPageGenerator()) {
                    //     this.debouncedCheckContentHeight();
                    // }
                }

                ,
            computeDetailsArea: function() {
                    var self = this,
                        details = new Object;

                    _.each(Configuration.get('productDetailsInformation', []), function(item_information) {
                                                details.Card_Compatibility = (self.model.get('item').get('custitem_cardcompatibility') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Card_Options = (self.model.get('item').get('custitem_cardoptions') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Card_Size_in_bits = (self.model.get('item').get('custitem_cardsize_bits') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Card_Type = (self.model.get('item').get('custitem_cardtype') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Cards = (self.model.get('item').get('custitem_cards') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Credential_Type = (self.model.get('item').get('custitem_credentialtype') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Doors = (self.model.get('item').get('custitem_doors') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Encryption = (self.model.get('item').get('custitem_encryption') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.History = (self.model.get('item').get('custitem_history') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Holidays = (self.model.get('item').get('custitem_holidays') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Read_Range = (self.model.get('item').get('custitem254') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Reader_Type = (self.model.get('item').get('custitem255') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Readers = (self.model.get('item').get('custitem256') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Schedules = (self.model.get('item').get('custitem257') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Slot_Punch = (self.model.get('item').get('custitem258') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Audio = (self.model.get('item').get('custitem259') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Audio_Compression = (self.model.get('item').get('custitem260') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Audio_Streaming = (self.model.get('item').get('custitem261') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Builtin_Mic = (self.model.get('item').get('custitem262') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.dB = (self.model.get('item').get('custitem263') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Alarm_Outputs = (self.model.get('item').get('custitem264') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Audio_In = (self.model.get('item').get('custitem265') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Audio_Out = (self.model.get('item').get('custitem266') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Digital_Inputs = (self.model.get('item').get('custitem267') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Digital_Outputs = (self.model.get('item').get('custitem268') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Relay_Output = (self.model.get('item').get('custitem269') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.RS_232 = (self.model.get('item').get('custitem270') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.RS_422 = (self.model.get('item').get('custitem271') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.RS_485 = (self.model.get('item').get('custitem272') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Sensor_Inputs = (self.model.get('item').get('custitem273') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.USB_Ports = (self.model.get('item').get('custitem274') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Video_In = (self.model.get('item').get('custitem275') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Video_Out = (self.model.get('item').get('custitem276') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Aspect_Ratio = (self.model.get('item').get('custitem277') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Brightness = (self.model.get('item').get('custitem278') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Graphic_Search_Display = (self.model.get('item').get('custitem279') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.LCD = (self.model.get('item').get('custitem280') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.LED = (self.model.get('item').get('custitem281') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Channels = (self.model.get('item').get('custitem282') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Condition = (self.model.get('item').get('custitem283') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Connection = (self.model.get('item').get('custitem284') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.DVR_Included = (self.model.get('item').get('custitem285') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Form_Factor = (self.model.get('item').get('custitem286') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Frequency = (self.model.get('item').get('custitem287') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Full_Frame_IR = (self.model.get('item').get('custitem288') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Image = (self.model.get('item').get('custitem289') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.IR_Range = (self.model.get('item').get('custitem290') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lens_Type = (self.model.get('item').get('custitem291') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Megapixel_Lens = (self.model.get('item').get('custitem292') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Number_of_Cameras = (self.model.get('item').get('custitem293') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Outdoor_Use = (self.model.get('item').get('custitem294') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Ports = (self.model.get('item').get('custitem295') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Power_Source = (self.model.get('item').get('custitem296') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Signal_Output = (self.model.get('item').get('custitem297') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Storage_Capacity = (self.model.get('item').get('custitem298') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Vandal_proof = (self.model.get('item').get('custitem299') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.AGC_Control = (self.model.get('item').get('custitem304') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Resolution = (self.model.get('item').get('custitem303') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Day_Night_Function = (self.model.get('item').get('custitem305') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Digital_Image_Stabilization = (self.model.get('item').get('custitem306') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Digital_Noise_Reduction = (self.model.get('item').get('custitem307') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Digital_PTZ = (self.model.get('item').get('custitem308') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Digital_Zoom = (self.model.get('item').get('custitem309') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Dynamic_Range = (self.model.get('item').get('custitem310') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Flip = (self.model.get('item').get('custitem311') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Imager_Manufacturer = (self.model.get('item').get('custitem312') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Imager_Type = (self.model.get('item').get('custitem313') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.IR_Sensitive = (self.model.get('item').get('custitem314') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.IR_Wave_length = (self.model.get('item').get('custitem315') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lines = (self.model.get('item').get('custitem316') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Megapixel = (self.model.get('item').get('custitem317') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.OSD = (self.model.get('item').get('custitem318') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Sense_up = (self.model.get('item').get('custitem319') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Still_Image_Capture = (self.model.get('item').get('custitem320') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Wide_Dynamic = (self.model.get('item').get('custitem321') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Focus = (self.model.get('item').get('custitem322') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.IR_Corrective = (self.model.get('item').get('custitem323') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lens_Included = (self.model.get('item').get('custitem324') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lens_Iris = (self.model.get('item').get('custitem325') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lens_Mount = (self.model.get('item').get('custitem326') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Optical_Zoom = (self.model.get('item').get('custitem327') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Zoom = (self.model.get('item').get('custitem328') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Ethernet_Interface = (self.model.get('item').get('custitem329') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Ethernet_Ports = (self.model.get('item').get('custitem330') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Processor = (self.model.get('item').get('custitem331') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Remote_Configuration = (self.model.get('item').get('custitem332') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Remote_Viewable = (self.model.get('item').get('custitem334') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Switching_Capacity = (self.model.get('item').get('custitem335') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.fxbrand11 = (self.model.get('item').get('custitem500') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Warranty = (self.model.get('item').get('custitem336') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Accepts_in_Mounting_Brackets = (self.model.get('item').get('custitem337') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Blower = (self.model.get('item').get('custitem338') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Chassis = (self.model.get('item').get('custitem339') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Construction = (self.model.get('item').get('custitem340') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.DVD_Burner = (self.model.get('item').get('custitem341') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Hard_Drive_Included = (self.model.get('item').get('custitem342') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Hard_Drive_Type = (self.model.get('item').get('custitem343') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Heater = (self.model.get('item').get('custitem344') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Ingress_Protection = (self.model.get('item').get('custitem345') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Length = (self.model.get('item').get('custitem346') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Mount = (self.model.get('item').get('custitem347') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Mounting_Bracket_Included = (self.model.get('item').get('custitem348') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.MTBF = (self.model.get('item').get('custitem349') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Number_of_Drive_Bays = (self.model.get('item').get('custitem350') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Outdoor = (self.model.get('item').get('custitem351') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Power_AWG = (self.model.get('item').get('custitem352') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Product_Color = (self.model.get('item').get('custitem353') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Remote_Control = (self.model.get('item').get('custitem354') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Speakers = (self.model.get('item').get('custitem355') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Battery_Powered = (self.model.get('item').get('custitem356') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Dual_Voltage = (self.model.get('item').get('custitem357') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Output_Power_Per_Port = (self.model.get('item').get('custitem358') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.PoE = (self.model.get('item').get('custitem359') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Power_Supply_Included = (self.model.get('item').get('custitem360') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Activity_Log = (self.model.get('item').get('custitem362') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Analog_Channels = (self.model.get('item').get('custitem363') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Analytics_Ready = (self.model.get('item').get('custitem364') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Compression_Type = (self.model.get('item').get('custitem365') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Email_Notification = (self.model.get('item').get('custitem366') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Event_Log = (self.model.get('item').get('custitem367') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Event_Notification = (self.model.get('item').get('custitem368') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Event_Search = (self.model.get('item').get('custitem369') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Hardware_Compression = (self.model.get('item').get('custitem370') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.IP_Channels = (self.model.get('item').get('custitem371') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Max_Storage_Capacity_gb = (self.model.get('item').get('custitem372') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.MaxS_torage_Capacity_TB = (self.model.get('item').get('custitem373') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Motion_Detection = (self.model.get('item').get('custitem374') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Pre_Post_Alarm_Recording = (self.model.get('item').get('custitem375') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Privacy_VideoBlock = (self.model.get('item').get('custitem376') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Recording_Mode = (self.model.get('item').get('custitem377') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Selectable_FrameRate = (self.model.get('item').get('custitem378') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Smart_Search = (self.model.get('item').get('custitem379') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Storage_Capacity_GB = (self.model.get('item').get('custitem380') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Storage_Capacity_MB = (self.model.get('item').get('custitem381') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Storage_Capacity_TB = (self.model.get('item').get('custitem382') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Video_Analytics_Capable = (self.model.get('item').get('custitem383') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Video_Offload = (self.model.get('item').get('custitem384') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Video_Streaming = (self.model.get('item').get('custitem385') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Browser_Support = (self.model.get('item').get('custitem386') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.MobileApp = (self.model.get('item').get('custitem387') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.OS_Client = (self.model.get('item').get('custitem388') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.OS_Server = (self.model.get('item').get('custitem389') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details._802_11 = (self.model.get('item').get('custitem390') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Antenna = (self.model.get('item').get('custitem391') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Baudrate_Communication = (self.model.get('item').get('custitem392') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.FCC = (self.model.get('item').get('custitem393') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Frequency_GHz = (self.model.get('item').get('custitem394') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Frequency_MHz = (self.model.get('item').get('custitem395') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.GPS = (self.model.get('item').get('custitem396') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Transmits_Audio = (self.model.get('item').get('custitem397') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Wireless = (self.model.get('item').get('custitem398') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Wireless_Range = (self.model.get('item').get('custitem399') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Connectors = (self.model.get('item').get('custitem400') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Inputs = (self.model.get('item').get('custitem401') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Outputs = (self.model.get('item').get('custitem402') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Termination = (self.model.get('item').get('custitem403') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Display_Color = (self.model.get('item').get('custitem404') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Horizontal_Viewing_Angle = (self.model.get('item').get('custitem405') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Input_Signal = (self.model.get('item').get('custitem406') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Max_Contrast = (self.model.get('item').get('custitem407') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Monitor_Resolution = (self.model.get('item').get('custitem408') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Response_Time = (self.model.get('item').get('custitem409') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Vertical_Viewing_Angle = (self.model.get('item').get('custitem410') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Monitor_Size = (self.model.get('item').get('custitem411') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Camera_Resolution = (self.model.get('item').get('custitem420') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Effective_Pixels = (self.model.get('item').get('custitem421') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Electronic_Shutter = (self.model.get('item').get('custitem422') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Imager_Size = (self.model.get('item').get('custitem423') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.IR_Array_Range = (self.model.get('item').get('custitem424') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lux_B_W = (self.model.get('item').get('custitem425') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Lux_Color = (self.model.get('item').get('custitem426') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Focal_Length = (self.model.get('item').get('custitem427') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.FOV = (self.model.get('item').get('custitem428') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Relative_Aperture = (self.model.get('item').get('custitem429') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Protocols = (self.model.get('item').get('custitem433') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Card_Reader_Type = (self.model.get('item').get('custitem434') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Certification = (self.model.get('item').get('custitem435') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Dimensions = (self.model.get('item').get('custitem436') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Operating_Humidity = (self.model.get('item').get('custitem437') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Operating_Temperature = (self.model.get('item').get('custitem438') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Tilt_Angle = (self.model.get('item').get('custitem439') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Weight_lb = (self.model.get('item').get('custitem440') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Weight_oz = (self.model.get('item').get('custitem441') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Weight_Capacity_lb = (self.model.get('item').get('custitem442') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Amps_AC = (self.model.get('item').get('custitem443') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Battery_Type = (self.model.get('item').get('custitem444') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Estimated_Battery_Life = (self.model.get('item').get('custitem445') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Power_Requirements = (self.model.get('item').get('custitem446') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Volts_AC_Input = (self.model.get('item').get('custitem447') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Volts_AC_Out = (self.model.get('item').get('custitem448') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Volts_DC_Input = (self.model.get('item').get('custitem449') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Volts_DC_Out = (self.model.get('item').get('custitem450') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Pattern = (self.model.get('item').get('custitem487') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Preset = (self.model.get('item').get('custitem488') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.PTZ_Control = (self.model.get('item').get('custitem489') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Scan = (self.model.get('item').get('custitem490') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Tour = (self.model.get('item').get('custitem491') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.BitRate = (self.model.get('item').get('custitem492') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Frame_Rate = (self.model.get('item').get('custitem493') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Recording_Resolution = (self.model.get('item').get('custitem494') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Search_Mode = (self.model.get('item').get('custitem495') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.system_components = (self.model.get('item').get('custitem496') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Range_Line_of_Sight = (self.model.get('item').get('custitem497') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.Pan_Angle = (self.model.get('item').get('custitem498') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');
                        details.SD_Card_Included = (self.model.get('item').get('custitem499') || 0).toString().replace(/,/g, '@').replace(/:/g, '`').replace(/"/g, '#1#');


                    });
                    return details;
                }

                //     ,
                // debouncedCheckContentHeight: function() {
                //         return _.defer(_.bind(this.checkContentHeight, this));
                //     }

                //     ,
                // checkContentHeight: function() {
                //         var content_height = this.$('.active [data-type="information-content-text"]').height();
                //         if (content_height <= 370) {
                //             this.$('[data-type="information-content-text-actions"]').hide();
                //         } else {
                //             this.$('[data-type="information-content-text-actions"]').show();
                //         }
                //     }


                //     ,
                // showMore: function() {
                //         this.$('[data-type="information-content"]').toggleClass('show');
                //     }

                ,
            getContext: function() {
                return {
                    details: JSON.stringify(this.details)
                };
            }

        });
    });