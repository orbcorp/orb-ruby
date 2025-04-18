# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#fetch_upcoming
    class InvoiceFetchUpcomingParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(subscription_id:, request_options: {})
      #   @param subscription_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
