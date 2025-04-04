# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#create
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::PriceCreateParams::Cadence]
      required :cadence, enum: -> { Orb::Models::PriceCreateParams::Cadence }

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
      required :model_type, enum: -> { Orb::Models::PriceCreateParams::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute unit_config
      #
      #   @return [Orb::Models::PriceCreateParams::UnitConfig]
      required :unit_config, -> { Orb::Models::PriceCreateParams::UnitConfig }

      # @!attribute billable_metric_id
      #   The id of the billable metric for the price. Only needed if the price is
      #     usage-based.
      #
      #   @return [String, nil]
      optional :billable_metric_id, String, nil?: true

      # @!attribute billed_in_advance
      #   If the Price represents a fixed cost, the price will be billed in-advance if
      #     this is true, and in-arrears if this is false.
      #
      #   @return [Boolean, nil]
      optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_cycle_configuration
      #   For custom cadence: specifies the duration of the billing period in days or
      #     months.
      #
      #   @return [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil]
      optional :billing_cycle_configuration,
               -> { Orb::Models::PriceCreateParams::BillingCycleConfiguration },
               nil?: true

      # @!attribute conversion_rate
      #   The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @return [Float, nil]
      optional :conversion_rate, Float, nil?: true

      # @!attribute external_price_id
      #   An alias for the price.
      #
      #   @return [String, nil]
      optional :external_price_id, String, nil?: true

      # @!attribute fixed_price_quantity
      #   If the Price represents a fixed cost, this represents the quantity of units
      #     applied.
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
      #     If unspecified, a single invoice is produced per billing cycle.
      #
      #   @return [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil]
      optional :invoicing_cycle_configuration,
               -> { Orb::Models::PriceCreateParams::InvoicingCycleConfiguration },
               nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute package_config
      #
      #   @return [Orb::Models::PriceCreateParams::PackageConfig]
      required :package_config, -> { Orb::Models::PriceCreateParams::PackageConfig }

      # @!attribute matrix_config
      #
      #   @return [Orb::Models::PriceCreateParams::MatrixConfig]
      required :matrix_config, -> { Orb::Models::PriceCreateParams::MatrixConfig }

      # @!attribute matrix_with_allocation_config
      #
      #   @return [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig]
      required :matrix_with_allocation_config, -> { Orb::Models::PriceCreateParams::MatrixWithAllocationConfig }

      # @!attribute tiered_config
      #
      #   @return [Orb::Models::PriceCreateParams::TieredConfig]
      required :tiered_config, -> { Orb::Models::PriceCreateParams::TieredConfig }

      # @!attribute tiered_bps_config
      #
      #   @return [Orb::Models::PriceCreateParams::TieredBpsConfig]
      required :tiered_bps_config, -> { Orb::Models::PriceCreateParams::TieredBpsConfig }

      # @!attribute bps_config
      #
      #   @return [Orb::Models::PriceCreateParams::BpsConfig]
      required :bps_config, -> { Orb::Models::PriceCreateParams::BpsConfig }

      # @!attribute bulk_bps_config
      #
      #   @return [Orb::Models::PriceCreateParams::BulkBpsConfig]
      required :bulk_bps_config, -> { Orb::Models::PriceCreateParams::BulkBpsConfig }

      # @!attribute bulk_config
      #
      #   @return [Orb::Models::PriceCreateParams::BulkConfig]
      required :bulk_config, -> { Orb::Models::PriceCreateParams::BulkConfig }

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

      # @!parse
      #   # @param cadence [Symbol, Orb::Models::PriceCreateParams::Cadence]
      #   # @param currency [String]
      #   # @param item_id [String]
      #   # @param model_type [Symbol, Orb::Models::PriceCreateParams::ModelType]
      #   # @param name [String]
      #   # @param unit_config [Orb::Models::PriceCreateParams::UnitConfig]
      #   # @param package_config [Orb::Models::PriceCreateParams::PackageConfig]
      #   # @param matrix_config [Orb::Models::PriceCreateParams::MatrixConfig]
      #   # @param matrix_with_allocation_config [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig]
      #   # @param tiered_config [Orb::Models::PriceCreateParams::TieredConfig]
      #   # @param tiered_bps_config [Orb::Models::PriceCreateParams::TieredBpsConfig]
      #   # @param bps_config [Orb::Models::PriceCreateParams::BpsConfig]
      #   # @param bulk_bps_config [Orb::Models::PriceCreateParams::BulkBpsConfig]
      #   # @param bulk_config [Orb::Models::PriceCreateParams::BulkConfig]
      #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
      #   # @param tiered_package_config [Hash{Symbol=>Object}]
      #   # @param grouped_tiered_config [Hash{Symbol=>Object}]
      #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
      #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
      #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
      #   # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
      #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
      #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
      #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
      #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
      #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
      #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
      #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
      #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
      #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
      #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
      #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
      #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
      #   # @param billable_metric_id [String, nil]
      #   # @param billed_in_advance [Boolean, nil]
      #   # @param billing_cycle_configuration [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil]
      #   # @param conversion_rate [Float, nil]
      #   # @param external_price_id [String, nil]
      #   # @param fixed_price_quantity [Float, nil]
      #   # @param invoice_grouping_key [String, nil]
      #   # @param invoicing_cycle_configuration [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     cadence:,
      #     currency:,
      #     item_id:,
      #     model_type:,
      #     name:,
      #     unit_config:,
      #     package_config:,
      #     matrix_config:,
      #     matrix_with_allocation_config:,
      #     tiered_config:,
      #     tiered_bps_config:,
      #     bps_config:,
      #     bulk_bps_config:,
      #     bulk_config:,
      #     threshold_total_amount_config:,
      #     tiered_package_config:,
      #     grouped_tiered_config:,
      #     max_group_tiered_package_config:,
      #     tiered_with_minimum_config:,
      #     package_with_allocation_config:,
      #     tiered_package_with_minimum_config:,
      #     unit_with_percent_config:,
      #     tiered_with_proration_config:,
      #     unit_with_proration_config:,
      #     grouped_allocation_config:,
      #     grouped_with_prorated_minimum_config:,
      #     grouped_with_metered_minimum_config:,
      #     matrix_with_display_name_config:,
      #     bulk_with_proration_config:,
      #     grouped_tiered_package_config:,
      #     scalable_matrix_with_unit_pricing_config:,
      #     scalable_matrix_with_tiered_pricing_config:,
      #     cumulative_grouped_bulk_config:,
      #     billable_metric_id: nil,
      #     billed_in_advance: nil,
      #     billing_cycle_configuration: nil,
      #     conversion_rate: nil,
      #     external_price_id: nil,
      #     fixed_price_quantity: nil,
      #     invoice_grouping_key: nil,
      #     invoicing_cycle_configuration: nil,
      #     metadata: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      # The cadence to bill for this price on.
      module Cadence
        extend Orb::Internal::Type::Enum

        ANNUAL = :annual
        SEMI_ANNUAL = :semi_annual
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        ONE_TIME = :one_time
        CUSTOM = :custom

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module ModelType
        extend Orb::Internal::Type::Enum

        CUMULATIVE_GROUPED_BULK = :cumulative_grouped_bulk

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class UnitConfig < Orb::Internal::Type::BaseModel
        # @!attribute unit_amount
        #   Rate per unit of usage
        #
        #   @return [String]
        required :unit_amount, String

        # @!parse
        #   # @param unit_amount [String]
        #   #
        #   def initialize(unit_amount:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
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
        required :duration_unit,
                 enum: -> { Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit }

        # @!parse
        #   # For custom cadence: specifies the duration of the billing period in days or
        #   #   months.
        #   #
        #   # @param duration [Integer]
        #   # @param duration_unit [Symbol, Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit]
        #   #
        #   def initialize(duration:, duration_unit:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        # The unit of billing period duration.
        #
        # @see Orb::Models::PriceCreateParams::BillingCycleConfiguration#duration_unit
        module DurationUnit
          extend Orb::Internal::Type::Enum

          DAY = :day
          MONTH = :month

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
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
                 enum: -> { Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit }

        # @!parse
        #   # Within each billing cycle, specifies the cadence at which invoices are produced.
        #   #   If unspecified, a single invoice is produced per billing cycle.
        #   #
        #   # @param duration [Integer]
        #   # @param duration_unit [Symbol, Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit]
        #   #
        #   def initialize(duration:, duration_unit:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        # The unit of billing period duration.
        #
        # @see Orb::Models::PriceCreateParams::InvoicingCycleConfiguration#duration_unit
        module DurationUnit
          extend Orb::Internal::Type::Enum

          DAY = :day
          MONTH = :month

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
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
        #     usage by 1000 before multiplying by package_amount in rating
        #
        #   @return [Integer]
        required :package_size, Integer

        # @!parse
        #   # @param package_amount [String]
        #   # @param package_size [Integer]
        #   #
        #   def initialize(package_amount:, package_size:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
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
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue] }

        # @!parse
        #   # @param default_unit_amount [String]
        #   # @param dimensions [Array<String, nil>]
        #   # @param matrix_values [Array<Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue>]
        #   #
        #   def initialize(default_unit_amount:, dimensions:, matrix_values:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        class MatrixValue < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #   One or two matrix keys to filter usage to this Matrix value by. For example,
          #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #     instance tier.
          #
          #   @return [Array<String, nil>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute unit_amount
          #   Unit price for the specified dimension_values
          #
          #   @return [String]
          required :unit_amount, String

          # @!parse
          #   # @param dimension_values [Array<String, nil>]
          #   # @param unit_amount [String]
          #   #
          #   def initialize(dimension_values:, unit_amount:, **) = super

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
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
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue] }

        # @!parse
        #   # @param allocation [Float]
        #   # @param default_unit_amount [String]
        #   # @param dimensions [Array<String, nil>]
        #   # @param matrix_values [Array<Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue>]
        #   #
        #   def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        class MatrixValue < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #   One or two matrix keys to filter usage to this Matrix value by. For example,
          #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #     instance tier.
          #
          #   @return [Array<String, nil>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute unit_amount
          #   Unit price for the specified dimension_values
          #
          #   @return [String]
          required :unit_amount, String

          # @!parse
          #   # @param dimension_values [Array<String, nil>]
          #   # @param unit_amount [String]
          #   #
          #   def initialize(dimension_values:, unit_amount:, **) = super

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
        end
      end

      class TieredConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for rating based on total usage quantities into the specified tier
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceCreateParams::TieredConfig::Tier] }

        # @!parse
        #   # @param tiers [Array<Orb::Models::PriceCreateParams::TieredConfig::Tier>]
        #   #
        #   def initialize(tiers:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute first_unit
          #   Inclusive tier starting value
          #
          #   @return [Float]
          required :first_unit, Float

          # @!attribute unit_amount
          #   Amount per unit
          #
          #   @return [String]
          required :unit_amount, String

          # @!attribute last_unit
          #   Exclusive tier ending value. If null, this is treated as the last tier
          #
          #   @return [Float, nil]
          optional :last_unit, Float, nil?: true

          # @!parse
          #   # @param first_unit [Float]
          #   # @param unit_amount [String]
          #   # @param last_unit [Float, nil]
          #   #
          #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
        end
      end

      class TieredBpsConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
        #     tiers
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredBpsConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier] }

        # @!parse
        #   # @param tiers [Array<Orb::Models::PriceCreateParams::TieredBpsConfig::Tier>]
        #   #
        #   def initialize(tiers:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute bps
          #   Per-event basis point rate
          #
          #   @return [Float]
          required :bps, Float

          # @!attribute minimum_amount
          #   Inclusive tier starting value
          #
          #   @return [String]
          required :minimum_amount, String

          # @!attribute maximum_amount
          #   Exclusive tier ending value
          #
          #   @return [String, nil]
          optional :maximum_amount, String, nil?: true

          # @!attribute per_unit_maximum
          #   Per unit maximum to charge
          #
          #   @return [String, nil]
          optional :per_unit_maximum, String, nil?: true

          # @!parse
          #   # @param bps [Float]
          #   # @param minimum_amount [String]
          #   # @param maximum_amount [String, nil]
          #   # @param per_unit_maximum [String, nil]
          #   #
          #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
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

        # @!parse
        #   # @param bps [Float]
        #   # @param per_unit_maximum [String, nil]
        #   #
        #   def initialize(bps:, per_unit_maximum: nil, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end

      class BulkBpsConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
        #     tier based on total volume
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkBpsConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier] }

        # @!parse
        #   # @param tiers [Array<Orb::Models::PriceCreateParams::BulkBpsConfig::Tier>]
        #   #
        #   def initialize(tiers:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

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

          # @!parse
          #   # @param bps [Float]
          #   # @param maximum_amount [String, nil]
          #   # @param per_unit_maximum [String, nil]
          #   #
          #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
        end
      end

      class BulkConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Bulk tiers for rating based on total usage volume
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Models::PriceCreateParams::BulkConfig::Tier] }

        # @!parse
        #   # @param tiers [Array<Orb::Models::PriceCreateParams::BulkConfig::Tier>]
        #   #
        #   def initialize(tiers:, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

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

          # @!parse
          #   # @param unit_amount [String]
          #   # @param maximum_units [Float, nil]
          #   #
          #   def initialize(unit_amount:, maximum_units: nil, **) = super

          # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
