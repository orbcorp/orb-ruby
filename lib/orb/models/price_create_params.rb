# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#create
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::PriceCreateParams::Cadence]
      required :cadence, enum: -> { Orb::PriceCreateParams::Cadence }

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
      #
      #   @return [Symbol, Orb::Models::PriceCreateParams::ModelType]
      required :model_type, enum: -> { Orb::PriceCreateParams::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute unit_config
      #
      #   @return [Orb::Models::UnitConfig]
      required :unit_config, -> { Orb::UnitConfig }

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
      #   @return [Orb::Models::PriceCreateParams::ConversionRateConfig::Unit, Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered, nil]
      optional :conversion_rate_config, union: -> { Orb::PriceCreateParams::ConversionRateConfig }, nil?: true

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

      # @!attribute package_config
      #
      #   @return [Orb::Models::PackageConfig]
      required :package_config, -> { Orb::PackageConfig }

      # @!attribute matrix_config
      #
      #   @return [Orb::Models::MatrixConfig]
      required :matrix_config, -> { Orb::MatrixConfig }

      # @!attribute matrix_with_allocation_config
      #
      #   @return [Orb::Models::MatrixWithAllocationConfig]
      required :matrix_with_allocation_config, -> { Orb::MatrixWithAllocationConfig }

      # @!attribute tiered_config
      #
      #   @return [Orb::Models::TieredConfig]
      required :tiered_config, -> { Orb::TieredConfig }

      # @!attribute tiered_bps_config
      #
      #   @return [Orb::Models::TieredBPSConfig]
      required :tiered_bps_config, -> { Orb::TieredBPSConfig }

      # @!attribute bps_config
      #
      #   @return [Orb::Models::BPSConfig]
      required :bps_config, -> { Orb::BPSConfig }

      # @!attribute bulk_bps_config
      #
      #   @return [Orb::Models::BulkBPSConfig]
      required :bulk_bps_config, -> { Orb::BulkBPSConfig }

      # @!attribute bulk_config
      #
      #   @return [Orb::Models::BulkConfig]
      required :bulk_config, -> { Orb::BulkConfig }

      # @!attribute threshold_total_amount_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute tiered_package_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute grouped_tiered_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute max_group_tiered_package_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :max_group_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute tiered_with_minimum_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute package_with_allocation_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :package_with_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute tiered_package_with_minimum_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :tiered_package_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute unit_with_percent_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute tiered_with_proration_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute unit_with_proration_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute grouped_allocation_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute grouped_with_prorated_minimum_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :grouped_with_prorated_minimum_config,
               Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute grouped_with_metered_minimum_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :grouped_with_metered_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute matrix_with_display_name_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :matrix_with_display_name_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute bulk_with_proration_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute grouped_tiered_package_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute scalable_matrix_with_unit_pricing_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :scalable_matrix_with_unit_pricing_config,
               Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute scalable_matrix_with_tiered_pricing_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :scalable_matrix_with_tiered_pricing_config,
               Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!attribute cumulative_grouped_bulk_config
      #
      #   @return [Hash{Symbol=>Object}]
      required :cumulative_grouped_bulk_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

      # @!method initialize(cadence:, currency:, item_id:, model_type:, name:, unit_config:, package_config:, matrix_config:, matrix_with_allocation_config:, tiered_config:, tiered_bps_config:, bps_config:, bulk_bps_config:, bulk_config:, threshold_total_amount_config:, tiered_package_config:, grouped_tiered_config:, max_group_tiered_package_config:, tiered_with_minimum_config:, package_with_allocation_config:, tiered_package_with_minimum_config:, unit_with_percent_config:, tiered_with_proration_config:, unit_with_proration_config:, grouped_allocation_config:, grouped_with_prorated_minimum_config:, grouped_with_metered_minimum_config:, matrix_with_display_name_config:, bulk_with_proration_config:, grouped_tiered_package_config:, scalable_matrix_with_unit_pricing_config:, scalable_matrix_with_tiered_pricing_config:, cumulative_grouped_bulk_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PriceCreateParams} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Cadence] The cadence to bill for this price on.
      #
      #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::PriceCreateParams::ModelType]
      #
      #   @param name [String] The name of the price.
      #
      #   @param unit_config [Orb::Models::UnitConfig]
      #
      #   @param package_config [Orb::Models::PackageConfig]
      #
      #   @param matrix_config [Orb::Models::MatrixConfig]
      #
      #   @param matrix_with_allocation_config [Orb::Models::MatrixWithAllocationConfig]
      #
      #   @param tiered_config [Orb::Models::TieredConfig]
      #
      #   @param tiered_bps_config [Orb::Models::TieredBPSConfig]
      #
      #   @param bps_config [Orb::Models::BPSConfig]
      #
      #   @param bulk_bps_config [Orb::Models::BulkBPSConfig]
      #
      #   @param bulk_config [Orb::Models::BulkConfig]
      #
      #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
      #
      #   @param tiered_package_config [Hash{Symbol=>Object}]
      #
      #   @param grouped_tiered_config [Hash{Symbol=>Object}]
      #
      #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
      #
      #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
      #
      #   @param package_with_allocation_config [Hash{Symbol=>Object}]
      #
      #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
      #
      #   @param unit_with_percent_config [Hash{Symbol=>Object}]
      #
      #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
      #
      #   @param unit_with_proration_config [Hash{Symbol=>Object}]
      #
      #   @param grouped_allocation_config [Hash{Symbol=>Object}]
      #
      #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
      #
      #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
      #
      #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
      #
      #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
      #
      #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
      #
      #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
      #
      #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
      #
      #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
      #
      #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
      #
      #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
      #
      #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      #
      #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @param conversion_rate_config [Orb::Models::PriceCreateParams::ConversionRateConfig::Unit, Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered, nil] The configuration for the rate of the price currency to the invoicing currency.
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
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The cadence to bill for this price on.
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

      module ModelType
        extend Orb::Internal::Type::Enum

        CUMULATIVE_GROUPED_BULK = :cumulative_grouped_bulk

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The configuration for the rate of the price currency to the invoicing currency.
      module ConversionRateConfig
        extend Orb::Internal::Type::Union

        discriminator :conversion_rate_type

        variant :unit, -> { Orb::PriceCreateParams::ConversionRateConfig::Unit }

        variant :tiered, -> { Orb::PriceCreateParams::ConversionRateConfig::Tiered }

        class Unit < Orb::Internal::Type::BaseModel
          # @!attribute conversion_rate_type
          #
          #   @return [Symbol, :unit]
          required :conversion_rate_type, const: :unit

          # @!attribute unit_config
          #
          #   @return [Orb::Models::PriceCreateParams::ConversionRateConfig::Unit::UnitConfig]
          required :unit_config, -> { Orb::PriceCreateParams::ConversionRateConfig::Unit::UnitConfig }

          # @!method initialize(unit_config:, conversion_rate_type: :unit)
          #   @param unit_config [Orb::Models::PriceCreateParams::ConversionRateConfig::Unit::UnitConfig]
          #   @param conversion_rate_type [Symbol, :unit]

          # @see Orb::Models::PriceCreateParams::ConversionRateConfig::Unit#unit_config
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
          #   @return [Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered::TieredConfig]
          required :tiered_config, -> { Orb::PriceCreateParams::ConversionRateConfig::Tiered::TieredConfig }

          # @!method initialize(tiered_config:, conversion_rate_type: :tiered)
          #   @param tiered_config [Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered::TieredConfig]
          #   @param conversion_rate_type [Symbol, :tiered]

          # @see Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered#tiered_config
          class TieredConfig < Orb::Internal::Type::BaseModel
            # @!attribute tiers
            #   Tiers for rating based on total usage quantities into the specified tier
            #
            #   @return [Array<Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered::TieredConfig::Tier>]
            required :tiers,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::ConversionRateConfig::Tiered::TieredConfig::Tier]
                     }

            # @!method initialize(tiers:)
            #   @param tiers [Array<Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

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
        #   @return [Array(Orb::Models::PriceCreateParams::ConversionRateConfig::Unit, Orb::Models::PriceCreateParams::ConversionRateConfig::Tiered)]
      end
    end
  end
end
