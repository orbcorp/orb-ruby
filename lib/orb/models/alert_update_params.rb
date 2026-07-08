# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#update
    class AlertUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute alert_configuration_id
      #
      #   @return [String]
      required :alert_configuration_id, String

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::Threshold>]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }

      # @!attribute price_filters
      #   Replaces the price filters on a grouped cost alert; an empty list clears them.
      #   Only applicable to cost alerts with grouping_keys. Omit to leave unchanged.
      #
      #   @return [Array<Orb::Models::AlertUpdateParams::PriceFilter>, nil]
      optional :price_filters,
               -> { Orb::Internal::Type::ArrayOf[Orb::AlertUpdateParams::PriceFilter] },
               nil?: true

      # @!attribute threshold_overrides
      #   Replaces the per-group threshold overrides on a grouped cost alert; an empty
      #   list clears them. Only applicable to cost alerts with grouping_keys. Omit to
      #   leave unchanged.
      #
      #   @return [Array<Orb::Models::AlertUpdateParams::ThresholdOverride>, nil]
      optional :threshold_overrides,
               -> { Orb::Internal::Type::ArrayOf[Orb::AlertUpdateParams::ThresholdOverride] },
               nil?: true

      # @!method initialize(alert_configuration_id:, thresholds:, price_filters: nil, threshold_overrides: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::AlertUpdateParams} for more details.
      #
      #   @param alert_configuration_id [String]
      #
      #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param price_filters [Array<Orb::Models::AlertUpdateParams::PriceFilter>, nil] Replaces the price filters on a grouped cost alert; an empty list clears them. O
      #
      #   @param threshold_overrides [Array<Orb::Models::AlertUpdateParams::ThresholdOverride>, nil] Replaces the per-group threshold overrides on a grouped cost alert; an empty lis
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class PriceFilter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::AlertUpdateParams::PriceFilter::Field]
        required :field, enum: -> { Orb::AlertUpdateParams::PriceFilter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::AlertUpdateParams::PriceFilter::Operator]
        required :operator, enum: -> { Orb::AlertUpdateParams::PriceFilter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::AlertUpdateParams::PriceFilter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::AlertUpdateParams::PriceFilter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::AlertUpdateParams::PriceFilter#field
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
        # @see Orb::Models::AlertUpdateParams::PriceFilter#operator
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
        #   {Orb::Models::AlertUpdateParams::ThresholdOverride} for more details.
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
