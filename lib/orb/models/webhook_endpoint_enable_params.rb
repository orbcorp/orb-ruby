# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::WebhookEndpoints#enable
    class WebhookEndpointEnableParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute webhook_endpoint_id
      #
      #   @return [String]
      required :webhook_endpoint_id, String

      # @!method initialize(webhook_endpoint_id:, request_options: {})
      #   @param webhook_endpoint_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
