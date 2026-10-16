# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#create_for_plan
    class AlertCreateForPlanParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute plan_id
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::Threshold>]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::AlertCreateForPlanParams::Type]
      required :type, enum: -> { Orb::AlertCreateForPlanParams::Type }

      # @!attribute currency
      #   The case sensitive currency or custom pricing unit the alert is denominated in.
      #   Required for spend_exceeded alerts and when grouping_keys is set.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

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

      # @!attribute plan_version
      #   The plan version to create alerts for. If not specified, the default will be the
      #   plan's active plan version.
      #
      #   @return [Integer, nil]
      optional :plan_version, Integer, nil?: true

      # @!attribute price_filters
      #   Filters to scope which prices are included in alert evaluation. Supports
      #   filtering by price_id, item_id, or price_type with includes/excludes operators.
      #   Only applicable to spend_exceeded alerts and to cost_exceeded alerts with
      #   grouping_keys set.
      #
      #   @return [Array<Orb::Models::AlertCreateForPlanParams::PriceFilter>, nil]
      optional :price_filters,
               -> { Orb::Internal::Type::ArrayOf[Orb::AlertCreateForPlanParams::PriceFilter] },
               nil?: true

      # @!method initialize(plan_id:, thresholds:, type:, currency: nil, grouping_keys: nil, metric_id: nil, plan_version: nil, price_filters: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::AlertCreateForPlanParams} for more details.
      #
      #   @param plan_id [String]
      #
      #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param type [Symbol, Orb::Models::AlertCreateForPlanParams::Type] The type of alert to create. This must be a valid alert type.
      #
      #   @param currency [String, nil] The case sensitive currency or custom pricing unit the alert is denominated in.
      #
      #   @param grouping_keys [Array<String>, nil] The property keys to group cost alerts by. Only applicable for cost_exceeded ale
      #
      #   @param metric_id [String, nil] The metric to track usage for.
      #
      #   @param plan_version [Integer, nil] The plan version to create alerts for. If not specified, the default will be the
      #
      #   @param price_filters [Array<Orb::Models::AlertCreateForPlanParams::PriceFilter>, nil] Filters to scope which prices are included in alert evaluation. Supports filteri
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        SPEND_EXCEEDED = :spend_exceeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PriceFilter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::AlertCreateForPlanParams::PriceFilter::Field]
        required :field, enum: -> { Orb::AlertCreateForPlanParams::PriceFilter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::AlertCreateForPlanParams::PriceFilter::Operator]
        required :operator, enum: -> { Orb::AlertCreateForPlanParams::PriceFilter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::AlertCreateForPlanParams::PriceFilter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::AlertCreateForPlanParams::PriceFilter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::AlertCreateForPlanParams::PriceFilter#field
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
        # @see Orb::Models::AlertCreateForPlanParams::PriceFilter#operator
        module Operator
          extend Orb::Internal::Type::Enum

          INCLUDES = :includes
          EXCLUDES = :excludes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
