# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module EVSPriorityMailIntl
				# The
				# eVS Priority Mail Express International Label API lets customers generate eVS Priority
				# Mail Express International labels given the weight and dimensions of the item.
				# @param [Hash] options
				# @option options [required, Hash] e_vs_priority_mail_int_request Produces a Priority Mail International label with customs declaration
				#  * *:option* (Empty) — For future use.
				#  * *:revision* (required, String) — Use of value 2 Required as of January 2011. For example: <Revision>2</Revision>
				#  * *:image_parameters* (Hash) — Groups alternate image options.
				#    * *:image_parameter* (String) — Returns alternate label image. Only alternate 4’’x6’’ size label image may be requested at this time. · 4X6LABEL - (4X6 on a full page 8.5/11” background) · 4X6LABELL - (Landscape – true size 4X6; image rotated, not on an 8.5 x 11 background page) · 4X6LABELP - (Portrait – true size 4X6, not on an 8.5 x 11 background page) · 4X6ZPL203DPI - (ZPL - Zebra Programming Language) format. When using this enumeration, <ImageType> is required - this tag cannot be left blank. Integrators should use either “TIF” or “PDF” for ZPL – neither value will impact the label image itself, but it must be included in the request to return a successful response. · 4X6ZPL300DPI - Prints a label formatted for ZPL printers in 300 dpi. When using this enumeration, <ImageType> is required - this tag cannot be left blank. Integrators should use either “TIF” or “PDF” for ZPL – neither value will impact the label image itself, but it must be included in the request to return a successful response. For example: <ImageParameter>4X6LABEL</ImageParameter>
				#    * *:from_first_name* (required, String) — Both FromFirstName and FromLastName are Required if FromFirmName is left blank. Maximum Length: 32 characters total for First, Middle, and Last Names with space after first and middle name. For example: <FromFirstName>John</FromFirstName>
				#    * *:from_middle_initial* (String) — Middle Initial. Maximum Length: 32 characters total for First, Middle, and Last Names with space after first and middle name. For example: <FromMiddleInitial>L</FromMiddleInitial>
				#    * *:from_last_name* (required, String) — Both FromFirstName and FromLastName are Required if FromFirmName is left blank. Maximum Length: 32 characters total for First, Middle, and Last Names with space after first and middle name. For example: <FromLastName>Doe</FromLastName>
				#    * *:from_firm* (required, String) — FromFirm is Required if FromFirstName and FromLastName are left blank. For example: <FromFirm>XYZ</FromFirm>
				#    * *:from_address1* (String) — Use this tag for a suite or apartment number only. Either Address1 or Address2 is Required. For example: <FromAddress1>Suite 100</FromAddress1>
				#    * *:from_address2* (required, String) — Use this tag for the primary address line. For example: <FromAddress2>10 Elm Street </FromAddress2>
				#    * *:from_urbanization* (String) — Use this tag for Puerto Rico only. ZIP Code prefixes 006 to 009, if area is so designated. For example: <FromUrbanization>URB Caparra Ter</FromUrbanization>
				#    * *:from_city* (required, String) — For example: <FromCity>Anytown</FromCity>
				#    * *:from_state* (required, String) — Use 2-letter USPS abbreviation. For example: <FromState>ST</FromState>
				#    * *:from_zip5* (required, String) — Input tag exactly as presented, not all caps. 5 digits Required. For example: <FromZip5>01234</FromZip5>
				#    * *:from_zip4* (String) — Input tag exactly as presented, not all caps. If value is entered, 4 digits Required. This is the ZIP+4 extension. For example: <FromZip4>5678</FromZip4>
				#    * *:from_phone* (required, String) — 10 digits Required (including area code), with no punctuation. Use format: 2125551234 For example: <FromPhone>5555555555</FromPhone>
				#    * *:from_customs_reference* (String) — Enter a value for the "Sender's Customs Reference" that will appear on the label. The text entered is any reference number that the sender wishes to use. For example: <FromCustomsReference> 45655332 </FromCustomsReference>
				#    * *:to_name* (String) — Deprecated. See “ToFirstName” and “ToLastName” tags.
				#    * *:to_first_name* (required, String) — Both ToFirstName and ToLastName are Required if ToFirm is left blank. For example: <ToFirstName>John</ToFirstName>
				#    * *:to_last_name* (required, String) — Both ToFirstName and ToLastName are Required if ToFirm is left blank. For example: <ToLastName>Doe</ToLastName>
				#    * *:to_firm* (required, String) — ToFirm is Required if ToFirstName and ToLastName are left blank. For example: <ToFirm>YYZ</ToFirm>
				#    * *:to_address1* (String) — Three address lines are provided, but only 1 is Required. Use as many as needed for complete address. For example: <ToAddress1> Apartado 3068</ToAddress1>
				#    * *:to_address2* (required, String) — Three address lines are provided, but only 1 is Required. Use as many as needed for complete address.
				#    * *:to_address3* (String) — Three address lines are provided, but only 1 is Required. Use as many as needed for complete address.
				#    * *:to_city* (required, String) — Recipient's city. For example: <ToCity>Puerto Vallarta</ToCity>
				#    * *:to_province* (String) — Enter the province for the recipient. For example: <ToProvince>Jalisco</ToProvince>
				#    * *:to_country* (required, String) — The country name entered must match an entry from the USPS-approved International Index of Countries and Localities. (http://pe.usps.gov/text/Imm/Immctry.htm - click on the link for "International Country Listings.") Using a country name not on the list will result in a request failure. For example: <ToCountry>Mexico</ToCountry>
				#    * *:to_postal_code* (required, String) — Enter the postal code for the recipient. For example: <ToPostalCode>46807</ToPostalCode>
				#    * *:to_po_box_flag* (required, String) — Indicates whether the destination address is a Post Office Box. For example: <ToPOBoxFlag>N</ToPOBoxFlag>
				#    * *:to_phone* (String) — No format checking is done on international phone numbers. Required when <ToPOBoxFlag>Y</ToPOBoxFlag> For example: <ToPhone>011 52 (322) 222-0069</ToPhone>
				#    * *:to_fax* (String) — No format checking is done on international fax numbers. For example: <ToFax>011 52 (322) 222-0074</ToFax>
				#    * *:to_email* (String) — Complete valid e-mail address is Required if tag is used. For example: <ToEmail>cpapple@email.com</ToEmail>
				#    * *:importers_reference_number* (String) — Enter a value for the "Recipient's Reference" that will appear on the label. The text entered is any reference number that the recipient wishes to use. For example: <ImportersReferenceNumber>Order 23432</ImportersReferenceNumber>
				#    * *:non_delivery_option* (String) — In case package is undeliverable, enter one of the following: · "RETURN" for package to be returned to <FromAddress> above. · "REDIRECT" to return package to address specified below in <AltReturn…> tags. · "ABANDON" to dispose of undeliverable package. For example: <NonDeliveryOption>RETURN</NonDeliveryOption>
				#    * *:redirect_name* (String) — Enter a value for the recipient's name.
				#    * *:redirect_email* (String) — Complete valid e-mail address is Required if tag is used.
				#    * *:redirect_sms* (String) — This value must be a syntactically-valid SMS number.
				#    * *:redirect_address* (String) — Enter the redirect address. This is a free form field.
				#    * *:redirect_city* (String) — Redirect city. For example: <RedirectCity>Anytown</RedirectCity>
				#    * *:redirect_state* (String) — Redirect state. For example: <RedirectState>MN</RedirectState>
				#    * *:redirect_zip_code* (String) — Redirect ZIP code. For example: <RedirectZipCode>12345</RedirectZipCode>
				#    * *:redirect_zip4* (String) — Redirect ZIP+4 extension. For example: <ToZip5>01234</ToZip5>
				#    * *:container* (String) — For example: <Container>MDFLATRATEBOX</Container> Otherwise, use to specify special containers or container attributes that may affect postage.
				#    * *:shipping_contents* (required, Hash) — 
				#      * *:item_detail* (Hash) — Groups individual item details
				#        * *:description* (required, String) — Description of the item. For example: <Description>Policy guidelines document</Description>
				#        * *:quantity* (required, Integer) — Quantity of the item. Integer value Required. For example: <Quantity>1</Quantity>
				#        * *:value* (required, Decimal) — The data entered with this tag provides the value of the set of items. For example: If the item is 2 boxes of 50 pens and the value of each box is $10.00, "20.00" (2 boxes x $10.00) should be entered. If the value of each pen is .25 then "25.00" (100 pens x .25) should be entered. For example: <Value>55.00</Value>
				#        * *:net_pounds* (required, Integer) — Provide the pounds component of the weight of the individual item listed with <Description>. For example: <NetPounds>1</NetPounds>
				#        * *:net_ounces* (required, Decimal) — Provide the ounces component of the weight of the individual item listed with <Description>. For example: <NetOunces>5</NetOunces>
				#        * *:hs_tariff_number* (required, String) — For commercial items only. If known, the HS tariff number must be based on the Harmonized Commodity Description and Coding System developed by the World Customs Organization. For example: <HSTariffNumber>490110</HSTariffNumber>
				#        * *:country_of_origin* (required, String) — For commercial items only. Country of Origin means the country where the goods originated, e.g. were produced, manufactured, or assembled. It is recommended you supply this information and attach an invoice to the outside to accelerate customs clearance in processing the items. The country name entered must match an entry from the USPS-approved International Index of Countries and Localities or be "United States". (http://pe.usps.gov/text/Imm/Immctry.htm - click on the link for "International Country Listings.") Using a country name not on the list will result in a request failure. For example: <CountryOfOrigin>United States</CountryOfOrigin>
				#        * *:insured* (String) — Restricted use: authorized users may indicate with a value of Y that the item is insured for purposes of obtaining a barcode number from the insured range. All other users must specify N or omit.
				#        * *:insured_number* (String) — For backward-compatibility; not validated.
				#        * *:insured_amount* (Decimal) — Use this tag for entering an insurance amount, if known. For example: <InsuredAmount>100.00</InsuredAmount>
				#        * *:postage* (Decimal) — Use this tag for entering a postage amount, if known. If the tag is present, but the value is blank, the postage will be automatically calculated. For example: <Postage></Postage>
				#        * *:gross_pounds* (required, Integer) — Gross pounds and ounces together represent the total package weight, including packing material. For example, a package weighing 3 lbs 8 ounces would have "3" entered here and "8" entered with the <GrossOunces> tag. WebTools will check for maximum shipping weight of 70 pounds. Allowable weight may change based on the service used to send package and the destination country. For example: <GrossPounds>4</GrossPounds>
				#        * *:gross_ounces* (required, Integer) — Enter the ounces component of the total package weight with this tag. For example: <GrossOunces>0</GrossOunces>
				#        * *:content_type* (required, String) — Specifies the content of the package or envelope. For example: <ContentType>DOCUMENTS</ContentType> Note : “NonnegotiableDocument” and “Documents” both signify mailable non-negotiable documents and are insured automatically for up to $100. Additional Insurance cannot be purchased. Any non-document <ContentType> values are insured automatically for up to $200. Additional Insurance can be purchased for values $200 and greater.
				#        * *:content_type_other* (String) — Required when <ContentType>OTHER<ContentType>. Maximum length enforced via truncation
				#        * *:agreement* (required, String) — Requires a value of Y to print <FromFirstName/> and <FromLastName/> in Signature Box along with Current Date (Central Time USA). Any other value returns an error.
				#        * *:comments* (String) — Enter any comments. For example: <Comments></Comments>
				#        * *:license_number* (String) — Enter license number, if known or if included in package. For example: <LicenseNumber>LIC-24356879</LicenseNumber>
				#        * *:certificate_number* (String) — Enter certificate number, if known or if included in package. For example: <CertificateNumber>CERT-97865342</CertificateNumber>
				#        * *:invoice_number* (String) — Enter invoice number, if known or if included in package. For example: <InvoiceNumber>INV-040903</InvoiceNumber>
				#        * *:image_type* (required, String) — Label Image Type. Note: All <ImageType> values are ignored when <ImageParameter> = “4X6ZPL203DPI” or “4X6ZPL300DPI”. For example: <ImageType>PDF</ImageType>
				#        * *:image_layout* (String) — Controls how the multipage form is returned in the response tags. "ONEPERFILE" returns one page per response tag while “ALLINONEFILE” returns all pages in a single response tag. The “TRIM” options conserve page space if possible by combining two form parts on a single page. For example: <ImageLayout>ONEPERFILE<ImageLayout>
				#        * *:customer_ref_no* (String) — Written to Postal Manifest Detail record. For example: <CustomerRefNo>Ref 369246</CustomerRefNo>
				#        * *:customer_ref_no2* (String) — Written to Postal Manifest Detail record. For example: <CustomerRefNo2>ACT369246</CustomerRefNo2>
				#        * *:po_zip_code* (String) — ZIP Code of Post Office or collection box where item is mailed. May be different than FromZip5. This tag will take precedence over FromZip5 when provided. For example: <POZipCode>00962</POZipCode>
				#        * *:label_date* (String) — Date the mail will enter the mail stream. No more than 3 days in the future. Default is day of request. For example: <LabelDate>09/28/2010</LabelDate>
				#        * *:hold_for_manifest* (String) — Restricted use. Holds manifest record for possible inclusion in SCAN request.
				#        * *:eelpfc* (String) — Exemption and Exclusion Legend or PFC Code. Use in conjunction with Revision tag with value of 1 to indicate and trigger new functionality. Please refer to the International Mail Manual for further information - http://pe.usps.gov/text/imm/immc5_007.htm. To activate check boxes use ”30.37a” or “30.37h”. For example: <EELPFC>30.37a</EELPFC>
				#        * *:price_options* (String) — Price option for package.
				#        * *:length* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:width* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:height* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:girth* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:extra_services* (Hash) — Groups extra services elements
				#          * *:extra_service* (Extra Service Name) — [{"Extra Service Name"=>"e-USPS Return Receipt", "Service ID"=>"105"}]
				#          * *:action_code* (String) — Used to specify the action code. Value is included in the Shipping Partner Event file for customers who have chose to have a Shipping Partner Event file submitted to USPS on their behalf. M0 – Mailer Owner S0 – Service Provider For example: <ActionCode>M0</ActionCode>
				#          * *:opt_out_of_spe* (Boolean) — Allows a customer to opt out of SPE file creation. “false” WILL create a SPE file. Note: This request tag is case sensitive.
				#          * *:permit_number* (String) — Number associated with a mailing permit. The permit is permission to use a certain postage payment method for bulk and commercial mailings
				#          * *:account_zip_code* (String) — ZIP of Account Post Office where mailed if different from <FromZip5/>. Written to Postal Manifest Detail record. Must be valid ZIP Code. For example: <AccountZipCode>00962</AccountZipCode>
				#          * *:importers_reference_type* (String) — Tax code / VAT no. / Importer Code.
				#          * *:importers_telephone_number* (String) — For Importer: 10 digits (including area code), with no punctuation. Use format: 2125551234 For example: <ImportersTelephoneNumber>5555555555</ImportersTelephoneNumber>
				#          * *:importers_fax_number* (String) — For Importer: No format checking is done on international fax numbers. For example: <ImportersFaxNumber>011 52 (322) 222-0074</ImportersFaxNumber>
				#          * *:importers_email* (String) — For Importer: Complete valid e-mail address is Required if tag is used. For example: <ImportersEmail>cpapple@email.com</ImportersEmaill>
				#          * *:machinable* (Boolean) — Indicates whether or not the item is machinable. A surcharge is applied to a First-Class Mail International item if it has one or more non-machinable characteristics. See International Mail Manual (IMM) Section 241 for more information. For example: <Machinable>false</Machinable>
				#          * *:destination_rate_indicator* (required, String) — Required for destination entry packages. · I = International Service Center (ISC) · N = None
				#          * *:mid* (String) — Mailer ID (MID), Represents Mail Owner MID. Located in position #13 in the Detail 1 record of the Shipping Services File v2.0. For example: <MID>847654321</ MID>
				#          * *:logistics_manager_mid* (String) — The MID of the company that manages the mailing. Located in position #12 in the Detail 1 record of the Shipping Services File v2.0. Note: If LogisticsManagerMID is populated, either CRID or MID must also be populated. For example: <LogisticsManagerMID>489001< / LogisticsManagerMID>
				#          * *:crid* (String) — Customer Registration ID, Represents Mail Owner CRID. Located in position #20 in the Detail 1 record of the Shipping Services File v2.0. For example: <CRID>544762</ CRID>
				#          * *:vendor_code* (String) — Code from vendor software to identify the developer of the shipping system. Located in position #15 in the Detail 1 record of the Shipping Services File v2.0. For example: <VendorCode>1234<VendorCode>
				#          * *:vendor_product_version_number* (String) — Shipping software’s product version number. Located in position #16 in the Detail 1 record of the Shipping Services File v2.0. For example: <VendorProductVersionNumber>5.02.1B</ VendorProductVersionNumber>
				#          * *:e_postage_mailer_reporting* (String) — Verifies Sender Information, sender fields must match From information when <ePostageMailerReporting>=1 · 1 - (ePostage sender information in SSF) · 2 - (ePostage sender information through DES) · 3 - (ePostage sender information using child MID)
				#          * *:sender_first_name* (String) — First Name of Sender. For example: <SenderFirstName>Adam</SenderFirstName> Required when <ePostageMailerReporting>=1
				#          * *:sender_last_name* (String) — Last Name of Sender. For example: <SenderLastName>Smith</SenderLastName> Required when <ePostageMailerReporting>=1
				#          * *:sender_business_name* (String) — Values for Sender Business Name must be sent. For example: <SenderBusinessName>USPS</SenderBusinessName>
				#          * *:sender_address1* (String) — Sender address line. Use this tag for full address (Address1 and Address2) Must match Address1 and Address2 or will produce an error. For example: <SenderAddress1>STE 150 10 Elm Street </SenderAddress1> Required when <ePostageMailerReporting>=1
				#          * *:sender_city* (String) — Sender city. For example: <SenderCity>BETHESDA</SenderCity>Required when <ePostageMailerReporting>=1
				#          * *:sender_state* (String) — Sender state. For example: <SenderState>MD</ SenderState> Required when <ePostageMailerReporting>=1
				#          * *:sender_zip5* (String) — Sender ZIP code. For example: <SenderZip5>20212</SenderZip5> Required when <ePostageMailerReporting>=1
				#          * *:sender_phone* (String) — Sender Phone #. 10 digits Required (including area code), with no punctuation. For example: <SenderPhone>2125551234</ SenderPhone> Required when <ePostageMailerReporting>=1
				#          * *:sender_email* (String) — E-mail Address of Sender. Valid e-mail addresses must be used. For example: <SenderEMail>cpapple@email.com</ SenderEMail> Required when <ePostageMailerReporting>=1
				#          * *:chargeback_code* (String) — Used in Shipping Services File v2.0 for G-10 labels. Contact your Technical Integration Specialist for details.
def e_vs_priority_mail_intl(options = {})
					throw ArgumentError.new('Required arguments :e_vs_priority_mail_int_request missing') if options[:e_vs_priority_mail_int_request].nil?
					throw ArgumentError.new('Required arguments :e_vs_priority_mail_int_request, :revision missing') if options[:e_vs_priority_mail_int_request][:revision].nil?

					request = build_request(:e_vs_priority_mail_intl, options)
					get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'eVSPriorityMailIntl',
						XML: request,
					})
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_e_vs_priority_mail_intl_request(xml, options = {})
					tag_unless_blank(xml, 'Option', options[:e_vs_priority_mail_int_request][:option])
					xml.tag!('Revision', options[:e_vs_priority_mail_int_request][:revision])
					xml.tag!('ImageParameters') do
						tag_unless_blank(xml, 'ImageParameter', options[:e_vs_priority_mail_int_request][:image_parameters][:image_parameter])
						xml.tag!('FromFirstName', options[:e_vs_priority_mail_int_request][:image_parameters][:from_first_name])
						tag_unless_blank(xml, 'FromMiddleInitial', options[:e_vs_priority_mail_int_request][:image_parameters][:from_middle_initial])
						xml.tag!('FromLastName', options[:e_vs_priority_mail_int_request][:image_parameters][:from_last_name])
						xml.tag!('FromFirm', options[:e_vs_priority_mail_int_request][:image_parameters][:from_firm])
						tag_unless_blank(xml, 'FromAddress1', options[:e_vs_priority_mail_int_request][:image_parameters][:from_address1])
						xml.tag!('FromAddress2', options[:e_vs_priority_mail_int_request][:image_parameters][:from_address2])
						tag_unless_blank(xml, 'FromUrbanization', options[:e_vs_priority_mail_int_request][:image_parameters][:from_urbanization])
						xml.tag!('FromCity', options[:e_vs_priority_mail_int_request][:image_parameters][:from_city])
						xml.tag!('FromState', options[:e_vs_priority_mail_int_request][:image_parameters][:from_state])
						xml.tag!('FromZip5', options[:e_vs_priority_mail_int_request][:image_parameters][:from_zip5])
						tag_unless_blank(xml, 'FromZip4', options[:e_vs_priority_mail_int_request][:image_parameters][:from_zip4])
						xml.tag!('FromPhone', options[:e_vs_priority_mail_int_request][:image_parameters][:from_phone])
						tag_unless_blank(xml, 'FromCustomsReference', options[:e_vs_priority_mail_int_request][:image_parameters][:from_customs_reference])
						tag_unless_blank(xml, 'ToName', options[:e_vs_priority_mail_int_request][:image_parameters][:to_name])
						xml.tag!('ToFirstName', options[:e_vs_priority_mail_int_request][:image_parameters][:to_first_name])
						xml.tag!('ToLastName', options[:e_vs_priority_mail_int_request][:image_parameters][:to_last_name])
						xml.tag!('ToFirm', options[:e_vs_priority_mail_int_request][:image_parameters][:to_firm])
						tag_unless_blank(xml, 'ToAddress1', options[:e_vs_priority_mail_int_request][:image_parameters][:to_address1])
						xml.tag!('ToAddress2', options[:e_vs_priority_mail_int_request][:image_parameters][:to_address2])
						tag_unless_blank(xml, 'ToAddress3', options[:e_vs_priority_mail_int_request][:image_parameters][:to_address3])
						xml.tag!('ToCity', options[:e_vs_priority_mail_int_request][:image_parameters][:to_city])
						tag_unless_blank(xml, 'ToProvince', options[:e_vs_priority_mail_int_request][:image_parameters][:to_province])
						xml.tag!('ToCountry', options[:e_vs_priority_mail_int_request][:image_parameters][:to_country])
						xml.tag!('ToPostalCode', options[:e_vs_priority_mail_int_request][:image_parameters][:to_postal_code])
						xml.tag!('ToPOBoxFlag', options[:e_vs_priority_mail_int_request][:image_parameters][:to_po_box_flag])
						tag_unless_blank(xml, 'ToPhone', options[:e_vs_priority_mail_int_request][:image_parameters][:to_phone])
						tag_unless_blank(xml, 'ToFax', options[:e_vs_priority_mail_int_request][:image_parameters][:to_fax])
						tag_unless_blank(xml, 'ToEmail', options[:e_vs_priority_mail_int_request][:image_parameters][:to_email])
						tag_unless_blank(xml, 'ImportersReferenceNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:importers_reference_number])
						tag_unless_blank(xml, 'NonDeliveryOption', options[:e_vs_priority_mail_int_request][:image_parameters][:non_delivery_option])
						tag_unless_blank(xml, 'RedirectName', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_name])
						tag_unless_blank(xml, 'RedirectEmail', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_email])
						tag_unless_blank(xml, 'RedirectSMS', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_sms])
						tag_unless_blank(xml, 'RedirectAddress', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_address])
						tag_unless_blank(xml, 'RedirectCity', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_city])
						tag_unless_blank(xml, 'RedirectState', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_state])
						tag_unless_blank(xml, 'RedirectZipCode', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_zip_code])
						tag_unless_blank(xml, 'RedirectZip4', options[:e_vs_priority_mail_int_request][:image_parameters][:redirect_zip4])
						tag_unless_blank(xml, 'Container', options[:e_vs_priority_mail_int_request][:image_parameters][:container])
						xml.tag!('ShippingContents') do
							xml.tag!('ItemDetail') do
								xml.tag!('Description', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:description])
								xml.tag!('Quantity', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:quantity])
								xml.tag!('Value', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:value])
								xml.tag!('NetPounds', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:net_pounds])
								xml.tag!('NetOunces', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:net_ounces])
								xml.tag!('HSTariffNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:hs_tariff_number])
								xml.tag!('CountryOfOrigin', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:country_of_origin])
								tag_unless_blank(xml, 'Insured', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:insured])
								tag_unless_blank(xml, 'InsuredNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:insured_number])
								tag_unless_blank(xml, 'InsuredAmount', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:insured_amount])
								tag_unless_blank(xml, 'Postage', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:postage])
								xml.tag!('GrossPounds', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:gross_pounds])
								xml.tag!('GrossOunces', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:gross_ounces])
								xml.tag!('ContentType', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:content_type])
								tag_unless_blank(xml, 'ContentTypeOther', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:content_type_other])
								xml.tag!('Agreement', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:agreement])
								tag_unless_blank(xml, 'Comments', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:comments])
								tag_unless_blank(xml, 'LicenseNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:license_number])
								tag_unless_blank(xml, 'CertificateNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:certificate_number])
								tag_unless_blank(xml, 'InvoiceNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:invoice_number])
								xml.tag!('ImageType', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:image_type])
								tag_unless_blank(xml, 'ImageLayout', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:image_layout])
								tag_unless_blank(xml, 'CustomerRefNo', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:customer_ref_no])
								tag_unless_blank(xml, 'CustomerRefNo2', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:customer_ref_no2])
								tag_unless_blank(xml, 'POZipCode', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:po_zip_code])
								tag_unless_blank(xml, 'LabelDate', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:label_date])
								tag_unless_blank(xml, 'HoldForManifest', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:hold_for_manifest])
								tag_unless_blank(xml, 'EELPFC', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:eelpfc])
								tag_unless_blank(xml, 'PriceOptions', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:price_options])
								tag_unless_blank(xml, 'Length', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:length])
								tag_unless_blank(xml, 'Width', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:width])
								tag_unless_blank(xml, 'Height', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:height])
								tag_unless_blank(xml, 'Girth', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:girth])
								xml.tag!('ExtraServices') do
									tag_unless_blank(xml, 'ExtraService', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:extra_service])
									tag_unless_blank(xml, 'ActionCode', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:action_code])
									tag_unless_blank(xml, 'OptOutOfSPE', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:opt_out_of_spe])
									tag_unless_blank(xml, 'PermitNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:permit_number])
									tag_unless_blank(xml, 'AccountZipCode', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:account_zip_code])
									tag_unless_blank(xml, 'ImportersReferenceType', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:importers_reference_type])
									tag_unless_blank(xml, 'ImportersTelephoneNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:importers_telephone_number])
									tag_unless_blank(xml, 'ImportersFaxNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:importers_fax_number])
									tag_unless_blank(xml, 'ImportersEmail', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:importers_email])
									tag_unless_blank(xml, 'Machinable', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:machinable])
									xml.tag!('DestinationRateIndicator', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:destination_rate_indicator])
									tag_unless_blank(xml, 'MID', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:mid])
									tag_unless_blank(xml, 'LogisticsManagerMID', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:logistics_manager_mid])
									tag_unless_blank(xml, 'CRID', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:crid])
									tag_unless_blank(xml, 'VendorCode', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:vendor_code])
									tag_unless_blank(xml, 'VendorProductVersionNumber', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:vendor_product_version_number])
									tag_unless_blank(xml, 'ePostageMailerReporting', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:e_postage_mailer_reporting])
									tag_unless_blank(xml, 'SenderFirstName', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_first_name])
									tag_unless_blank(xml, 'SenderLastName', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_last_name])
									tag_unless_blank(xml, 'SenderBusinessName', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_business_name])
									tag_unless_blank(xml, 'SenderAddress1', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_address1])
									tag_unless_blank(xml, 'SenderCity', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_city])
									tag_unless_blank(xml, 'SenderState', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_state])
									tag_unless_blank(xml, 'SenderZip5', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_zip5])
									tag_unless_blank(xml, 'SenderPhone', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_phone])
									tag_unless_blank(xml, 'SenderEmail', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:sender_email])
									tag_unless_blank(xml, 'ChargebackCode', options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services][:chargeback_code])
								end if options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail][:extra_services].present?
							end if options[:e_vs_priority_mail_int_request][:image_parameters][:shipping_contents][:item_detail].present?
						end 
					end if options[:e_vs_priority_mail_int_request][:image_parameters].present?
					xml.target!
				end

			end
		end
	end
end
