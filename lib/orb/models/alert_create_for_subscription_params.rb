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
      #   @return [Array<Orb::AlertCreateForSubscriptionParams::Threshold>]
      required :thresholds,
               -> { Orb::Internal::Type::ArrayOf[Orb::AlertCreateForSubscriptionParams::Threshold] }

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::AlertCreateForSubscriptionParams::Type]
      required :type, enum: -> { Orb::AlertCreateForSubscriptionParams::Type }

      # @!attribute metric_id
      #   The metric to track usage for.
      #
      #   @return [String, nil]
      optional :metric_id, String, nil?: true

      # @!method initialize(thresholds:, type:, metric_id: nil, request_options: {})
      #   @param thresholds [Array<Orb::AlertCreateForSubscriptionParams::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param type [Symbol, Orb::AlertCreateForSubscriptionParams::Type] The type of alert to create. This must be a valid alert type.
      #
      #   @param metric_id [String, nil] The metric to track usage for.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class Threshold < Orb::Internal::Type::BaseModel
        # @!attribute value
        #   The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(value:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::AlertCreateForSubscriptionParams::Threshold} for more details.
        #
        #   Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        #
        #   @param value [Float] The value at which an alert will fire. For credit balance alerts, the alert will
      end

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
