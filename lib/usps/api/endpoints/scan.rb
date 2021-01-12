# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module SCAN
				# The SCAN API allows integrators to consolidate
				# multiple domestic and international labels and custom forms through one
				# Electronic File Number (EFN) and physical SCAN Form (PS Form 5630 or 3152). The
				# API operates as follows:
				# @param [Hash] options
				# @option options [required, Hash] scan_request API=SCAN
				#  * *:option* (Hash) — Groups form information
				#    * *:form* (String) — Designates desired label option selected by customer. Enter one of the valid entries: ‘3152’ generates PS Form 3152. ‘5630’ generates PS Form 5630. For example: <Form>3152</Form>
				#    * *:from_name* (required, String) — Name of sender. Example: <FromName>Joe Smith</FromName>
				#    * *:from_firm* (String) — Company name. Example: <FromFirm>ABC Corp.</FromFirm>
				#    * *:from_address1* (String) — From address line 1. Denote apartment or suite number. Example: <FromAddress1>Apt. 3C</FromAddress1>
				#    * *:from_address2* (required, String) — From address line 2. Denote street/structure number. Example: <FromAddress2>475 L’Enfant Plaza SW</FromAddress2>
				#    * *:from_city* (required, String) — From city. Example: <FromCity>Greenbelt</FromCity>
				#    * *:from_state* (required, String) — From state. Example: <FromState>MD</FromState>
				#    * *:from_zip5* (required, String) — From ZIP Code. Must be a valid ZIP5 Code. Example: <FromZip5>20770</FromZip5>
				#    * *:from_zip4* (String) — From ZIP Code+4. Example: <FromZip4>1234</FromZip4>
				#    * *:shipment* (Hash) — Groups shipment information
				#      * *:package_detail* (Hash) — Groups package detail information
				#        * *:pkg_barcode* (required, String) — Individual package barcodes. Example: <PkgBarcode>42020260910180521390702413570 </PkgBarcode> Note: The SCAN API can contain no more than 1,000 package barcodes in a single request. If exceeded, 'Total PackageDetail items exceeded 1000.’ error will return”
				#        * *:special_service* (Hash) — FOR FUTURE USE. Groups extra service information.
				#          * *:spc_serv_code* (required, String) — FOR FUTURE USE. If present, must be <SpcServFee>. From Extra Service Code table. Example: <SpcServCode>01</SpcServCode>
				#          * *:spc_serv_fee* (required, String) — FOR FUTURE USE. Fee for Extra Service. Example: <SpcServFee>00275</SpcServFee>
				#          * *:e_mail* (String) — FOR FUTURE USE. Email address of acceptance scan event recipient. Example: <EMail>john.smith@abc.com</EMail>
				#          * *:close_manifest* (Boolean) — Used to include all labels for the submitted UserID. There are two values: “ALL” will close all labels for the submitted USERID. “SHIPDATE” will close all the labels for the submitted USERID that have the <Shipdate> tag matching the value in the <MailDate> tag. Note: When <CloseManifest> is indicated in the request, the following two response fields are eligible to return if conditions are met: · <MaxPackagesExceeded> · <MaxLabelsExceeded>
				#          * *:mail_date* (required, String) — Date of mailing/Carrier Pickup. This denotes date mail to be tendered to Postal Service. YYYYMMDD format. Example: <MailDate>20060103</MailDate>
				#          * *:mail_time* (required, String) — Time of mailing/Carrier Pickup. This is an approximation. This denotes time of mail to be tendered to Postal Service. HHMMSS (24 hour) format. Example: <MailTime>143000</MailTime>
				#          * *:entry_facility* (required, String) — ZIP Code of Postal Service facility. Populate/required only if different from <FromZip5>. Example: <EntryFacility>07067</EntryFacility>
				#          * *:image_type* (required, String) — The form image format desired. Enter one of the valid entries: Example: <ImageType>TIF</ImageType>
				#          * *:customer_ref_no* (String) — Arbitrary number for customers own tracking or inventory systems, does not print to form or manifest with Product Tracking. May be any combination of alpha and numeric characters, up to a maximum of 30. Example: <CustomerRefNo>123456</CustomerRefNo>
				#          * *:carrier_pickup* (Boolean) — FOR FUTURE USE.
def scan(options = {})
					throw ArgumentError.new('Required arguments :scan_request missing') if options[:scan_request].nil?

					request = build_request(:scan, options)
					get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'SCAN',
						XML: request,
					})
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_scan_request(xml, options = {})
					xml.tag!('Option') do
						tag_unless_blank(xml, 'Form', options[:scan_request][:option][:form])
						xml.tag!('FromName', options[:scan_request][:option][:from_name])
						tag_unless_blank(xml, 'FromFirm', options[:scan_request][:option][:from_firm])
						tag_unless_blank(xml, 'FromAddress1', options[:scan_request][:option][:from_address1])
						xml.tag!('FromAddress2', options[:scan_request][:option][:from_address2])
						xml.tag!('FromCity', options[:scan_request][:option][:from_city])
						xml.tag!('FromState', options[:scan_request][:option][:from_state])
						xml.tag!('FromZip5', options[:scan_request][:option][:from_zip5])
						tag_unless_blank(xml, 'FromZip4', options[:scan_request][:option][:from_zip4])
						xml.tag!('Shipment') do
							xml.tag!('PackageDetail') do
								xml.tag!('PkgBarcode', options[:scan_request][:option][:shipment][:package_detail][:pkg_barcode])
								xml.tag!('SpecialService') do
									xml.tag!('SpcServCode', options[:scan_request][:option][:shipment][:package_detail][:special_service][:spc_serv_code])
									xml.tag!('SpcServFee', options[:scan_request][:option][:shipment][:package_detail][:special_service][:spc_serv_fee])
									tag_unless_blank(xml, 'EMail', options[:scan_request][:option][:shipment][:package_detail][:special_service][:e_mail])
									tag_unless_blank(xml, 'CloseManifest', options[:scan_request][:option][:shipment][:package_detail][:special_service][:close_manifest])
									xml.tag!('MailDate', options[:scan_request][:option][:shipment][:package_detail][:special_service][:mail_date])
									xml.tag!('MailTime', options[:scan_request][:option][:shipment][:package_detail][:special_service][:mail_time])
									xml.tag!('EntryFacility', options[:scan_request][:option][:shipment][:package_detail][:special_service][:entry_facility])
									xml.tag!('ImageType', options[:scan_request][:option][:shipment][:package_detail][:special_service][:image_type])
									tag_unless_blank(xml, 'CustomerRefNo', options[:scan_request][:option][:shipment][:package_detail][:special_service][:customer_ref_no])
									tag_unless_blank(xml, 'CarrierPickup', options[:scan_request][:option][:shipment][:package_detail][:special_service][:carrier_pickup])
								end if options[:scan_request][:option][:shipment][:package_detail][:special_service].present?
							end if options[:scan_request][:option][:shipment][:package_detail].present?
						end if options[:scan_request][:option][:shipment].present?
					end if options[:scan_request][:option].present?
					xml.target!
				end

			end
		end
	end
end
