# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#enable
    class AlertEnableParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute subscription_id
      #   Used to update the status of a plan alert scoped to this subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!method initialize(subscription_id: nil, request_options: {})
      #   @param subscription_id [String, nil]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
