{{! © 2017 NetSuite Inc. User may not copy, modify, distribute, or re-bundle or otherwise make available this code; provided, however, if you are an authorized user with a NetSuite account or log-in, you may use this code subject to the terms that govern your access and use. }} {{#unless showFormFieldsOnly}}
<form class="login-register-register-form" method="POST" novalidate>
    <!-- <div class="login-register-register-required">{{translate 'Required <span class="login-register-register-form-required">*</span>'}}</div> -->
    {{/unless}}
    <!--  <div class="login-register-register-profile"> -->
    <!--  <div class="registration-primary-fields"> -->
    <div class="primary-fields">
        <div class="mainfield">
            <div class="first-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-firstname">
                        {{translate '<small class="login-register-register-form-required">*</small>First Name'}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input {{#if hasAutoFocus}} autofocus {{/if}} type="text" name="firstname" id="register-firstname" class="login-register-register-form-input login_register_text">
                    </div>
                </div>
            </div>
            <div class="second-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-lastname">
                        {{translate '<small class="login-register-register-form-required">*</small>Last Name '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="lastname" id="register-lastname" class="login-register-register-form-input login_register_text">
                    </div>
                </div>
            </div>
        </div>
         <div class="areaofitrest col-md-3">
            <div class="area-of-intrest-head">AREA OF INTREST</div>
            <div class="area-of-intrest-checkbox">
                <label class="login-register-register-form-subscribe">
                    <input type="checkbox" name="access_control" id="access-control" value="T" style="zoom:1.5"{{#if isEmailSubscribeChecked}} checked {{/if}}> <div class="login_register_check_box_text" id="check-box-1">{{translate 'Access Control'}}</div>
                </label>
            </div class="area-of-intrest-checkbox">
            <div class="area-of-intrest-checkbox">
                <label class="login-register-register-form-subscribe">
                    <input type="checkbox" name="audio_surveillance" id="audio-surveillance" value="T" style="zoom:1.5" {{#if isEmailSubscribeChecked}} checked {{/if}}> <div class="login_register_check_box_text" id="check-box-2">{{translate 'Audio Surveillance'}}</div>
                </label>
            </div >
            <div class="area-of-intrest-checkbox">
                <label class="login-register-register-form-subscribe">
                    <input type="checkbox" name="home_automation" id="home-automation" value="T" style="zoom:1.5"{{#if isEmailSubscribeChecked}} checked {{/if}}><div class="login_register_check_box_text" id="check-box-3"> {{translate 'Home Automation'}}</div>
                </label>
            </div>
            <div class="area-of-intrest-checkbox">
                <label class="login-register-register-form-subscribe">
                    <input type="checkbox" name="video_survelliance" id="video-survelliance" value="T" style="zoom:1.5" {{#if isEmailSubscribeChecked}} checked {{/if}}><div class="login_register_check_box_text" id="check-box-4">{{translate 'Video Surveillance'}}</div>
                </label>
            </div >
            <div class="area-of-intrest-checkbox">
                <label class="login-register-register-form-subscribe">
                    <input type="checkbox" name="other" id="other" value="T" style="zoom:1.5"{{#if isEmailSubscribeChecked}} checked {{/if}} onchange="displaytextfield()"> <div class="login_register_check_box_text" id="check-box-5">{{translate 'Other(Please specify)'}}</div>
                </label>
            </div>
            <div id="other-field-display">
                <label class="other-field-label">{{translate 'Other'}}</label>
                <div>
                        <input type="text" name="other_field" id="other-field">
                </div>
            </div>
        </div>

        <div class="mainfield">
            <div class="first-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-email">
                        {{translate '<small class="login-register-register-form-required">*</small>Email Address  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="email" name="email" id="register-email" class="login-register-register-form-input login_register_text" placeholder="{{translate 'your@email.com'}}">
                        <p class="login-register-register-form-help-block">
                            <!-- <small>
                    {{translate 'We need your email address to contact you about your order.'}}
                </small> -->
                        </p>
                    </div>
                </div>
            </div>
            <div class="second-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-phonenumber">
                        {{translate '<small class="login-register-register-form-required">*</small>Primary Phone '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="phone" id="register-phone" class="login-register-register-form-input login_register_text" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="mainfield">
            <div class="first-Filed">
                {{#if showCompanyField}}
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-company">
                        {{#if isCompanyFieldRequire}} {{translate '<small class="login-register-register-form-required">*</small>Company '}} {{else}} {{translate '<small class="login-register-register-form-required">*</small>Company '}}<!-- {{translate '(optional)'}} -->{{/if}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="company" id="register-company" class="login-register-register-form-input login_register_text" />
                    </div>
                </div>
            </div>
            {{/if}}
            <div class="second-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-company_website">
                        {{translate 'Company Website'}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="company_website" id="register-company-website" class="login-register-register-form-input login_register_text">
                    </div>
                </div>
            </div>
        </div>
        
    </div>
   
    <!--   </div> -->
    <!-- {{#if showCompanyField}}
        <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
            <label class="login-register-register-form-label" for="register-companywebsite">
                {{#if isCompanyFieldRequire}}
                    {{translate 'Company Website<small class="login-register-register-form-required">*</small> '}}
                {{else}}
                    {{translate '<small class="login-register-register-form-optional"> Company Website'}}{{translate '(optional)'}}</small>
                {{/if}}
            </label>
            <div class="login-register-register-form-controls" data-validation="control">
                <input type="text" name="company website" id="register-companywebsite" class="login-register-register-form-input login_register_text"/>
            </div>
        </div>
    {{/if}} -->
    <!-- <div class="login-register-register-form-controls-group login-register-button">
        <div>AREA OF INTEREST</div>
        <div><input type="checkbox" name="Access control">Access Control</div>
        <div></div><input type="checkbox" name="Access control">Audio Survelliance</div>
        <div></div><input type="checkbox" name="Access control">Home Automation</div>
        <div><input type="checkbox" name="Access control">video Survelliance</div>
        <div><input type="checkbox" name="Access control">Other(Please specify)</div>
    </div> -->
    <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
        <label class="login-register-register-form-label" for="register-dealer_id">
            {{translate 'Dealer Id <small class="login-register-register-form-required">*</small>'}}
        </label>
        <div class="login-register-register-form-controls" data-validation="control">
            <input type="text" name="dealer_id" id="register-dealer_id" class="login-register-register-form-input">
        </div>
    </div> -->
    <!-- </div> -->
    <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group" style="display:none">
        <label class="login-register-register-form-label" for="custentity_cust_register">
            {{translate '<small class="login-register-register-form-required">*</small> Test field'}}
        </label>
        <div class="login-register-register-form-controls" data-validation="control">
            <input {{#if hasAutoFocus}} autofocus {{/if}} type="text" name="custentity_cust_register" id="custentity_cust_register" class="login-register-register-form-input" value="test">
        </div>
    </div>
    <div class="home-summary-expander-container">
        <div class="home-summary-expander-head">
            <!-- <a class="home-summary-expander-head-toggle" data-toggle="collapse" data-target="#billing_address" aria-expanded="true" aria-controls="estimate-shipping-form">
            Billing Address <i data-toggle="tooltip" class="home-summary-expander-tooltip" title="Click this thing" ></i><i class="home-summary-expander-toggle-icon"></i>
        </a> -->
            <div class="emptyspace">.</div>
            <h2 class="login-register-title-register">{{translate 'ADDRESS INFORMATION'}}</h2>
        </div>
        <div id="billing_address" role="tabpanel" aria-expanded="true">
            <div class="home-summary-expander-container-content">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-Address-1">
                        {{translate ' <small class="login-register-register-form-required">*</small>Address  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="Address_1" id="register-Address-1" class="login-register-register-form-input login_register_text" required>
                    </div>
                </div>
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-Address-2">
                    {{translate 'Address 2  <small class="login-register-register-form-required"></small>'}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <input type="text" name="Address_2" id="register-Address-2" class="login-register-register-form-input login_register_text" required>
                </div>
            </div>  

 -->
        <div class="mainfield">
            <div class="first-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-city">
                        {{translate '<small class="login-register-register-form-required">*</small>City  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="city" id="register-city" class="login-register-register-form-input login_register_text" required>
                    </div>
                </div>
            </div>
             <div class="second-Filed">

                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-state">
                        {{translate '<small class="login-register-register-form-required">*</small>State/Province  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="state" name="state" id="register-state" class="login-register-register-form-input login_register_text" required>
                            <!-- <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                                                    </select> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="mainfield">
            <div class="first-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-zip">
                        {{translate '<small class="login-register-register-form-required">*</small>Zip/Postal Code  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="text" name="zip" id="register-zip" class="login-register-register-form-input login_register_text" required>
                    </div>
                </div>
            </div>
            <div class="second-Filed" id="second-filled-country">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-country">
                        {{translate '<small class="login-register-register-form-required">*</small>Country  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <!-- <input type="country" name="country" id="register-country" class="login-register-register-form-input login_register_text" required> -->
                        <select name="country" id="register-country" class="login-register-register-form-input login_register_text" required>
                           <option value="US">United States</option>
                           <option value="AF">Afghanistan</option>
                           <option value="AL">Albania</option>
                           <option value="DZ">Algeria</option>
                           <option value="AS">American Samoa</option>
                           <option value="AD">Andorra</option>
                           <option value="AO">Angola</option>
                           <option value="AI">Anguilla</option>
                           <option value="AQ">Antarctica</option>
                           <option value="AG">Antigua and Barbuda</option>
                           <option value="AR">Argentina</option>
                           <option value="AM">Armenia</option>
                           <option value="AW">Aruba</option>
                           <option value="AU">Australia</option>
                           <option value="AT">Austria</option>
                           <option value="AZ">Azerbaijan</option>
                           <option value="BH">Bahrain</option>
                           <option value="BD">Bangladesh</option>
                           <option value="BB">Barbados</option>
                           <option value="BY">Belarus</option>
                           <option value="BE">Belgium</option>
                           <option value="BZ">Belize</option>
                           <option value="BJ">Benin</option>
                           <option value="BM">Bermuda</option>
                           <option value="BT">Bhutan</option>
                           <option value="BO">Bolivia</option>
                           <option value="BA">Bosnia and Herzegovina</option>
                           <option value="BW">Botswana</option>
                           <option value="BV">Bouvet Island</option>
                           <option value="BR">Brazil</option>
                           <option value="IO">British Indian Ocean Territory</option>
                           <option value="VG">British Virgin Islands</option>
                           <option value="BN">Brunei</option>
                           <option value="BG">Bulgaria</option>
                           <option value="BF">Burkina Faso</option>
                           <option value="BI">Burundi</option>
                           <option value="CI">Côte d'Ivoire</option>
                           <option value="KH">Cambodia</option>
                           <option value="CM">Cameroon</option>
                           <option value="CA">Canada</option>
                           <option value="CV">Cape Verde</option>
                           <option value="KY">Cayman Islands</option>
                           <option value="CF">Central African Republic</option>
                           <option value="TD">Chad</option>
                           <option value="CL">Chile</option>
                           <option value="CN">China</option>
                           <option value="CX">Christmas Island</option>
                           <option value="CC">Cocos (Keeling) Islands</option>
                           <option value="CO">Colombia</option>
                           <option value="KM">Comoros</option>
                           <option value="CG">Congo</option>
                           <option value="CK">Cook Islands</option>
                           <option value="CR">Costa Rica</option>
                           <option value="HR">Croatia</option>
                           <option value="CU">Cuba</option>
                           <option value="CY">Cyprus</option>
                           <option value="CZ">Czech Republic</option>
                           <option value="CD">Democratic Republic of the Congo</option>
                           <option value="DK">Denmark</option>
                           <option value="DJ">Djibouti</option>
                           <option value="DM">Dominica</option>
                           <option value="DO">Dominican Republic</option>
                           <option value="TP">East Timor</option>
                           <option value="EC">Ecuador</option>
                           <option value="EG">Egypt</option>
                           <option value="SV">El Salvador</option>
                           <option value="GQ">Equatorial Guinea</option>
                           <option value="ER">Eritrea</option>
                           <option value="EE">Estonia</option>
                           <option value="ET">Ethiopia</option>
                           <option value="FO">Faeroe Islands</option>
                           <option value="FK">Falkland Islands</option>
                           <option value="FJ">Fiji</option>
                           <option value="FI">Finland</option>
                           <option value="MK">Former Yugoslav Republic of Macedonia</option>
                           <option value="FR">France</option>
                           <option value="FX">France, Metropolitan</option>
                           <option value="GF">French Guiana</option>
                           <option value="PF">French Polynesia</option>
                           <option value="TF">French Southern Territories</option>
                           <option value="GA">Gabon</option>
                           <option value="GE">Georgia</option>
                           <option value="DE">Germany</option>
                           <option value="GH">Ghana</option>
                           <option value="GI">Gibraltar</option>
                           <option value="GR">Greece</option>
                           <option value="GL">Greenland</option>
                           <option value="GD">Grenada</option>
                           <option value="GP">Guadeloupe</option>
                           <option value="GU">Guam</option>
                           <option value="GT">Guatemala</option>
                           <option value="GN">Guinea</option>
                           <option value="GW">Guinea-Bissau</option>
                           <option value="GY">Guyana</option>
                           <option value="HT">Haiti</option>
                           <option value="HM">Heard and Mc Donald Islands</option>
                           <option value="HN">Honduras</option>
                           <option value="HK">Hong Kong</option>
                           <option value="HU">Hungary</option>
                           <option value="IS">Iceland</option>
                           <option value="IN">India</option>
                           <option value="ID">Indonesia</option>
                           <option value="IR">Iran</option>
                           <option value="IQ">Iraq</option>
                           <option value="IE">Ireland</option>
                           <option value="IL">Israel</option>
                           <option value="IT">Italy</option>
                           <option value="JM">Jamaica</option>
                           <option value="JP">Japan</option>
                           <option value="JO">Jordan</option>
                           <option value="KZ">Kazakhstan</option>
                           <option value="KE">Kenya</option>
                           <option value="KI">Kiribati</option>
                           <option value="KW">Kuwait</option>
                           <option value="KG">Kyrgyzstan</option>
                           <option value="LA">Laos</option>
                           <option value="LV">Latvia</option>
                           <option value="LB">Lebanon</option>
                           <option value="LS">Lesotho</option>
                           <option value="LR">Liberia</option>
                           <option value="LY">Libya</option>
                           <option value="LI">Liechtenstein</option>
                           <option value="LT">Lithuania</option>
                           <option value="LU">Luxembourg</option>
                           <option value="MO">Macau</option>
                           <option value="MG">Madagascar</option>
                           <option value="MW">Malawi</option>
                           <option value="MY">Malaysia</option>
                           <option value="MV">Maldives</option>
                           <option value="ML">Mali</option>
                           <option value="MT">Mayotte</option>
                           <option value="MH">Marshall Islands</option>
                           <option value="MQ">Martinique</option>
                           <option value="MR">Mauritania</option>
                           <option value="MU">Mauritius</option>
                           <option value="MX">Mexico</option>
                           <option value="FM">Micronesia</option>
                           <option value="MD">Moldova</option>
                           <option value="MC">Monaco</option>
                           <option value="MN">Mongolia</option>
                           <option value="ME">Montenegro</option>
                           <option value="MS">Montserrat</option>
                           <option value="MA">Morocco</option>
                           <option value="MZ">Mozambique</option>
                           <option value="MM">Myanmar</option>
                           <option value="NA">Namibia</option>
                           <option value="NR">Nauru</option>
                           <option value="NP">Nepal</option>
                           <option value="NL">Netherlands</option>
                           <option value="AN">Netherlands Antilles</option>
                           <option value="NC">New Caledonia</option>
                           <option value="NZ">New Zealand</option>
                           <option value="NI">Nicaragua</option>
                           <option value="NE">Niger</option>
                           <option value="NG">Nigeria</option>
                           <option value="NU">Niue</option>
                           <option value="NF">Norfolk Island</option>
                           <option value="KP">North Korea</option>
                           <option value="MP">Northern Marianas</option>
                           <option value="NO">Norway</option>
                           <option value="OM">Oman</option>
                           <option value="PK">Pakistan</option>
                           <option value="PW">Palau</option>
                           <option value="PA">Panama</option>
                           <option value="PG">Papua New Guinea</option>
                           <option value="PY">Paraguay</option>
                           <option value="PE">Peru</option>
                           <option value="PH">Philippines</option>
                           <option value="PN">Pitcairn Islands</option>
                           <option value="PL">Poland</option>
                           <option value="PT">Portugal</option>
                           <option value="PR">Puerto Rico</option>
                           <option value="QA">Qatar</option>
                           <option value="RE">Reunion</option>
                           <option value="RO">Romania</option>
                           <option value="RU">Russia</option>
                           <option value="RW">Rwanda</option>
                           <option value="ST">São Tomé and Príncipe</option>
                           <option value="SH">Saint Helena</option>
                           <option value="PM">St. Pierre and Miquelon</option>
                           <option value="KN">Saint Kitts and Nevis</option>
                           <option value="LC">Saint Lucia</option>
                           <option value="VC">Saint Vincent and the Grenadines</option>
                           <option value="WS">Samoa</option>
                           <option value="SM">San Marino</option>
                           <option value="SA">Saudi Arabia</option>
                           <option value="SN">Senegal</option>
                           <option value="RS">Serbia</option>
                           <option value="SC">Seychelles</option>
                           <option value="SL">Sierra Leone</option>
                           <option value="SG">Singapore</option>
                           <option value="SK">Slovakia</option>
                           <option value="SI">Slovenia</option>
                           <option value="SB">Solomon Islands</option>
                           <option value="SO">Somalia</option>
                           <option value="ZA">South Africa</option>
                           <option value="GS">South Georgia and the South Sandwich Islands</option>
                           <option value="KR">South Korea</option>
                           <option value="ES">Spain</option>
                           <option value="LK">Sri Lanka</option>
                           <option value="SD">Sudan</option>
                           <option value="SR">Suriname</option>
                           <option value="SJ">Svalbard and Jan Mayen Islands</option>
                           <option value="SZ">Swaziland</option>
                           <option value="SE">Sweden</option>
                           <option value="CH">Switzerland</option>
                           <option value="SY">Syria</option>
                           <option value="TW">Taiwan</option>
                           <option value="TJ">Tajikistan</option>
                           <option value="TZ">Tanzania</option>
                           <option value="TH">Thailand</option>
                           <option value="BS">The Bahamas</option>
                           <option value="GM">The Gambia</option>
                           <option value="TG">Togo</option>
                           <option value="TK">Tokelau</option>
                           <option value="TO">Tonga</option>
                           <option value="TT">Trinidad and Tobago</option>
                           <option value="TN">Tunisia</option>
                           <option value="TR">Turkey</option>
                           <option value="TM">Turkmenistan</option>
                           <option value="TC">Turks and Caicos Islands</option>
                           <option value="TV">Tuvalu</option>
                           <option value="VI">US Virgin Islands</option>
                           <option value="UG">Uganda</option>
                           <option value="UA">Ukraine</option>
                           <option value="AE">United Arab Emirates</option>
                           <option value="GB">United Kingdom</option>
                           <option value="UM">United States Minor Outlying Islands</option>
                           <option value="UY">Uruguay</option>
                           <option value="UZ">Uzbekistan</option>
                           <option value="VU">Vanuatu</option>
                           <option value="VA">Vatican City</option>
                           <option value="VE">Venezuela</option>
                           <option value="VN">Vietnam</option>
                           <option value="WF">Wallis and Futuna Islands</option>
                           <option value="EH">Western Sahara</option>
                           <option value="YE">Yemen</option>
                           <option value="ZM">Zambia</option>
                           <option value="ZW">Zimbabwe</option>
                         </select> 
                    </div>
                </div>
            </div>
        </div>
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-resalenumber">
                    {{translate 'Resale Number <small class="login-register-register-form-required">*</small> '}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <input type="text" name="custentity_jj_resalenumber" id="custentity_jj_resalenumber" class="login-register-register-form-input login_register_text" required>
                </div>
            </div> -->
            </div>
        </div>
    </div>
    <div class="home-summary-expander-container">
        <div class="home-summary-expander-head">
            <!-- <a class="home-summary-expander-head-toggle" data-toggle="collapse" data-target="#home-summary-body" aria-expanded="true" aria-controls="estimate-shipping-form">
            Additional Info <i data-toggle="tooltip" class="home-summary-expander-tooltip" title="Click this thing" ></i><i class="home-summary-expander-toggle-icon"></i>
        </a> -->
            <div class="emptyspace">.</div>
            <h2 class="login-register-title-register">{{translate 'LOGIN INFORMATION'}}</h2>
        </div>
        <div id="home-summary-body" role="tabpanel" aria-expanded="true">

            <div class="home-summary-expander-container-content">
                 <div class="mainfield">
            <div class="first-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-password">
                        {{translate '<small class="login-register-register-form-required">*</small>Password  '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="password" name="password" id="register-password" class="login-register-register-form-input login_register_text">
                    </div>
                </div>
            </div>
            <div class="second-Filed">
                <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                    <label class="login-register-register-form-label" for="register-password2">
                        {{translate '<small class="login-register-register-form-required">*</small>Confirm Password '}}
                    </label>
                    <div class="login-register-register-form-controls" data-validation="control">
                        <input type="password" name="password2" id="register-password2" class="login-register-register-form-input login_register_text">
                    </div>
                </div>
            </div>
        </div>
        <div class="password-description" style="color:#435363;"> Password must be at least seven characters and must contain one uppercase letter and one number.</div>
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-custentitybsp_nls">
                    {{translate 'Number of locations? <small class="login-register-register-form-required">*</small> '}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <input type="text" name="custentitybsp_nls" id="register-custentitybsp_nls" class="login-register-register-form-input login_register_text" required>
                </div>
            </div>
             -->
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-hear-about-us">
                    {{translate 'How did you hear about us? <small class="login-register-register-form-required">*</small>'}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <select name="hear_about_us" id="register-hear-about-us" class="login-register-register-form-input login_register_select">
                    <option value="1"> Email</option>
                    <option value="2"> Event / Festival</option>
                    <option value="3"> Family / Friend </option>        
                    <option value="4"> Sales Rep</option>   
                    <option value="5"> Internet Search</option>
                    <option value="6"> Magazine Ad</option> 
                    <option value="7"> Facebook Ad</option> 
                    <option value="8"> Social Media</option>        
                    <option value="9"> Other</option>               
                    </select>
                </div>
            </div>   -->
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-estimated-spend">
                    {{translate 'Estimated monthly accessory spending? <small class="login-register-register-form-required">*</small>'}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <select name="estimated_spend" id="register-estimated-spend" class="login-register-register-form-input login_register_select" required>
                    <option value="1"> $200 - $1,000</option>
                    <option value="2">$1,001 - $2,500</option>
                    <option value="3">$2,501 - $5,000</option>
                    <option value="4">$5,001 - $7,500</option>
                    <option value="5">$7,501 - $10,000</option>
                    <option value="6">$10,001 - $15,000</option>
                    <option value="7">$15,000 - $20,000</option>
                    <option value="8">$20,001 - $30,000</option>
                    <option value="9">$30,001 - $50,000</option>
                    <option value="10">$50,001 - $75,000</option>   
                    <option value="11">$75,000+</option>            
                    </select>
                </div>
            </div>   -->
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-vendors-purchased">
                    {{translate 'Accessory vendors you purchase from? <small class="login-register-register-form-required">*</small> '}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <input type="text" name="vendors_purchased" id="register-vendors-purchased" class="login-register-register-form-input login_register_text" required>
                </div>
            </div>   -->
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-sales-rep">
                    {{translate 'Sales Rep <small class="login-register-register-form-required">*</small> '}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control">
                    <select name="sales_rep" id="register-sales-rep" class="login-register-register-form-input login_register_select" required>                 
                    <option value="4059596">Bryan Martinez</option>
                    <option value="7049632">Henry Robles</option>
                    <option value="-5">Rohit Batta</option> 
                    <option value="9">Sean Batta</option>       
                    </select>
                </div>
            </div>
 -->
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-carrier">
                    {{translate 'Carriers <small class="login-register-register-form-required">*</small>'}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control" >
            <select name="carrier" id="register-carrier" class="login-register-register-form-input" required multiple>
                    <option value="1"> AT&T</option>
                    <option value="2">Verizon</option>
                    <option value="3">T-Mobile</option>
                    <option value="4">StraightTalk"</option>
                    <option value="5">MetroPCS</option>
                    <option value="6">Cricket</option>
                    <option value="7">Boost Mobile</option>
                    <option value="8">Sprint</option>                   
                    <option value="9">US Cellular</option>                      
                    <option value="10">Virgin Mobile</option>       
                    <option value="11">Others</option>                  
                    </select>
                </div>
            </div>   -->
                <!-- <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
                <label class="login-register-register-form-label" for="register-reseller">
                    {{translate 'Business Type <small class="login-register-register-form-required">*</small> '}}
                </label>
                <div class="login-register-register-form-controls" data-validation="control" >
                    <select name="reseller" id="register-reseller" class="login-register-register-form-input login_register_businesstype login_register_select" required>
                    <option value="5">Carrier Stores</option>
                    <option value="19">Flea Market / Swap Meet / Trade Shows</option>
                    <option value="6">International</option>
                    <option value="4">Online Seller (ex: Amazon, eBay, ecommerce website)</option>
                    <option value="17">Other</option>
                    <option value="1">Repair Shops & Accessories</option>
                    <option value="2">Retailer (ex: Mall Cart, Kiosk, Storefront)</option>
                    <option value="3">Wholesale and Distribution</option>                       
                    </select>
                </div>
            </div>       -->
            </div>
        </div>
    </div>
    {{#if isRedirect}}
    <div class="login-register-register-form-controls-group login-register-fields" data-validation="control-group">
        <div class="login-register-register-form-controls" data-validation="control">
            <input value="true" type="hidden" name="redirect">
        </div>
    </div>
    {{/if}}
    <!--  <div>
            <label class="login-register-login-register-form-remindme" style="margin-bottom: 0px">
                <input id="RememberMeRegister" type="checkbox" checked  style="zoom:1.5"> 
                <div class="RememberMeRegister_register_checkbox">
                    <span>Remember Me</span><span style="color:#00a7ce"> What's this?</span></div>
            </label>
        </div> -->
    <div class="login-register-register-form-controls-group login-register-button" style="margin-top: 0px">
        <!-- <label class="login-register-register-form-subscribe">
            <input type="checkbox" name="emailsubscribe" id="register-emailsubscribe" value="T" {{#if isEmailSubscribeChecked}} checked {{/if}}> {{translate 'Yes, Please sign me up for $(0) exclusive offers and promotions' siteName}}
        </label> -->
        {{#unless showFormFieldsOnly}}
        <div class="login-register-register-form-controls-group register-button">
            <button type="submit" class="login-register-register-form-submit" style="background-color:#435363;border: 0px solid white;font-weight: 600;border-radius: 0px;">
                {{translate 'SUBMIT'}}
            </button>
        </div>

    </div>
</form>
{{/unless}}
</div>
<div class="login-register-register-form-messages" data-type="alert-placeholder"></div>


<script>
//$("#register-country").val("United States");

function displaytextfield()
{
  // Get the checkbox
  var checkBox = document.getElementById("other");
  // Get the textfield
  var text = document.getElementById("other-field-display");

  // If the checkbox is checked, display the textfield
  if (checkBox.checked == true)
    {
        text.style.display = "block";
    } 
  else 
    {
        text.style.display = "none";
    }
}    
</script>
{{!---- Use the following context variables when customizing this template: showCompanyField (Boolean) isCompanyFieldRequire (Boolean) siteName (String) showFormFieldsOnly (Boolean) isRedirect (Boolean) hasAutoFocus (Boolean) ----}}
