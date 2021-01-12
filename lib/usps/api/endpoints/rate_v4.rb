# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module RateV4
				# The RateV4 API lets customers calculate the
				# rate for domestic packages and envelopes given the weight and dimensions of the
				# item. The RateV4 API limits the data requested to twenty-five (25) packages per
				# transaction.
				# @param [Hash] options
				# @option options [required, Hash] rate_v4_request API=RateV4 This API returns the current USPS postage corresponding to the parameters given.
				#  * *:revision* (String) — Set this value to “2” to return all currently documented response fields. For example: <Revision>2</Revsion>
				#  * *:package* (Hash) — See the RateV4 Service Request chart for valid combinations of the following tags.
				#    * *:service* (required, String) — Web Tools validates the entry to one of the service types. For example: <Service>PRIORITY MAIL EXPRESS</Service> Please see Appendix A for detailed business rules regarding combinations of Service, Container, dimensions and other request values. Note: Mailable matter not required to be mailed as First-Class Mail is permitted with Retail Ground to Zones 5-9. Zones 1-4 items are limited to mailable hazardous materials, live animals, and other “surface-only” items. Retail Ground can only be used for Zones 5-9 unless the shipment is oversized or contains classes of materials. (e.g. certain HAZMAT) For more details, see: http://pe.usps.com/businessmail101/classes/packageServices.htm. Note: The use of <Service> = “BPM” is restricted. If access to this service is needed, please reach out to the following email address: webtools@usps.gov.
				#    * *:first_class_mail_type* (String) — Required when: RateV4Request[Service='FIRST CLASS'] or RateV4Request[Service='FIRST CLASS COMMERCIAL’], or RateV4Request[Service='FIRST CLASS HFP COMMERCIAL’] Example: <FirstClassMailType>LETTER</FirstClassMailType> Note: The <FirstClassMailType> tag is returned only if the <ServiceType> submitted is “First Class”. If any other <ServiceType> is returned (Including “First Class Commercial”) the <Container> tag is used. Note: Flats are also known as Large Envelopes
				#    * *:zip_origination* (required, String) — ZIP code must be valid. For example: <ZipOrigination>20770</ZipOrigination>
				#    * *:zip_destination* (required, String) — ZIP code must be valid. For example: <ZipDestination>54324</ZipDestination>
				#    * *:pounds* (required, String) — Value must be numeric. Package weight cannot exceed 70 pounds. For example: <Pounds>2</Pounds> <Pounds>2.12345678</Pounds>
				#    * *:ounces* (required, String) — Value must be numeric. Package weight cannot exceed 70 pounds (1120 ounces). For example: <Ounces>0</Ounces> <Ounces>0.12345678</Ounces>
				#    * *:container* (required, String) — Use to specify container attributes that may affect postage; otherwise, leave blank. Note: The <FirstClassMailType> tag is used instead of the <Container> tag only if the <ServiceType> submitted is “First Class”. Note: “Cubic Soft Pack” and “Cubic Parcels” are only valid containers for service “Priority Mail Cubic”. Dimensions Length and Height are required when requesting Cubic Soft Pack. Dimensions Length, Height, and Width are required when requesting Cubic Parcels. Note: “VARIABLE” is used to denote that a customer is using packaging other than a USPS-produced Flat Rate Box/Envelope or Regional Rate Box”.
				#    * *:size* (String) — Note: This tag has been deprecated. <Size> tag and any values within the <Size> tag will not result in an error response and will not impact rates that are returned.
				#    * *:width* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. For more details on dimensional weight pricing, please reference the Domestic Mail Manual Section 123.1.4 for Retail Mail and Section 223.1.6 for Commercial Mail. https://pe.usps.com/text/dmm300/index.htm
				#    * *:length* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. For more details on dimensional weight pricing, please reference the Domestic Mail Manual Section 123.1.4 for Retail Mail and Section 223.1.6 for Commercial Mail. https://pe.usps.com/text/dmm300/index.htm
				#    * *:height* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. For more details on dimensional weight pricing, please reference the Domestic Mail Manual Section 123.1.4 for Retail Mail and Section 223.1.6 for Commercial Mail. https://pe.usps.com/text/dmm300/index.htm
				#    * *:girth* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. For more details on dimensional weight pricing, please reference the Domestic Mail Manual Section 123.1.4 for Retail Mail and Section 223.1.6 for Commercial Mail. https://pe.usps.com/text/dmm300/index.htm
				#    * *:value* (String) — Available when RateV4Request [Revision='2']. Package value. Used to determine availability and cost of extra services. For example: <Value>150.00</Value>
				#    * *:amount_to_collect* (String) — Available when RateV4Request [Revision='2']. Collect on delivery amount. Used to determine availability and cost of extra services. For example: <AmountToCollect>150.00</AmountToCollect>
				#    * *:special_services* (Hash) — Available when RateV4Request [Revision='2']. Groups the SpecialServices elements. Special Services prices and availability will not be returned when Service = “ALL”, “ONLINE”, or “PLUS”
				#      * *:special_service* (Special Service Name) — [{"Special Service Name"=>"Insurance", "ServiceID"=>"100"}, {"Special Service Name"=>"Insurance – Priority Mail Express", "ServiceID"=>"101"}, {"Special Service Name"=>"Return Receipt", "ServiceID"=>"102"}, {"Special Service Name"=>"Collect on Delivery", "ServiceID"=>"103"}, {"Special Service Name"=>"Certificate of Mailing (Form 3665)", "ServiceID"=>"104"}, {"Special Service Name"=>"Certified Mail", "ServiceID"=>"105"}, {"Special Service Name"=>"USPS Tracking", "ServiceID"=>"106"}, {"Special Service Name"=>"Signature Confirmation", "ServiceID"=>"108"}, {"Special Service Name"=>"Registered Mail", "ServiceID"=>"109"}, {"Special Service Name"=>"Return Receipt Electronic", "ServiceID"=>"110"}, {"Special Service Name"=>"Registered mail COD collection Charge", "ServiceID"=>"112"}, {"Special Service Name"=>"Return Receipt – Priority Mail Express", "ServiceID"=>"118"}, {"Special Service Name"=>"Adult Signature Required", "ServiceID"=>"119"}, {"Special Service Name"=>"Adult Signature Restricted Delivery", "ServiceID"=>"120"}, {"Special Service Name"=>"Insurance – Priority Mail", "ServiceID"=>"125"}, {"Special Service Name"=>"USPS Tracking Electronic", "ServiceID"=>"155"}, {"Special Service Name"=>"Signature Confirmation Electronic", "ServiceID"=>"156"}, {"Special Service Name"=>"Certificate of Mailing (Form 3817)", "ServiceID"=>"160"}, {"Special Service Name"=>"Priority Mail Express 1030 AM Delivery", "ServiceID"=>"161"}, {"Special Service Name"=>"Certified Mail Restricted Delivery", "ServiceID"=>"170"}, {"Special Service Name"=>"Certified Mail Adult Signature Required", "ServiceID"=>"171"}, {"Special Service Name"=>"Certified Mail Adult Signature Restricted Delivery", "ServiceID"=>"172"}, {"Special Service Name"=>"Signature Confirm. Restrict. Delivery", "ServiceID"=>"173"}, {"Special Service Name"=>"Signature Confirmation Electronic Restricted Delivery", "ServiceID"=>"174"}, {"Special Service Name"=>"Collect on Delivery Restricted Delivery", "ServiceID"=>"175"}, {"Special Service Name"=>"Registered Mail Restricted Delivery", "ServiceID"=>"176"}, {"Special Service Name"=>"Insurance Restricted Delivery", "ServiceID"=>"177"}, {"Special Service Name"=>"Insurance Restrict. Delivery – Priority Mail", "ServiceID"=>"179"}, {"Special Service Name"=>"Insurance Restrict. Delivery – Priority Mail Express", "ServiceID"=>"178"}, {"Special Service Name"=>"Insurance Restrict. Delivery (Bulk Only)", "ServiceID"=>"180"}, {"Special Service Name"=>"Scan Retention", "ServiceID"=>"181"}, {"Special Service Name"=>"Scan + Signature Retention", "ServiceID"=>"182"}, {"Special Service Name"=>"Special Handling - Fragile", "ServiceID"=>"190"}]
				#      * *:content* (Group) — Available when RateV4Request[Revision='2']. Groups the ContentType and ContentDescription elements.
				#      * *:content_type* (String) — Available when RateV4Request [Revision=’2’]. Defines the type of content of the package.
				#      * *:content_description* (String) — Available when RateV4Request[Revision=’2’]. Describes the content of the package. Optional but required for ContentType ‘LIVES’.
				#      * *:ground_only* (Boolean) — Available when RateV4Request [Revision=’2’]. RateV4Request [Service=’ Retail Ground’] Use “true” when shipment contains mailable hazardous materials, live animals and other “surface-only” items.
				#      * *:sort_by* (String) — Available when RateV4Request [Revision='2']. Returns all mailing services available based on item shape. When specified, value in <Container> is ignored. Available when: RateV4Request[Service='ALL'] RateV4Request[Service='ONLINE'] For example: <SortBy>PACKAGE</SortBy>
				#      * *:machinable* (Boolean) — RateV4Request/Machinable is required when: RateV4Request[Service='FIRST CLASS' and (FirstClassMailType='LETTER' or FirstClassMailType='FLAT')] RateV4Request[Service='Retail Ground’] RateV4Request[Service='ALL'] RateV4Request[Service='ONLINE'] If false, First Class Mail Letters and Flats will not be returned. For example: <Machinable>true</Machinable>
				#      * *:return_locations* (Boolean) — Include Dropoff Locations in Response if available. Requires "ShipDate" tag.
				#      * *:return_service_info* (Boolean) — If a value of “True” is indicated in the request then the response will include the <ServiceInformation> tag containing mail service specific information
				#      * *:drop_off_time* (String) — Time Package Will Be Mailed. Enter drop off time in format: HH:mm, such as 13:45. Inclusion of Drop Off Time will result increased accuracy of <CommitmentName> and <CommitmentDate> in the response for Priority Mail and Priority Mail Express variants. For example: <DropOffTime>13:45</DropOffTime>
				#      * *:ship_date* (String) — Date Package Will Be Mailed. Ship date may be today plus 0 to 3 days in advance. Enter the date in format: yyyy-mm-dd, such as 2013-07-28. Inclusion of Ship Date will result in <CommitmentName> and <CommitmentDate> in the response for Priority Mail and Priority Mail Express variants For example: <ShipDate Option="HFP">2013-07-28</ShipDate>
				#      * *:option* (String) — The value of this attribute specifies how the RateV4Response will structure the Priority Express Mail Commitment data elements.
				#      * *:return_dimensional_weight* (Boolean) — This tag must be explicitly set to “true” for dimensional weight to be returned in the xml response.
				#      * *:tracking_retention_period* (String) — Used to determine period of Retention for tracking data
def rate_v4(options = {})
					throw ArgumentError.new('Required arguments :rate_v4_request missing') if options[:rate_v4_request].nil?

					request = build_request(:rate_v4, options)
					get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'RateV4',
						XML: request,
					})
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_rate_v4_request(xml, options = {})
					tag_unless_blank(xml, 'Revision', options[:rate_v4_request][:revision])
					xml.tag!('Package') do
						xml.tag!('Service', options[:rate_v4_request][:package][:service])
						tag_unless_blank(xml, 'FirstClassMailType', options[:rate_v4_request][:package][:first_class_mail_type])
						xml.tag!('ZipOrigination', options[:rate_v4_request][:package][:zip_origination])
						xml.tag!('ZipDestination', options[:rate_v4_request][:package][:zip_destination])
						xml.tag!('Pounds', options[:rate_v4_request][:package][:pounds])
						xml.tag!('Ounces', options[:rate_v4_request][:package][:ounces])
						xml.tag!('Container', options[:rate_v4_request][:package][:container])
						tag_unless_blank(xml, 'Size', options[:rate_v4_request][:package][:size])
						tag_unless_blank(xml, 'Width', options[:rate_v4_request][:package][:width])
						tag_unless_blank(xml, 'Length', options[:rate_v4_request][:package][:length])
						tag_unless_blank(xml, 'Height', options[:rate_v4_request][:package][:height])
						tag_unless_blank(xml, 'Girth', options[:rate_v4_request][:package][:girth])
						tag_unless_blank(xml, 'Value', options[:rate_v4_request][:package][:value])
						tag_unless_blank(xml, 'AmountToCollect', options[:rate_v4_request][:package][:amount_to_collect])
						xml.tag!('SpecialServices') do
							tag_unless_blank(xml, 'SpecialService', options[:rate_v4_request][:package][:special_services][:special_service])
							tag_unless_blank(xml, 'Content', options[:rate_v4_request][:package][:special_services][:content])
							tag_unless_blank(xml, 'ContentType', options[:rate_v4_request][:package][:special_services][:content_type])
							tag_unless_blank(xml, 'ContentDescription', options[:rate_v4_request][:package][:special_services][:content_description])
							tag_unless_blank(xml, 'GroundOnly', options[:rate_v4_request][:package][:special_services][:ground_only])
							tag_unless_blank(xml, 'SortBy', options[:rate_v4_request][:package][:special_services][:sort_by])
							tag_unless_blank(xml, 'Machinable', options[:rate_v4_request][:package][:special_services][:machinable])
							tag_unless_blank(xml, 'ReturnLocations', options[:rate_v4_request][:package][:special_services][:return_locations])
							tag_unless_blank(xml, 'ReturnServiceInfo', options[:rate_v4_request][:package][:special_services][:return_service_info])
							tag_unless_blank(xml, 'DropOffTime', options[:rate_v4_request][:package][:special_services][:drop_off_time])
							tag_unless_blank(xml, 'ShipDate', options[:rate_v4_request][:package][:special_services][:ship_date])
							tag_unless_blank(xml, 'Option', options[:rate_v4_request][:package][:special_services][:option])
							tag_unless_blank(xml, 'ReturnDimensionalWeight', options[:rate_v4_request][:package][:special_services][:return_dimensional_weight])
							tag_unless_blank(xml, 'TrackingRetentionPeriod', options[:rate_v4_request][:package][:special_services][:tracking_retention_period])
						end if options[:rate_v4_request][:package][:special_services].present?
					end if options[:rate_v4_request][:package].present?
					xml.target!
				end

			end
		end
	end
end
