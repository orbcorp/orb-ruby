# frozen_string_literal: true

module Orb
  module Models
    class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
      required :cadence, enum: -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

      # @!attribute grouped_with_metered_minimum_config
      #   Configuration for grouped_with_metered_minimum pricing
      #
      #   @return [Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig]
      required :grouped_with_metered_minimum_config,
               -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig }

      # @!attribute item_id
      #   The id of the item the price will be associated with.
      #
      #   @return [String]
      required :item_id, String

      # @!attribute model_type
      #   The pricing model type
      #
      #   @return [Symbol, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::ModelType]
      required :model_type, enum: -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::ModelType }

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
               union: -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::ConversionRateConfig },
               nil?: true

      # @!attribute currency
      #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
      #   price is billed.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

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

      # @!attribute reference_id
      #   A transient ID that can be used to reference this price when adding adjustments
      #   in the same API call.
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!method initialize(cadence:, grouped_with_metered_minimum_config:, item_id:, model_type:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence] The cadence to bill for this price on.
      #
      #   @param grouped_with_metered_minimum_config [Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig] Configuration for grouped_with_metered_minimum pricing
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::ModelType] The pricing model type
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
      #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
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
      #
      #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments

      # The cadence to bill for this price on.
      #
      # @see Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice#cadence
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

      # @see Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice#grouped_with_metered_minimum_config
      class GroupedWithMeteredMinimumConfig < Orb::Internal::Type::BaseModel
        # @!attribute grouping_key
        #   Used to partition the usage into groups. The minimum amount is applied to each
        #   group.
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute minimum_unit_amount
        #   The minimum amount to charge per group per unit
        #
        #   @return [String]
        required :minimum_unit_amount, String

        # @!attribute pricing_key
        #   Used to determine the unit rate
        #
        #   @return [String]
        required :pricing_key, String

        # @!attribute scaling_factors
        #   Scale the unit rates by the scaling factor.
        #
        #   @return [Array<Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor>]
        required :scaling_factors,
                 -> { Orb::Internal::Type::ArrayOf[Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor] }

        # @!attribute scaling_key
        #   Used to determine the unit rate scaling factor
        #
        #   @return [String]
        required :scaling_key, String

        # @!attribute unit_amounts
        #   Apply per unit pricing to each pricing value. The minimum amount is applied any
        #   unmatched usage.
        #
        #   @return [Array<Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount>]
        required :unit_amounts,
                 -> { Orb::Internal::Type::ArrayOf[Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount] }

        # @!method initialize(grouping_key:, minimum_unit_amount:, pricing_key:, scaling_factors:, scaling_key:, unit_amounts:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig}
        #   for more details.
        #
        #   Configuration for grouped_with_metered_minimum pricing
        #
        #   @param grouping_key [String] Used to partition the usage into groups. The minimum amount is applied to each g
        #
        #   @param minimum_unit_amount [String] The minimum amount to charge per group per unit
        #
        #   @param pricing_key [String] Used to determine the unit rate
        #
        #   @param scaling_factors [Array<Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::ScalingFactor>] Scale the unit rates by the scaling factor.
        #
        #   @param scaling_key [String] Used to determine the unit rate scaling factor
        #
        #   @param unit_amounts [Array<Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice::GroupedWithMeteredMinimumConfig::UnitAmount>] Apply per unit pricing to each pricing value. The minimum amount is applied any

        class ScalingFactor < Orb::Internal::Type::BaseModel
          # @!attribute scaling_factor
          #
          #   @return [String]
          required :scaling_factor, String

          # @!attribute scaling_value
          #
          #   @return [String]
          required :scaling_value, String

          # @!method initialize(scaling_factor:, scaling_value:)
          #   Configuration for a scaling factor
          #
          #   @param scaling_factor [String]
          #   @param scaling_value [String]
        end

        class UnitAmount < Orb::Internal::Type::BaseModel
          # @!attribute pricing_value
          #
          #   @return [String]
          required :pricing_value, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(pricing_value:, unit_amount:)
          #   Configuration for a unit amount
          #
          #   @param pricing_value [String]
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

      # The pricing model type
      #
      # @see Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice#model_type
      module ModelType
        extend Orb::Internal::Type::Enum

        GROUPED_WITH_METERED_MINIMUM = :grouped_with_metered_minimum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
