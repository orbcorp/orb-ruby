# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#retrieve
    class SubscriptionChangeRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute subscription_change_id
      #
      #   @return [String]
      required :subscription_change_id, String

      # @!method initialize(subscription_change_id:, request_options: {})
      #   @param subscription_change_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
