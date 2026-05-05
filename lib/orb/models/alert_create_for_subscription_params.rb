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

      # @!attribute price_filters
      #   Filters to scope which prices are included in grouped cost alert evaluation.
      #   Supports filtering by price_id, item_id, or price_type with includes/excludes
      #   operators. Only applicable when grouping_keys is set.
      #
      #   @return [Array<Orb::Models::AlertCreateForSubscriptionParams::PriceFilter>, nil]
      optional :price_filters,
               -> { Orb::Internal::Type::ArrayOf[Orb::AlertCreateForSubscriptionParams::PriceFilter] },
               nil?: true

      # @!attribute pricing_unit_id
      #   The pricing unit to use for grouped cost alerts. Required when grouping_keys is
      #   set.
      #
      #   @return [String, nil]
      optional :pricing_unit_id, String, nil?: true

      # @!attribute threshold_overrides
      #   Per-group threshold overrides. Each override maps a specific combination of
      #   grouping_keys values to a list of thresholds that fully replaces the default
      #   thresholds for that group. An empty thresholds list silences the group. Groups
      #   without an override use the default thresholds. Only applicable when
      #   grouping_keys is set.
      #
      #   @return [Array<Orb::Models::AlertCreateForSubscriptionParams::ThresholdOverride>, nil]
      optional :threshold_overrides,
               -> { Orb::Internal::Type::ArrayOf[Orb::AlertCreateForSubscriptionParams::ThresholdOverride] },
               nil?: true

      # @!method initialize(subscription_id:, thresholds:, type:, grouping_keys: nil, metric_id: nil, price_filters: nil, pricing_unit_id: nil, threshold_overrides: nil, request_options: {})
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
      #   @param price_filters [Array<Orb::Models::AlertCreateForSubscriptionParams::PriceFilter>, nil] Filters to scope which prices are included in grouped cost alert evaluation. Sup
      #
      #   @param pricing_unit_id [String, nil] The pricing unit to use for grouped cost alerts. Required when grouping_keys is
      #
      #   @param threshold_overrides [Array<Orb::Models::AlertCreateForSubscriptionParams::ThresholdOverride>, nil] Per-group threshold overrides. Each override maps a specific combination of grou
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

      class PriceFilter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::AlertCreateForSubscriptionParams::PriceFilter::Field]
        required :field, enum: -> { Orb::AlertCreateForSubscriptionParams::PriceFilter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::AlertCreateForSubscriptionParams::PriceFilter::Operator]
        required :operator, enum: -> { Orb::AlertCreateForSubscriptionParams::PriceFilter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::AlertCreateForSubscriptionParams::PriceFilter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::AlertCreateForSubscriptionParams::PriceFilter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::AlertCreateForSubscriptionParams::PriceFilter#field
        module Field
          extend Orb::Internal::Type::Enum

          PRICE_ID = :price_id
          ITEM_ID = :item_id
          PRICE_TYPE = :price_type
          CURRENCY = :currency
          PRICING_UNIT_ID = :pricing_unit_id

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Should prices that match the filter be included or excluded.
        #
        # @see Orb::Models::AlertCreateForSubscriptionParams::PriceFilter#operator
        module Operator
          extend Orb::Internal::Type::Enum

          INCLUDES = :includes
          EXCLUDES = :excludes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ThresholdOverride < Orb::Internal::Type::BaseModel
        # @!attribute group_values
        #   The values of the grouping keys that identify this group. The list length must
        #   match the alert's grouping_keys, and values appear in the same order as
        #   grouping_keys.
        #
        #   @return [Array<String>]
        required :group_values, Orb::Internal::Type::ArrayOf[String]

        # @!attribute thresholds
        #   The thresholds to apply to this group. An empty list silences alerts for this
        #   group. A non-empty list fully replaces the default thresholds for this group.
        #
        #   @return [Array<Orb::Models::Threshold>]
        required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }

        # @!method initialize(group_values:, thresholds:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::AlertCreateForSubscriptionParams::ThresholdOverride} for more
        #   details.
        #
        #   Per-group threshold override on a grouped cost alert.
        #
        #   - An empty `thresholds` list silences alerts for this group (never fires).
        #   - A non-empty list fully replaces the default thresholds for this group.
        #
        #   @param group_values [Array<String>] The values of the grouping keys that identify this group. The list length must m
        #
        #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds to apply to this group. An empty list silences alerts for this gr
      end
    end
  end
end
