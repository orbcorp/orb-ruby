# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#create_for_subscription
    class AlertCreateForSubscriptionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

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

      # @!attribute grouping_keys
      #   The property keys to group cost alerts by. Only applicable for cost_exceeded
      #   alerts.
      #
      #   @return [Array<String>, nil]
      optional :grouping_keys, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute metric_id
      #   The metric to track usage for.
      #
      #   @return [String, nil]
      optional :metric_id, String, nil?: true

      # @!attribute pricing_unit_id
      #   The pricing unit to use for grouped cost alerts. Required when grouping_keys is
      #   set.
      #
      #   @return [String, nil]
      optional :pricing_unit_id, String, nil?: true

      # @!method initialize(subscription_id:, thresholds:, type:, grouping_keys: nil, metric_id: nil, pricing_unit_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::AlertCreateForSubscriptionParams} for more details.
      #
      #   @param subscription_id [String]
      #
      #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param type [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type] The type of alert to create. This must be a valid alert type.
      #
      #   @param grouping_keys [Array<String>, nil] The property keys to group cost alerts by. Only applicable for cost_exceeded ale
      #
      #   @param metric_id [String, nil] The metric to track usage for.
      #
      #   @param pricing_unit_id [String, nil] The pricing unit to use for grouped cost alerts. Required when grouping_keys is
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
