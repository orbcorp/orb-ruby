# frozen_string_literal: true

module Orb
  module Models
    class NewSubscriptionUnitWithProrationPrice < Orb::Internal::Type::BaseModel
      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::NewSubscriptionUnitWithProrationPrice::Cadence]
      required :cadence, enum: -> { Orb::NewSubscriptionUnitWithProrationPrice::Cadence }

      # @!attribute item_id
      #   The id of the item the price will be associated with.
      #
      #   @return [String]
      required :item_id, String

      # @!attribute model_type
      #
      #   @return [Symbol, Orb::Models::NewSubscriptionUnitWithProrationPrice::ModelType]
      required :model_type, enum: -> { Orb::NewSubscriptionUnitWithProrationPrice::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute unit_with_proration_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
      #   @return [Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit, Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered, nil]
      optional :conversion_rate_config,
               union: -> { Orb::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig },
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

      # @!method initialize(cadence:, item_id:, model_type:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewSubscriptionUnitWithProrationPrice} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::NewSubscriptionUnitWithProrationPrice::Cadence] The cadence to bill for this price on.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::NewSubscriptionUnitWithProrationPrice::ModelType]
      #
      #   @param name [String] The name of the price.
      #
      #   @param unit_with_proration_config [Hash{Symbol=>Object}]
      #
      #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
      #
      #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
      #
      #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      #
      #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @param conversion_rate_config [Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit, Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered, nil] The configuration for the rate of the price currency to the invoicing currency.
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
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments

      # The cadence to bill for this price on.
      #
      # @see Orb::Models::NewSubscriptionUnitWithProrationPrice#cadence
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

      # @see Orb::Models::NewSubscriptionUnitWithProrationPrice#model_type
      module ModelType
        extend Orb::Internal::Type::Enum

        UNIT_WITH_PRORATION = :unit_with_proration

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The configuration for the rate of the price currency to the invoicing currency.
      #
      # @see Orb::Models::NewSubscriptionUnitWithProrationPrice#conversion_rate_config
      module ConversionRateConfig
        extend Orb::Internal::Type::Union

        discriminator :conversion_rate_type

        variant :unit, -> { Orb::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit }

        variant :tiered, -> { Orb::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered }

        class Unit < Orb::Internal::Type::BaseModel
          # @!attribute conversion_rate_type
          #
          #   @return [Symbol, :unit]
          required :conversion_rate_type, const: :unit

          # @!attribute unit_config
          #
          #   @return [Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit::UnitConfig]
          required :unit_config,
                   -> { Orb::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit::UnitConfig }

          # @!method initialize(unit_config:, conversion_rate_type: :unit)
          #   @param unit_config [Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit::UnitConfig]
          #   @param conversion_rate_type [Symbol, :unit]

          # @see Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit#unit_config
          class UnitConfig < Orb::Internal::Type::BaseModel
            # @!attribute unit_amount
            #   Amount per unit of overage
            #
            #   @return [String]
            required :unit_amount, String

            # @!method initialize(unit_amount:)
            #   @param unit_amount [String] Amount per unit of overage
          end
        end

        class Tiered < Orb::Internal::Type::BaseModel
          # @!attribute conversion_rate_type
          #
          #   @return [Symbol, :tiered]
          required :conversion_rate_type, const: :tiered

          # @!attribute tiered_config
          #
          #   @return [Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered::TieredConfig]
          required :tiered_config,
                   -> {
                     Orb::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered::TieredConfig
                   }

          # @!method initialize(tiered_config:, conversion_rate_type: :tiered)
          #   @param tiered_config [Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered::TieredConfig]
          #   @param conversion_rate_type [Symbol, :tiered]

          # @see Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered#tiered_config
          class TieredConfig < Orb::Internal::Type::BaseModel
            # @!attribute tiers
            #   Tiers for rating based on total usage quantities into the specified tier
            #
            #   @return [Array<Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered::TieredConfig::Tier>]
            required :tiers,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered::TieredConfig::Tier]
                     }

            # @!method initialize(tiers:)
            #   @param tiers [Array<Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

            class Tier < Orb::Internal::Type::BaseModel
              # @!attribute first_unit
              #   Exclusive tier starting value
              #
              #   @return [Float]
              required :first_unit, Float

              # @!attribute unit_amount
              #   Amount per unit of overage
              #
              #   @return [String]
              required :unit_amount, String

              # @!attribute last_unit
              #   Inclusive tier ending value. If null, this is treated as the last tier
              #
              #   @return [Float, nil]
              optional :last_unit, Float, nil?: true

              # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
              #   @param first_unit [Float] Exclusive tier starting value
              #
              #   @param unit_amount [String] Amount per unit of overage
              #
              #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
            end
          end
        end

        # @!method self.variants
        #   @return [Array(Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Unit, Orb::Models::NewSubscriptionUnitWithProrationPrice::ConversionRateConfig::Tiered)]
      end
    end
  end
end
