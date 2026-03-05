# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#retrieve
    class AlertRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute alert_id
      #
      #   @return [String]
      required :alert_id, String

      # @!method initialize(alert_id:, request_options: {})
      #   @param alert_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
