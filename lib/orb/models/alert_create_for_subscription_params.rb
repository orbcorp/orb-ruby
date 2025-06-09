# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#create_for_subscription
    class AlertCreateForSubscriptionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::Threshold>]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type]
      required :type, enum: -> { Orb::AlertCreateForSubscriptionParams::Type }

      # @!attribute metric_id
      #   The metric to track usage for.
      #
      #   @return [String, nil]
      optional :metric_id, String, nil?: true

      # @!method initialize(thresholds:, type:, metric_id: nil, request_options: {})
      #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param type [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type] The type of alert to create. This must be a valid alert type.
      #
      #   @param metric_id [String, nil] The metric to track usage for.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
