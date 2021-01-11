# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Usps::Api::Endpoints::RateV4 do
  let(:client) { Usps::Client.new }
  context 'rate_v4' do
    it 'requires rate_v4_request' do
      expect { client.rate_v4 }.to raise_error ArgumentError, /Required arguments :rate_v4_request missing/
    end
  end
end
