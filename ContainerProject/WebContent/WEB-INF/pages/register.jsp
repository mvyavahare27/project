<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Container System</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
      <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
      <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
      <!--===============================================================================================-->  
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
      <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
      <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
      <!--===============================================================================================-->  
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
      <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
      
      <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
      
      
<style>
.ml9 {
  position: relative;
  font-weight: 400;
  font-size: 2em;
  color: white;
}

.ml9 .text-wrapper {
  position: relative;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.05em;
  padding-bottom: 0.1em;
  overflow: hidden;
}

.ml9 .letter {
  transform-origin: 50% 100%;
  display: inline-block;
  line-height: 1em;
}
      	
      </style>
      
   </head>
   <body>
      <p id="para" class="alert-danger"></p>
      <div class="site-wrap">
         <div class="site-mobile-menu">
            <div class="site-mobile-menu-header">
               <div class="site-mobile-menu-close mt-3">
                  <span class="icon-close2 js-menu-toggle"></span>
               </div>
            </div>
            <div class="site-mobile-menu-body"></div>
         </div>
         <header class="site-navbar py-3" role="banner">
            <div class="container">
               <div class="row align-items-center">
                  <div class="col-11 col-xl-2">
                     <h1 class="mb-0"><a href="index.html" class="text-white h2 mb-0">SRAM<br />Containers</a></h1>
                  </div>
                  <div class="col-12 col-md-10 d-none d-xl-block">
                     <nav class="site-navigation position-relative text-right" role="navigation">
                        <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                           <li class="active"><a href="index.jsp">Home</a></li>
                           <li class="has-children">
                              <a href="services.jsp">Services</a>
                              <ul class="dropdown">
                                 <li> 
                                 <li class="has-children">
                                    <a href="storage.html">Storage</a>
                                    <ul class="dropdown">
                                       <li>
                                          <a href="dry.html">Dry Container</a>
                                          <a href="cold.html">Cold Container</a>
                                       </li>
                                    </ul>
                                 </li>
                                 </li>
                                 <li><a href="transport.jsp">Transport</a></li>
                                 <li><a href="shipping.jsp">Shipping</a></li>
                              </ul>
                           </li>
                           <li><a href="contact.jsp">Contact Us</a></li>
                           <li><a href="about.jsp">About Us</a></li>
                        </ul>
                     </nav>
                  </div>
                  <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
               </div>
            </div>
      </div>
      </header>
            <div class="limiter">
         <div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_bg_1.jpg');">
            <div class="wrap-login100 p-t-130 p-b-70">
               <center><h2 class="ml9">
				  <span class="text-wrapper">
				    <span class="letters">Register</span>
				  </span>
				</h2></center>
            
               <div id="booking" class="section">
                  <div class="section-center">
                     <div class="container">
                        <div class="row">
                           <div class="booking-form">
       <form name="theForm" method="POST" action="register" modelAttribute="register">
                                 <div class="row">
                                    <div class="col-sm-6">
                                       <div class="form-group">
                                          <span class="form-label">First Name</span>
                                          <input class="form-control" type="text" name="firstname" placeholder="First name" id="fn">
                                       </div>
                                    </div>
                                    <div class="col-sm-6">
                                       <div class="form-group">
                                          <span class="form-label">Last Name</span>
                                          <input class="form-control" type="text" name="lastname" placeholder="Last name" id="ln">
                                       </div>
                                    </div>
                                 </div>
                                 
                                 <div class="form-group">
                                    <span class="form-label">Email</span>
                                    <input class="form-control" type="text" name="username" placeholder="Enter your email" id="em">
                                 </div>
                                 
                                 <div class="form-group">
                                    <span class="form-label">Password</span>
                                    <input class="form-control" type="text" name="password" placeholder="Password" id="pw">
                                 </div>
                                 
                                 <div class="form-group">
                                    <span class="form-label">Mobile</span>
                                    <input class="form-control" type="text" name="mobileno" placeholder="Enter your Mobile" id="mob">
                                 </div>
                                 
                                 <div class="col-sm-100">
                                    <div class="row">
                                       <div class="col-sm-100">
                                          <div class="form-group">
                                             <span class="form-label">Country</span>
                                             <select class="form-control" name="country" id="con" style="width: 400px;">
                           <option>--Select Country--</option>
                           <option data-countryCode="DZ" value="213">Algeria (+213)</option>
                           <option data-countryCode="AD" value="376">Andorra (+376)</option>
                           <option data-countryCode="AO" value="244">Angola (+244)</option>
                           <option data-countryCode="AI" value="1264">Anguilla (+1264)</option>
                           <option data-countryCode="AG" value="1268">Antigua &amp; Barbuda (+1268)</option>
                           <option data-countryCode="AR" value="54">Argentina (+54)</option>
                           <option data-countryCode="AM" value="374">Armenia (+374)</option>
                           <option data-countryCode="AW" value="297">Aruba (+297)</option>
                           <option data-countryCode="AU" value="61">Australia (+61)</option>
                           <option data-countryCode="AT" value="43">Austria (+43)</option>
                           <option data-countryCode="AZ" value="994">Azerbaijan (+994)</option>
                           <option data-countryCode="BS" value="1242">Bahamas (+1242)</option>
                           <option data-countryCode="BH" value="973">Bahrain (+973)</option>
                           <option data-countryCode="BD" value="880">Bangladesh (+880)</option>
                           <option data-countryCode="BB" value="1246">Barbados (+1246)</option>
                           <option data-countryCode="BY" value="375">Belarus (+375)</option>
                           <option data-countryCode="BE" value="32">Belgium (+32)</option>
                           <option data-countryCode="BZ" value="501">Belize (+501)</option>
                           <option data-countryCode="BJ" value="229">Benin (+229)</option>
                           <option data-countryCode="BM" value="1441">Bermuda (+1441)</option>
                           <option data-countryCode="BT" value="975">Bhutan (+975)</option>
                           <option data-countryCode="BO" value="591">Bolivia (+591)</option>
                           <option data-countryCode="BA" value="387">Bosnia Herzegovina (+387)</option>
                           <option data-countryCode="BW" value="267">Botswana (+267)</option>
                           <option data-countryCode="BR" value="55">Brazil (+55)</option>
                           <option data-countryCode="BN" value="673">Brunei (+673)</option>
                           <option data-countryCode="BG" value="359">Bulgaria (+359)</option>
                           <option data-countryCode="BF" value="226">Burkina Faso (+226)</option>
                           <option data-countryCode="BI" value="257">Burundi (+257)</option>
                           <option data-countryCode="KH" value="855">Cambodia (+855)</option>
                           <option data-countryCode="CM" value="237">Cameroon (+237)</option>
                           <option data-countryCode="CA" value="1">Canada (+1)</option>
                           <option data-countryCode="CV" value="238">Cape Verde Islands (+238)</option>
                           <option data-countryCode="KY" value="1345">Cayman Islands (+1345)</option>
                           <option data-countryCode="CF" value="236">Central African Republic (+236)</option>
                           <option data-countryCode="CL" value="56">Chile (+56)</option>
                           <option data-countryCode="CN" value="86">China (+86)</option>
                           <option data-countryCode="CO" value="57">Colombia (+57)</option>
                           <option data-countryCode="KM" value="269">Comoros (+269)</option>
                           <option data-countryCode="CG" value="242">Congo (+242)</option>
                           <option data-countryCode="CK" value="682">Cook Islands (+682)</option>
                           <option data-countryCode="CR" value="506">Costa Rica (+506)</option>
                           <option data-countryCode="HR" value="385">Croatia (+385)</option>
                           <option data-countryCode="CU" value="53">Cuba (+53)</option>
                           <option data-countryCode="CY" value="90392">Cyprus North (+90392)</option>
                           <option data-countryCode="CY" value="357">Cyprus South (+357)</option>
                           <option data-countryCode="CZ" value="42">Czech Republic (+42)</option>
                           <option data-countryCode="DK" value="45">Denmark (+45)</option>
                           <option data-countryCode="DJ" value="253">Djibouti (+253)</option>
                           <option data-countryCode="DM" value="1809">Dominica (+1809)</option>
                           <option data-countryCode="DO" value="1809">Dominican Republic (+1809)</option>
                           <option data-countryCode="EC" value="593">Ecuador (+593)</option>
                           <option data-countryCode="EG" value="20">Egypt (+20)</option>
                           <option data-countryCode="SV" value="503">El Salvador (+503)</option>
                           <option data-countryCode="GQ" value="240">Equatorial Guinea (+240)</option>
                           <option data-countryCode="ER" value="291">Eritrea (+291)</option>
                           <option data-countryCode="EE" value="372">Estonia (+372)</option>
                           <option data-countryCode="ET" value="251">Ethiopia (+251)</option>
                           <option data-countryCode="FK" value="500">Falkland Islands (+500)</option>
                           <option data-countryCode="FO" value="298">Faroe Islands (+298)</option>
                           <option data-countryCode="FJ" value="679">Fiji (+679)</option>
                           <option data-countryCode="FI" value="358">Finland (+358)</option>
                           <option data-countryCode="FR" value="33">France (+33)</option>
                           <option data-countryCode="GF" value="594">French Guiana (+594)</option>
                           <option data-countryCode="PF" value="689">French Polynesia (+689)</option>
                           <option data-countryCode="GA" value="241">Gabon (+241)</option>
                           <option data-countryCode="GM" value="220">Gambia (+220)</option>
                           <option data-countryCode="GE" value="7880">Georgia (+7880)</option>
                           <option data-countryCode="DE" value="49">Germany (+49)</option>
                           <option data-countryCode="GH" value="233">Ghana (+233)</option>
                           <option data-countryCode="GI" value="350">Gibraltar (+350)</option>
                           <option data-countryCode="GR" value="30">Greece (+30)</option>
                           <option data-countryCode="GL" value="299">Greenland (+299)</option>
                           <option data-countryCode="GD" value="1473">Grenada (+1473)</option>
                           <option data-countryCode="GP" value="590">Guadeloupe (+590)</option>
                           <option data-countryCode="GU" value="671">Guam (+671)</option>
                           <option data-countryCode="GT" value="502">Guatemala (+502)</option>
                           <option data-countryCode="GN" value="224">Guinea (+224)</option>
                           <option data-countryCode="GW" value="245">Guinea - Bissau (+245)</option>
                           <option data-countryCode="GY" value="592">Guyana (+592)</option>
                           <option data-countryCode="HT" value="509">Haiti (+509)</option>
                           <option data-countryCode="HN" value="504">Honduras (+504)</option>
                           <option data-countryCode="HK" value="852">Hong Kong (+852)</option>
                           <option data-countryCode="HU" value="36">Hungary (+36)</option>
                           <option data-countryCode="IS" value="354">Iceland (+354)</option>
                           <option data-countryCode="IN" value="91">India (+91)</option>
                           <option data-countryCode="ID" value="62">Indonesia (+62)</option>
                           <option data-countryCode="IR" value="98">Iran (+98)</option>
                           <option data-countryCode="IQ" value="964">Iraq (+964)</option>
                           <option data-countryCode="IE" value="353">Ireland (+353)</option>
                           <option data-countryCode="IL" value="972">Israel (+972)</option>
                           <option data-countryCode="IT" value="39">Italy (+39)</option>
                           <option data-countryCode="JM" value="1876">Jamaica (+1876)</option>
                           <option data-countryCode="JP" value="81">Japan (+81)</option>
                           <option data-countryCode="JO" value="962">Jordan (+962)</option>
                           <option data-countryCode="KZ" value="7">Kazakhstan (+7)</option>
                           <option data-countryCode="KE" value="254">Kenya (+254)</option>
                           <option data-countryCode="KI" value="686">Kiribati (+686)</option>
                           <option data-countryCode="KP" value="850">Korea North (+850)</option>
                           <option data-countryCode="KR" value="82">Korea South (+82)</option>
                           <option data-countryCode="KW" value="965">Kuwait (+965)</option>
                           <option data-countryCode="KG" value="996">Kyrgyzstan (+996)</option>
                           <option data-countryCode="LA" value="856">Laos (+856)</option>
                           <option data-countryCode="LV" value="371">Latvia (+371)</option>
                           <option data-countryCode="LB" value="961">Lebanon (+961)</option>
                           <option data-countryCode="LS" value="266">Lesotho (+266)</option>
                           <option data-countryCode="LR" value="231">Liberia (+231)</option>
                           <option data-countryCode="LY" value="218">Libya (+218)</option>
                           <option data-countryCode="LI" value="417">Liechtenstein (+417)</option>
                           <option data-countryCode="LT" value="370">Lithuania (+370)</option>
                           <option data-countryCode="LU" value="352">Luxembourg (+352)</option>
                           <option data-countryCode="MO" value="853">Macao (+853)</option>
                           <option data-countryCode="MK" value="389">Macedonia (+389)</option>
                           <option data-countryCode="MG" value="261">Madagascar (+261)</option>
                           <option data-countryCode="MW" value="265">Malawi (+265)</option>
                           <option data-countryCode="MY" value="60">Malaysia (+60)</option>
                           <option data-countryCode="MV" value="960">Maldives (+960)</option>
                           <option data-countryCode="ML" value="223">Mali (+223)</option>
                           <option data-countryCode="MT" value="356">Malta (+356)</option>
                           <option data-countryCode="MH" value="692">Marshall Islands (+692)</option>
                           <option data-countryCode="MQ" value="596">Martinique (+596)</option>
                           <option data-countryCode="MR" value="222">Mauritania (+222)</option>
                           <option data-countryCode="YT" value="269">Mayotte (+269)</option>
                           <option data-countryCode="MX" value="52">Mexico (+52)</option>
                           <option data-countryCode="FM" value="691">Micronesia (+691)</option>
                           <option data-countryCode="MD" value="373">Moldova (+373)</option>
                           <option data-countryCode="MC" value="377">Monaco (+377)</option>
                           <option data-countryCode="MN" value="976">Mongolia (+976)</option>
                           <option data-countryCode="MS" value="1664">Montserrat (+1664)</option>
                           <option data-countryCode="MA" value="212">Morocco (+212)</option>
                           <option data-countryCode="MZ" value="258">Mozambique (+258)</option>
                           <option data-countryCode="MN" value="95">Myanmar (+95)</option>
                           <option data-countryCode="NA" value="264">Namibia (+264)</option>
                           <option data-countryCode="NR" value="674">Nauru (+674)</option>
                           <option data-countryCode="NP" value="977">Nepal (+977)</option>
                           <option data-countryCode="NL" value="31">Netherlands (+31)</option>
                           <option data-countryCode="NC" value="687">New Caledonia (+687)</option>
                           <option data-countryCode="NZ" value="64">New Zealand (+64)</option>
                           <option data-countryCode="NI" value="505">Nicaragua (+505)</option>
                           <option data-countryCode="NE" value="227">Niger (+227)</option>
                           <option data-countryCode="NG" value="234">Nigeria (+234)</option>
                           <option data-countryCode="NU" value="683">Niue (+683)</option>
                           <option data-countryCode="NF" value="672">Norfolk Islands (+672)</option>
                           <option data-countryCode="NP" value="670">Northern Marianas (+670)</option>
                           <option data-countryCode="NO" value="47">Norway (+47)</option>
                           <option data-countryCode="OM" value="968">Oman (+968)</option>
                           <option data-countryCode="PW" value="680">Palau (+680)</option>
                           <option data-countryCode="PA" value="507">Panama (+507)</option>
                           <option data-countryCode="PG" value="675">Papua New Guinea (+675)</option>
                           <option data-countryCode="PY" value="595">Paraguay (+595)</option>
                           <option data-countryCode="PE" value="51">Peru (+51)</option>
                           <option data-countryCode="PH" value="63">Philippines (+63)</option>
                           <option data-countryCode="PL" value="48">Poland (+48)</option>
                           <option data-countryCode="PT" value="351">Portugal (+351)</option>
                           <option data-countryCode="PR" value="1787">Puerto Rico (+1787)</option>
                           <option data-countryCode="QA" value="974">Qatar (+974)</option>
                           <option data-countryCode="RE" value="262">Reunion (+262)</option>
                           <option data-countryCode="RO" value="40">Romania (+40)</option>
                           <option data-countryCode="RU" value="7">Russia (+7)</option>
                           <option data-countryCode="RW" value="250">Rwanda (+250)</option>
                           <option data-countryCode="SM" value="378">San Marino (+378)</option>
                           <option data-countryCode="ST" value="239">Sao Tome &amp; Principe (+239)</option>
                           <option data-countryCode="SA" value="966">Saudi Arabia (+966)</option>
                           <option data-countryCode="SN" value="221">Senegal (+221)</option>
                           <option data-countryCode="CS" value="381">Serbia (+381)</option>
                           <option data-countryCode="SC" value="248">Seychelles (+248)</option>
                           <option data-countryCode="SL" value="232">Sierra Leone (+232)</option>
                           <option data-countryCode="SG" value="65">Singapore (+65)</option>
                           <option data-countryCode="SK" value="421">Slovak Republic (+421)</option>
                           <option data-countryCode="SI" value="386">Slovenia (+386)</option>
                           <option data-countryCode="SB" value="677">Solomon Islands (+677)</option>
                           <option data-countryCode="SO" value="252">Somalia (+252)</option>
                           <option data-countryCode="ZA" value="27">South Africa (+27)</option>
                           <option data-countryCode="ES" value="34">Spain (+34)</option>
                           <option data-countryCode="LK" value="94">Sri Lanka (+94)</option>
                           <option data-countryCode="SH" value="290">St. Helena (+290)</option>
                           <option data-countryCode="KN" value="1869">St. Kitts (+1869)</option>
                           <option data-countryCode="SC" value="1758">St. Lucia (+1758)</option>
                           <option data-countryCode="SD" value="249">Sudan (+249)</option>
                           <option data-countryCode="SR" value="597">Suriname (+597)</option>
                           <option data-countryCode="SZ" value="268">Swaziland (+268)</option>
                           <option data-countryCode="SE" value="46">Sweden (+46)</option>
                           <option data-countryCode="CH" value="41">Switzerland (+41)</option>
                           <option data-countryCode="SI" value="963">Syria (+963)</option>
                           <option data-countryCode="TW" value="886">Taiwan (+886)</option>
                           <option data-countryCode="TJ" value="7">Tajikstan (+7)</option>
                           <option data-countryCode="TH" value="66">Thailand (+66)</option>
                           <option data-countryCode="TG" value="228">Togo (+228)</option>
                           <option data-countryCode="TO" value="676">Tonga (+676)</option>
                           <option data-countryCode="TT" value="1868">Trinidad &amp; Tobago (+1868)</option>
                           <option data-countryCode="TN" value="216">Tunisia (+216)</option>
                           <option data-countryCode="TR" value="90">Turkey (+90)</option>
                           <option data-countryCode="TM" value="7">Turkmenistan (+7)</option>
                           <option data-countryCode="TM" value="993">Turkmenistan (+993)</option>
                           <option data-countryCode="TC" value="1649">Turks &amp; Caicos Islands (+1649)</option>
                           <option data-countryCode="TV" value="688">Tuvalu (+688)</option>
                           <option data-countryCode="UG" value="256">Uganda (+256)</option>
                           <option data-countryCode="GB" value="44">UK (+44)</option>
                           <option data-countryCode="UA" value="380">Ukraine (+380)</option>
                           <option data-countryCode="AE" value="971">United Arab Emirates (+971)</option>
                           <option data-countryCode="UY" value="598">Uruguay (+598)</option>
                           <option data-countryCode="US" value="1">USA (+1)</option>
                           <option data-countryCode="UZ" value="7">Uzbekistan (+7)</option>
                           <option data-countryCode="VU" value="678">Vanuatu (+678)</option>
                           <option data-countryCode="VA" value="379">Vatican City (+379)</option>
                           <option data-countryCode="VE" value="58">Venezuela (+58)</option>
                           <option data-countryCode="VN" value="84">Vietnam (+84)</option>
                           <option data-countryCode="VG" value="84">Virgin Islands - British (+1284)</option>
                           <option data-countryCode="VI" value="84">Virgin Islands - US (+1340)</option>
                           <option data-countryCode="WF" value="681">Wallis &amp; Futuna (+681)</option>
                           <option data-countryCode="YE" value="969">Yemen (North)(+969)</option>
                           <option data-countryCode="YE" value="967">Yemen (South)(+967)</option>
                           <option data-countryCode="ZM" value="260">Zambia (+260)</option>
                           <option data-countryCode="ZW" value="263">Zimbabwe (+263)</option>
                        </select>
                                             <span class="select-arrow"></span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 
                                 <div class="form-group">
                                    <span class="form-label">PIN Code</span>
                                    <input class="form-control" type="text" name="pincode" placeholder="Enter your PIN Code" id="mob">
                                 </div>
                                 
                                 
                                
                                    <input type="submit"   value="Register"  />
                                
                                 <div class="mt-4" style="color: white;">
									<div class="d-flex justify-content-center links">
										Already have an account? <a href="login" class="ml-2">Login here</a>
									</div>
									
								</div>
                                 
                                 </form>
                                 ${data}
                           </div>
                        </div>
                     </div>
                  </div>     
               </div>
            </div>
         </div>
      <br>
     
      
            </div>
         </div>
      </div>
      
      <footer class="site-footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="row">
                        <div class="col-md-3">
                           <h2 class="footer-heading mb-4">Quick Links</h2>
                           <ul class="list-unstyled">
                              <li><a href="#">Home</a></li>
                              <li><a href="about.html">About Us</a></li>
                              <li><a href="contact.html">Contact Us</a></li>
                           </ul>
                        </div>
                        <div class="col-md-3">
                           <h2 class="footer-heading mb-4">Services</h2>
                           <ul class="list-unstyled">
                              <li><a href="dry.html">Dry Container</a></li>
                              <li><a href="cold.html">Cold Container</a></li>
                              <li><a href="shipping.html">Shipping</a></li>
                              <li><a href="transport.html">Transport</a></li>
                           </ul>
                        </div>
                        <div class="col-md-3">
                           <h2 class="footer-heading mb-4">Contact</h2>
                           <!-- Links -->
                           <p>
                              <i class="fas fa-home"></i> India
                           </p>
                           <p>
                              <i class="far fa-envelope"></i> info@sram.com
                           </p>
                           <p>
                              <i class="fas fa-phone"></i> + 01 234 567 88
                           </p>
                        </div>
                        <!-- Grid column -->
                        <div class="col-md-3">
                           <h2 class="footer-heading mb-4">Follow Us</h2>
                           <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                           <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                           <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                           <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
      </div>
      <script>
         function validate(){
             var regName1 = /^[a-zA-Z]([a-zA-Z ]{1,})?[a-zA-Z]$/;
             var name1 = document.getElementById('fn').value;
             if(!regName1.test(name1)){
             	document.getElementById("para").innerHTML = "Invalid FirstName";
                 document.getElementById('fn').focus();
                
                 return false;
             }else{
             	var regName2 = /^[a-zA-Z]([a-zA-Z ]{1,})?[a-zA-Z]$/;
         	    var name2 = document.getElementById('ln').value;
         	    if(!regName2.test(name2)){
         	    	document.getElementById("para").innerHTML = "Invalid LastName";
         	        document.getElementById('ln').focus();
         	        return false;
         	    }else{
         	    	var email = /^([a-zA-Z0-9]([a-zA-Z0-9_\.]+)?[a-zA-Z0-9])@([a-zA-Z0-9]([a-zA-Z0-9\-]+)?[a-zA-Z0-9])\.([a-zA-Z]{2,})(\.[a-zA-Z]{2,})?$/;
         		    var name3 = document.getElementById('em').value;
         		    if(!email.test(name3)){
         		    	document.getElementById("para").innerHTML = "Invalid Email";
         		        document.getElementById('em').focus();
         		        return false;
         		    }else{
         		    	var email = /^([a-zA-Z0-9]([a-zA-Z0-9_\.]+)?[a-zA-Z0-9])@([a-zA-Z0-9]([a-zA-Z0-9\-]+)?[a-zA-Z0-9])\.([a-zA-Z]{2,})(\.[a-zA-Z]{2,})?$/;
         			    var name3 = document.getElementById('em').value;
         			    if(!email.test(name3)){
         			    	document.getElementById("para").innerHTML = "Invalid Email";
         			        document.getElementById('em').focus();
         			        return false;
         			    }else{
         			    	var pass = /^[a-zA-Z0-9_\-]{4,12}$/;
         				    var name4 = document.getElementById('pw').value;
         				    if(!pass.test(name4)){
         				    	document.getElementById("para").innerHTML = "Invalid Password";
         				        document.getElementById('pw').focus();
         				        return false;
         				    }else{
         				    	var name4 = document.getElementById('pw').value;
         					    var name5 = document.getElementById('cpw').value;
         					    if(name4 != name5){
         					    	document.getElementById("para").innerHTML = "Invalid ConfirmPassword";
         					        document.getElementById('cpw').focus();
         					        return false;
         					    }else{
         					    	var mob = /^[1-9][0-9]{9}$/;
         						    var name6 = document.getElementById('mob').value;
         						    if(!mob.test(name6)){
         						    	document.getElementById("para").innerHTML = "Invalid Mobile";
         						        document.getElementById('mob').focus();
         						        return false;
         						    }else{
         						    	
         							    var name7 = document.getElementById('con').value;
         							    if(name7 == null || name7 == "" || name7 == "country"){
         							    	document.getElementById("para").innerHTML = "Invalid Country";
         							        document.getElementById('con').focus();
         							        return false;
         							    }else{
         							    	document.theForm.submit();	
         		            			}
         						    }
         					    }
         				    }
         			    }
         		    }
         	    }
             }
         }
      </script>
      <script src="js/jquery-3.3.1.min.js"></script>
      <script src="js/jquery-migrate-3.0.1.min.js"></script>
      <script src="js/jquery-ui.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>
      <script src="js/jquery.stellar.min.js"></script>
      <script src="js/jquery.countdown.min.js"></script>
      <script src="js/jquery.magnific-popup.min.js"></script>
      <script src="js/bootstrap-datepicker.min.js"></script>
      <script src="js/aos.js"></script>
      <script src="js/main.js"></script>
       
      <script>
  var textWrapper = document.querySelector('.ml9 .letters');
  textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

  anime.timeline({loop: true})
    .add({
      targets: '.ml9 .letter',
      scale: [0, 1],
      duration: 1500,
      elasticity: 600,
      delay: (el, i) => 45 * (i+1)
    }).add({
      targets: '.ml9',
      opacity: 0,
      duration: 1000,
      easing: "easeOutExpo",
      delay: 1000
    });
  </script>
   </body>
</html>

