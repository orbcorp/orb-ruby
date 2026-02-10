# frozen_string_literal: true

module Orb
  module Models
    class NewFloatingCumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::NewFloatingCumulativeGroupedBulkPrice::Cadence]
      required :cadence, enum: -> { Orb::NewFloatingCumulativeGroupedBulkPrice::Cadence }

      # @!attribute cumulative_grouped_bulk_config
      #   Configuration for cumulative_grouped_bulk pricing
      #
      #   @return [Orb::Models::NewFloatingCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig]
      required :cumulative_grouped_bulk_config,
               -> { Orb::NewFloatingCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig }

      # @!attribute currency
      #   An ISO 4217 currency string for which this price is billed in.
      #
      #   @return [String]
      required :currency, String

      # @!attribute item_id
      #   The id of the item the price will be associated with.
      #
      #   @return [String]
      required :item_id, String

      # @!attribute model_type
      #   The pricing model type
      #
      #   @return [Symbol, Orb::Models::NewFloatingCumulativeGroupedBulkPrice::ModelType]
      required :model_type, enum: -> { Orb::NewFloatingCumulativeGroupedBulkPrice::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute billable_metric_id
      #   The id of the billable metric for the price. Only needed if the price is
      #   usage-based.
      #
      #   @return [String, nil]
      optional :billable_metric_id, String, nil?: true

      # @!attribute billed_in_advance
      #   If the Price represents a fixed cost, the price will be billed in-advance if
      #   this is true, and in-arrears if this is false.
      #
      #   @return [Boolean, nil]
      optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_cycle_configuration
      #   For custom cadence: specifies the duration of the billing period in days or
      #   months.
      #
      #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
      optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

      # @!attribute conversion_rate
      #   The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @return [Float, nil]
      optional :conversion_rate, Float, nil?: true

      # @!attribute conversion_rate_config
      #   The configuration for the rate of the price currency to the invoicing currency.
      #
      #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
      optional :conversion_rate_config,
               union: -> { Orb::NewFloatingCumulativeGroupedBulkPrice::ConversionRateConfig },
               nil?: true

      # @!attribute dimensional_price_configuration
      #   For dimensional price: specifies a price group and dimension values
      #
      #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
      optional :dimensional_price_configuration, -> { Orb::NewDimensionalPriceConfiguration }, nil?: true

      # @!attribute external_price_id
      #   An alias for the price.
      #
      #   @return [String, nil]
      optional :external_price_id, String, nil?: true

      # @!attribute fixed_price_quantity
      #   If the Price represents a fixed cost, this represents the quantity of units
      #   applied.
      #
      #   @return [Float, nil]
      optional :fixed_price_quantity, Float, nil?: true

      # @!attribute invoice_grouping_key
      #   The property used to group this price on an invoice
      #
      #   @return [String, nil]
      optional :invoice_grouping_key, String, nil?: true

      # @!attribute invoicing_cycle_configuration
      #   Within each billing cycle, specifies the cadence at which invoices are produced.
      #   If unspecified, a single invoice is produced per billing cycle.
      #
      #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
      optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

      # @!attribute license_type_id
      #   The ID of the license type to associate with this price.
      #
      #   @return [String, nil]
      optional :license_type_id, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!method initialize(cadence:, cumulative_grouped_bulk_config:, currency:, item_id:, model_type:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewFloatingCumulativeGroupedBulkPrice} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::NewFloatingCumulativeGroupedBulkPrice::Cadence] The cadence to bill for this price on.
      #
      #   @param cumulative_grouped_bulk_config [Orb::Models::NewFloatingCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig] Configuration for cumulative_grouped_bulk pricing
      #
      #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::NewFloatingCumulativeGroupedBulkPrice::ModelType] The pricing model type
      #
      #   @param name [String] The name of the price.
      #
      #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
      #
      #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
      #
      #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      #
      #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
      #
      #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
      #
      #   @param external_price_id [String, nil] An alias for the price.
      #
      #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
      #
      #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
      #
      #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
      #
      #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed

      # The cadence to bill for this price on.
      #
      # @see Orb::Models::NewFloatingCumulativeGroupedBulkPrice#cadence
      module Cadence
        extend Orb::Internal::Type::Enum

        ANNUAL = :annual
        SEMI_ANNUAL = :semi_annual
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        ONE_TIME = :one_time
        CUSTOM = :custom

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::NewFloatingCumulativeGroupedBulkPrice#cumulative_grouped_bulk_config
      class CumulativeGroupedBulkConfig < Orb::Internal::Type::BaseModel
        # @!attribute dimension_values
        #   Each tier lower bound must have the same group of values.
        #
        #   @return [Array<Orb::Models::NewFloatingCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue>]
        required :dimension_values,
                 -> { Orb::Internal::Type::ArrayOf[Orb::NewFloatingCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue] }

        # @!attribute group
        #
        #   @return [String]
        required :group, String

        # @!method initialize(dimension_values:, group:)
        #   Configuration for cumulative_grouped_bulk pricing
        #
        #   @param dimension_values [Array<Orb::Models::NewFloatingCumulativeGroupedBulkPrice::CumulativeGroupedBulkConfig::DimensionValue>] Each tier lower bound must have the same group of values.
        #
        #   @param group [String]

        class DimensionValue < Orb::Internal::Type::BaseModel
          # @!attribute grouping_key
          #   Grouping key value
          #
          #   @return [String]
          required :grouping_key, String

          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Unit amount for this combination
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(grouping_key:, tier_lower_bound:, unit_amount:)
          #   Configuration for a dimension value entry
          #
          #   @param grouping_key [String] Grouping key value
          #
          #   @param tier_lower_bound [String] Tier lower bound
          #
          #   @param unit_amount [String] Unit amount for this combination
        end
      end

      # The pricing model type
      #
      # @see Orb::Models::NewFloatingCumulativeGroupedBulkPrice#model_type
      module ModelType
        extend Orb::Internal::Type::Enum

        CUMULATIVE_GROUPED_BULK = :cumulative_grouped_bulk

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
