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
      #   @return [Orb::Models::PriceCreateParams::UnitConfig]
      required :unit_config, -> { Orb::PriceCreateParams::UnitConfig }

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
      #   @return [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil]
      optional :billing_cycle_configuration,
               -> { Orb::PriceCreateParams::BillingCycleConfiguration },
               nil?: true

      # @!attribute conversion_rate
      #   The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @return [Float, nil]
      optional :conversion_rate, Float, nil?: true

      # @!attribute dimensional_price_configuration
      #   For dimensional price: specifies a price group and dimension values
      #
      #   @return [Orb::Models::PriceCreateParams::DimensionalPriceConfiguration, nil]
      optional :dimensional_price_configuration,
               -> { Orb::PriceCreateParams::DimensionalPriceConfiguration },
               nil?: true

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
      #   @return [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil]
      optional :invoicing_cycle_configuration,
               -> { Orb::PriceCreateParams::InvoicingCycleConfiguration },
               nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute package_config
      #
      #   @return [Orb::Models::PriceCreateParams::PackageConfig]
      required :package_config, -> { Orb::PriceCreateParams::PackageConfig }

      # @!attribute matrix_config
      #
      #   @return [Orb::Models::PriceCreateParams::MatrixConfig]
      required :matrix_config, -> { Orb::PriceCreateParams::MatrixConfig }

      # @!attribute matrix_with_allocation_config
      #
      #   @return [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig]
      required :matrix_with_allocation_config, -> { Orb::PriceCreateParams::MatrixWithAllocationConfig }

      # @!attribute tiered_config
      #
      #   @return [Orb::Models::PriceCreateParams::TieredConfig]
      required :tiered_config, -> { Orb::PriceCreateParams::TieredConfig }

      # @!attribute tiered_bps_config
      #
      #   @return [Orb::Models::PriceCreateParams::TieredBpsConfig]
      required :tiered_bps_config, -> { Orb::PriceCreateParams::TieredBpsConfig }

      # @!attribute bps_config
      #
      #   @return [Orb::Models::PriceCreateParams::BpsConfig]
      required :bps_config, -> { Orb::PriceCreateParams::BpsConfig }

      # @!attribute bulk_bps_config
      #
      #   @return [Orb::Models::PriceCreateParams::BulkBpsConfig]
      required :bulk_bps_config, -> { Orb::PriceCreateParams::BulkBpsConfig }

      # @!attribute bulk_config
      #
      #   @return [Orb::Models::PriceCreateParams::BulkConfig]
      required :bulk_config, -> { Orb::PriceCreateParams::BulkConfig }

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

      # @!method initialize(cadence:, currency:, item_id:, model_type:, name:, unit_config:, package_config:, matrix_config:, matrix_with_allocation_config:, tiered_config:, tiered_bps_config:, bps_config:, bulk_bps_config:, bulk_config:, threshold_total_amount_config:, tiered_package_config:, grouped_tiered_config:, max_group_tiered_package_config:, tiered_with_minimum_config:, package_with_allocation_config:, tiered_package_with_minimum_config:, unit_with_percent_config:, tiered_with_proration_config:, unit_with_proration_config:, grouped_allocation_config:, grouped_with_prorated_minimum_config:, grouped_with_metered_minimum_config:, matrix_with_display_name_config:, bulk_with_proration_config:, grouped_tiered_package_config:, scalable_matrix_with_unit_pricing_config:, scalable_matrix_with_tiered_pricing_config:, cumulative_grouped_bulk_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, request_options: {})
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
      #   @param unit_config [Orb::Models::PriceCreateParams::UnitConfig]
      #
      #   @param package_config [Orb::Models::PriceCreateParams::PackageConfig]
      #
      #   @param matrix_config [Orb::Models::PriceCreateParams::MatrixConfig]
      #
      #   @param matrix_with_allocation_config [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig]
      #
      #   @param tiered_config [Orb::Models::PriceCreateParams::TieredConfig]
      #
      #   @param tiered_bps_config [Orb::Models::PriceCreateParams::TieredBpsConfig]
      #
      #   @param bps_config [Orb::Models::PriceCreateParams::BpsConfig]
      #
      #   @param bulk_bps_config [Orb::Models::PriceCreateParams::BulkBpsConfig]
      #
      #   @param bulk_config [Orb::Models::PriceCreateParams::BulkConfig]
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
      #   @param billing_cycle_configuration [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      #
      #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @param dimensional_price_configuration [Orb::Models::PriceCreateParams::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
      #
      #   @param external_price_id [String, nil] An alias for the price.
      #
      #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
      #
      #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
      #
      #   @param invoicing_cycle_configuration [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
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

      class UnitConfig < Orb::Internal::Type::BaseModel
        # @!attribute unit_amount
        #   Rate per unit of usage
        #
        #   @return [String]
        required :unit_amount, String

        # @!method initialize(unit_amount:)
        #   @param unit_amount [String] Rate per unit of usage
      end

      class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute duration
        #   The duration of the billing period.
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute duration_unit
        #   The unit of billing period duration.
        #
        #   @return [Symbol, Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit]
        required :duration_unit, enum: -> { Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit }

        # @!method initialize(duration:, duration_unit:)
        #   For custom cadence: specifies the duration of the billing period in days or
        #   months.
        #
        #   @param duration [Integer] The duration of the billing period.
        #
        #   @param duration_unit [Symbol, Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

        # The unit of billing period duration.
        #
        # @see Orb::Models::PriceCreateParams::BillingCycleConfiguration#duration_unit
        module DurationUnit
          extend Orb::Internal::Type::Enum

          DAY = :day
          MONTH = :month

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute dimension_values
        #   The list of dimension values matching (in order) the dimensions of the price
        #   group
        #
        #   @return [Array<String>]
        required :dimension_values, Orb::Internal::Type::ArrayOf[String]

        # @!attribute dimensional_price_group_id
        #   The id of the dimensional price group to include this price in
        #
        #   @return [String, nil]
        optional :dimensional_price_group_id, String, nil?: true

        # @!attribute external_dimensional_price_group_id
        #   The external id of the dimensional price group to include this price in
        #
        #   @return [String, nil]
        optional :external_dimensional_price_group_id, String, nil?: true

        # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::DimensionalPriceConfiguration} for more
        #   details.
        #
        #   For dimensional price: specifies a price group and dimension values
        #
        #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
        #
        #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
        #
        #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
      end

      class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute duration
        #   The duration of the billing period.
        #
        #   @return [Integer]
        required :duration, Integer

        # @!attribute duration_unit
        #   The unit of billing period duration.
        #
        #   @return [Symbol, Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit]
        required :duration_unit,
                 enum: -> {
                   Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit
                 }

        # @!method initialize(duration:, duration_unit:)
        #   Within each billing cycle, specifies the cadence at which invoices are produced.
        #   If unspecified, a single invoice is produced per billing cycle.
        #
        #   @param duration [Integer] The duration of the billing period.
        #
        #   @param duration_unit [Symbol, Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

        # The unit of billing period duration.
        #
        # @see Orb::Models::PriceCreateParams::InvoicingCycleConfiguration#duration_unit
        module DurationUnit
          extend Orb::Internal::Type::Enum

          DAY = :day
          MONTH = :month

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class PackageConfig < Orb::Internal::Type::BaseModel
        # @!attribute package_amount
        #   A currency amount to rate usage by
        #
        #   @return [String]
        required :package_amount, String

        # @!attribute package_size
        #   An integer amount to represent package size. For example, 1000 here would divide
        #   usage by 1000 before multiplying by package_amount in rating
        #
        #   @return [Integer]
        required :package_size, Integer

        # @!method initialize(package_amount:, package_size:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::PackageConfig} for more details.
        #
        #   @param package_amount [String] A currency amount to rate usage by
        #
        #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
      end

      class MatrixConfig < Orb::Internal::Type::BaseModel
        # @!attribute default_unit_amount
        #   Default per unit rate for any usage not bucketed into a specified matrix_value
        #
        #   @return [String]
        required :default_unit_amount, String

        # @!attribute dimensions
        #   One or two event property values to evaluate matrix groups by
        #
        #   @return [Array<String, nil>]
        required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

        # @!attribute matrix_values
        #   Matrix values for specified matrix grouping keys
        #
        #   @return [Array<Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue>]
        required :matrix_values,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::MatrixConfig::MatrixValue] }

        # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
        #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
        #
        #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
        #
        #   @param matrix_values [Array<Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

        class MatrixValue < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #   One or two matrix keys to filter usage to this Matrix value by. For example,
          #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #   instance tier.
          #
          #   @return [Array<String, nil>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute unit_amount
          #   Unit price for the specified dimension_values
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(dimension_values:, unit_amount:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue} for more details.
          #
          #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
          #
          #   @param unit_amount [String] Unit price for the specified dimension_values
        end
      end

      class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
        # @!attribute allocation
        #   Allocation to be used to calculate the price
        #
        #   @return [Float]
        required :allocation, Float

        # @!attribute default_unit_amount
        #   Default per unit rate for any usage not bucketed into a specified matrix_value
        #
        #   @return [String]
        required :default_unit_amount, String

        # @!attribute dimensions
        #   One or two event property values to evaluate matrix groups by
        #
        #   @return [Array<String, nil>]
        required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

        # @!attribute matrix_values
        #   Matrix values for specified matrix grouping keys
        #
        #   @return [Array<Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue>]
        required :matrix_values,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]
                 }

        # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
        #   @param allocation [Float] Allocation to be used to calculate the price
        #
        #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
        #
        #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
        #
        #   @param matrix_values [Array<Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

        class MatrixValue < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #   One or two matrix keys to filter usage to this Matrix value by. For example,
          #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #   instance tier.
          #
          #   @return [Array<String, nil>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute unit_amount
          #   Unit price for the specified dimension_values
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(dimension_values:, unit_amount:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue} for
          #   more details.
          #
          #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
          #
          #   @param unit_amount [String] Unit price for the specified dimension_values
        end
      end

      class TieredConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for rating based on total usage quantities into the specified tier
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::TieredConfig::Tier] }

        # @!method initialize(tiers:)
        #   @param tiers [Array<Orb::Models::PriceCreateParams::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute first_unit
          #   Exclusive tier starting value
          #
          #   @return [Float]
          required :first_unit, Float

          # @!attribute unit_amount
          #   Amount per unit
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
          #   @param unit_amount [String] Amount per unit
          #
          #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
        end
      end

      class TieredBpsConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
        #   tiers
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredBpsConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::TieredBpsConfig::Tier] }

        # @!method initialize(tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::TieredBpsConfig} for more details.
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute bps
          #   Per-event basis point rate
          #
          #   @return [Float]
          required :bps, Float

          # @!attribute minimum_amount
          #   Exclusive tier starting value
          #
          #   @return [String]
          required :minimum_amount, String

          # @!attribute maximum_amount
          #   Inclusive tier ending value
          #
          #   @return [String, nil]
          optional :maximum_amount, String, nil?: true

          # @!attribute per_unit_maximum
          #   Per unit maximum to charge
          #
          #   @return [String, nil]
          optional :per_unit_maximum, String, nil?: true

          # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
          #   @param bps [Float] Per-event basis point rate
          #
          #   @param minimum_amount [String] Exclusive tier starting value
          #
          #   @param maximum_amount [String, nil] Inclusive tier ending value
          #
          #   @param per_unit_maximum [String, nil] Per unit maximum to charge
        end
      end

      class BpsConfig < Orb::Internal::Type::BaseModel
        # @!attribute bps
        #   Basis point take rate per event
        #
        #   @return [Float]
        required :bps, Float

        # @!attribute per_unit_maximum
        #   Optional currency amount maximum to cap spend per event
        #
        #   @return [String, nil]
        optional :per_unit_maximum, String, nil?: true

        # @!method initialize(bps:, per_unit_maximum: nil)
        #   @param bps [Float] Basis point take rate per event
        #
        #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
      end

      class BulkBpsConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
        #   tier based on total volume
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkBpsConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::BulkBpsConfig::Tier] }

        # @!method initialize(tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::BulkBpsConfig} for more details.
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute bps
          #   Basis points to rate on
          #
          #   @return [Float]
          required :bps, Float

          # @!attribute maximum_amount
          #   Upper bound for tier
          #
          #   @return [String, nil]
          optional :maximum_amount, String, nil?: true

          # @!attribute per_unit_maximum
          #   The maximum amount to charge for any one event
          #
          #   @return [String, nil]
          optional :per_unit_maximum, String, nil?: true

          # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
          #   @param bps [Float] Basis points to rate on
          #
          #   @param maximum_amount [String, nil] Upper bound for tier
          #
          #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
        end
      end

      class BulkConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Bulk tiers for rating based on total usage volume
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::BulkConfig::Tier] }

        # @!method initialize(tiers:)
        #   @param tiers [Array<Orb::Models::PriceCreateParams::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute unit_amount
          #   Amount per unit
          #
          #   @return [String]
          required :unit_amount, String

          # @!attribute maximum_units
          #   Upper bound for this tier
          #
          #   @return [Float, nil]
          optional :maximum_units, Float, nil?: true

          # @!method initialize(unit_amount:, maximum_units: nil)
          #   @param unit_amount [String] Amount per unit
          #
          #   @param maximum_units [Float, nil] Upper bound for this tier
        end
      end
    end
  end
end
