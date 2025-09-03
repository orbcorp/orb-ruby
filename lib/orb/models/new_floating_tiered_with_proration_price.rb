# frozen_string_literal: true

module Orb
  module Models
    class NewFloatingTieredWithProrationPrice < Orb::Internal::Type::BaseModel
      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::NewFloatingTieredWithProrationPrice::Cadence]
      required :cadence, enum: -> { Orb::NewFloatingTieredWithProrationPrice::Cadence }

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
      #   @return [Symbol, Orb::Models::NewFloatingTieredWithProrationPrice::ModelType]
      required :model_type, enum: -> { Orb::NewFloatingTieredWithProrationPrice::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute tiered_with_proration_config
      #   Configuration for tiered_with_proration pricing
      #
      #   @return [Orb::Models::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig]
      required :tiered_with_proration_config,
               -> { Orb::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig }

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
               union: -> { Orb::NewFloatingTieredWithProrationPrice::ConversionRateConfig },
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

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!method initialize(cadence:, currency:, item_id:, model_type:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewFloatingTieredWithProrationPrice} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::NewFloatingTieredWithProrationPrice::Cadence] The cadence to bill for this price on.
      #
      #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::NewFloatingTieredWithProrationPrice::ModelType] The pricing model type
      #
      #   @param name [String] The name of the price.
      #
      #   @param tiered_with_proration_config [Orb::Models::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig] Configuration for tiered_with_proration pricing
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
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed

      # The cadence to bill for this price on.
      #
      # @see Orb::Models::NewFloatingTieredWithProrationPrice#cadence
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

      # The pricing model type
      #
      # @see Orb::Models::NewFloatingTieredWithProrationPrice#model_type
      module ModelType
        extend Orb::Internal::Type::Enum

        TIERED_WITH_PRORATION = :tiered_with_proration

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::NewFloatingTieredWithProrationPrice#tiered_with_proration_config
      class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for rating based on total usage quantities into the specified tier with
        #   proration
        #
        #   @return [Array<Orb::Models::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig::Tier] }

        # @!method initialize(tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig}
        #   for more details.
        #
        #   Configuration for tiered_with_proration pricing
        #
        #   @param tiers [Array<Orb::Models::NewFloatingTieredWithProrationPrice::TieredWithProrationConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier with pr

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute tier_lower_bound
          #   Inclusive tier starting value
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Amount per unit
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(tier_lower_bound:, unit_amount:)
          #   Configuration for a single tiered with proration tier
          #
          #   @param tier_lower_bound [String] Inclusive tier starting value
          #
          #   @param unit_amount [String] Amount per unit
        end
      end
    end
  end
end
