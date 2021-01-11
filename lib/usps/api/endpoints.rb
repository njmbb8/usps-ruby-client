# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require_relative 'endpoints/carrier_pickup_schedule'
require_relative 'endpoints/city_state_lookup'
require_relative 'endpoints/e_vs_express_mail_intl'
require_relative 'endpoints/e_vs_first_class_mail_intl'
require_relative 'endpoints/e_vs_priority_mail_intl'
require_relative 'endpoints/e_vsgxg_get_label'
require_relative 'endpoints/e_vsi_cancel'
require_relative 'endpoints/hfp_facility_info'
require_relative 'endpoints/intl_rate_v2'
require_relative 'endpoints/pts_email'
require_relative 'endpoints/pts_pod'
require_relative 'endpoints/pts_rre'
require_relative 'endpoints/ptst_pod'
require_relative 'endpoints/rate_v4'
require_relative 'endpoints/scan'
require_relative 'endpoints/track_v2'
require_relative 'endpoints/usps_returns_label'
require_relative 'endpoints/verify'
require_relative 'endpoints/zip_code_lookup'

module Usps
  module Api
    module Endpoints
        include CarrierPickupSchedule
        include CityStateLookup
        include EVSExpressMailIntl
        include EVSFirstClassMailIntl
        include EVSPriorityMailIntl
        include EVSGXGGetLabel
        include EVSICancel
        include HFPFacilityInfo
        include IntlRateV2
        include PTSEmail
        include PTSPod
        include PTSRre
        include PTSTPod
        include RateV4
        include SCAN
        include TrackV2
        include USPSReturnsLabel
        include Verify
        include ZipCodeLookup

		ACTIONS = {
			carrier_pickup_schedule: 'CarrierPickupSchedule',
			city_state_lookup: 'CityStateLookup',
			e_vs_express_mail_intl: 'EVSExpressMailIntl',
			e_vs_first_class_mail_intl: 'EVSFirstClassMailIntl',
			e_vs_priority_mail_intl: 'EVSPriorityMailIntl',
			e_vsgxg_get_label: 'EVSGXGGetLabel',
			e_vsi_cancel: 'EVSICancel',
			hfp_facility_info: 'HFPFacilityInfo',
			intl_rate_v2: 'IntlRateV2',
			pts_email: 'PTSEmail',
			pts_pod: 'PTSPod',
			pts_rre: 'PTSRre',
			ptst_pod: 'PTSTPod',
			rate_v4: 'RateV4',
			scan: 'SCAN',
			track_v2: 'TrackV2',
			usps_returns_label: 'USPSReturnsLabel',
			verify: 'Verify',
			zip_code_lookup: 'ZipCodeLookup',
		}

    end
  end
end
