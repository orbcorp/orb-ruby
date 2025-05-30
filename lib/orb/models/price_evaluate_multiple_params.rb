# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate_multiple
    class PriceEvaluateMultipleParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute timeframe_end
      #   The exclusive upper bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #   The inclusive lower bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!attribute customer_id
      #   The ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute events
      #   Optional list of preview events to use instead of actual usage data (max 500)
      #
      #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::Event>, nil]
      optional :events,
               -> {
                 Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::Event]
               },
               nil?: true

      # @!attribute external_customer_id
      #   The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute price_evaluations
      #   List of prices to evaluate (max 100)
      #
      #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation>, nil]
      optional :price_evaluations,
               -> { Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation] }

      # @!method initialize(timeframe_end:, timeframe_start:, customer_id: nil, events: nil, external_customer_id: nil, price_evaluations: nil, request_options: {})
      #   @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      #   @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      #   @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      #   @param events [Array<Orb::Models::PriceEvaluateMultipleParams::Event>, nil] Optional list of preview events to use instead of actual usage data (max 500)
      #
      #   @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @param price_evaluations [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation>] List of prices to evaluate (max 100)
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class Event < Orb::Internal::Type::BaseModel
        # @!attribute event_name
        #   A name to meaningfully identify the action or event type.
        #
        #   @return [String]
        required :event_name, String

        # @!attribute properties
        #   A dictionary of custom properties. Values in this dictionary must be numeric,
        #   boolean, or strings. Nested dictionaries are disallowed.
        #
        #   @return [Hash{Symbol=>Object}]
        required :properties, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute timestamp
        #   An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        #   represent the time that usage was recorded, and is particularly important to
        #   attribute usage to a given billing period.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute customer_id
        #   The Orb Customer identifier
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute external_customer_id
        #   An alias for the Orb customer, whose mapping is specified when creating the
        #   customer
        #
        #   @return [String, nil]
        optional :external_customer_id, String, nil?: true

        # @!method initialize(event_name:, properties:, timestamp:, customer_id: nil, external_customer_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceEvaluateMultipleParams::Event} for more details.
        #
        #   @param event_name [String] A name to meaningfully identify the action or event type.
        #
        #   @param properties [Hash{Symbol=>Object}] A dictionary of custom properties. Values in this dictionary must be numeric, bo
        #
        #   @param timestamp [Time] An ISO 8601 format date with no timezone offset (i.e. UTC). This should represen
        #
        #   @param customer_id [String, nil] The Orb Customer identifier
        #
        #   @param external_customer_id [String, nil] An alias for the Orb customer, whose mapping is specified when creating the cust
      end

      class PriceEvaluation < Orb::Internal::Type::BaseModel
        # @!attribute filter
        #   A boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #   filter the underlying billable metric
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute grouping_keys
        #   Properties (or
        #   [computed properties](/extensibility/advanced-metrics#computed-properties)) used
        #   to group the underlying billable metric
        #
        #   @return [Array<String>, nil]
        optional :grouping_keys, Orb::Internal::Type::ArrayOf[String]

        # @!attribute price
        #   An inline price definition to evaluate, allowing you to test price
        #   configurations before adding them to Orb.
        #
        #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk, nil]
        optional :price, union: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price }, nil?: true

        # @!attribute price_id
        #   The ID of a price to evaluate that exists in your Orb account.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(filter: nil, grouping_keys: nil, price: nil, price_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation} for more details.
        #
        #   @param filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie
        #
        #   @param grouping_keys [Array<String>] Properties (or [computed properties](/extensibility/advanced-metrics#computed-pr
        #
        #   @param price [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk, nil] An inline price definition to evaluate, allowing you to test price configuration
        #
        #   @param price_id [String, nil] The ID of a price to evaluate that exists in your Orb account.

        # An inline price definition to evaluate, allowing you to test price
        # configurations before adding them to Orb.
        #
        # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit }

          variant :package, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package }

          variant :matrix, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix }

          variant :matrix_with_allocation,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation }

          variant :tiered, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered }

          variant :tiered_bps, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps }

          variant :bps, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps }

          variant :bulk_bps, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps }

          variant :bulk, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk }

          variant :threshold_total_amount,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount }

          variant :tiered_package,
                  -> {
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage
                  }

          variant :grouped_tiered,
                  -> {
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered
                  }

          variant :max_group_tiered_package,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage }

          variant :tiered_with_minimum,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum }

          variant :package_with_allocation,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation }

          variant :tiered_package_with_minimum,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum }

          variant :unit_with_percent,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent }

          variant :tiered_with_proration,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration }

          variant :unit_with_proration,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration }

          variant :grouped_allocation,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum }

          variant :grouped_with_metered_minimum,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum }

          variant :matrix_with_display_name,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName }

          variant :bulk_with_proration,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration }

          variant :grouped_tiered_package,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage }

          variant :scalable_matrix_with_unit_pricing,
                  -> {
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing
                  }

          variant :scalable_matrix_with_tiered_pricing,
                  -> {
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing
                  }

          variant :cumulative_grouped_bulk,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk }

          class Unit < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence
                     }

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
            #   @return [Symbol, :unit]
            required :model_type, const: :unit

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig]
            required :unit_config,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig
                     }

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence
                     }

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
            #   @return [Symbol, :package]
            required :model_type, const: :package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig]
            required :package_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig }

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package#package_config
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence
                     }

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

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig]
            required :matrix_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix]
            required :model_type, const: :matrix

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix#matrix_config
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
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue]
                       }

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
                #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence
                     }

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

            # @!attribute matrix_with_allocation_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            required :matrix_with_allocation_config,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig
                     }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_allocation]
            required :model_type, const: :matrix_with_allocation

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_with_allocation_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_allocation_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation#matrix_with_allocation_config
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
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                         ]
                       end

              # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              #   @param allocation [Float] Allocation to be used to calculate the price
              #
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
                #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence
                     }

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
            #   @return [Symbol, :tiered]
            required :model_type, const: :tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig]
            required :tiered_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig }

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence]
            required :cadence,
                     enum: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence }

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
            #   @return [Symbol, :tiered_bps]
            required :model_type, const: :tiered_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_bps_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig]
            required :tiered_bps_config,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig
                     }

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig]
            required :bps_config,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig
                     }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence
                     }

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
            #   @return [Symbol, :bps]
            required :model_type, const: :bps

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bps_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps} for more
            #   details.
            #
            #   @param bps_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps#bps_config
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

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence
                     }

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
            #   @return [Symbol, :bulk_bps]
            required :model_type, const: :bulk_bps

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps} for
            #   more details.
            #
            #   @param bulk_bps_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

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

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig]
            required :bulk_config,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig
                     }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence
                     }

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
            #   @return [Symbol, :bulk]
            required :model_type, const: :bulk

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk} for
            #   more details.
            #
            #   @param bulk_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

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

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence
                     }

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
            #   @return [Symbol, :threshold_total_amount]
            required :model_type, const: :threshold_total_amount

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute threshold_total_amount_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence
                     }

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
            #   @return [Symbol, :tiered_package]
            required :model_type, const: :tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_tiered_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered]
            required :model_type, const: :grouped_tiered

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_tiered_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_tiered_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence
                     }

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

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :max_group_tiered_package]
            required :model_type, const: :max_group_tiered_package

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence
                     }

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
            #   @return [Symbol, :tiered_with_minimum]
            required :model_type, const: :tiered_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence
                     }

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
            #   @return [Symbol, :package_with_allocation]
            required :model_type, const: :package_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_with_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :package_with_allocation_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence
                     }

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
            #   @return [Symbol, :tiered_package_with_minimum]
            required :model_type, const: :tiered_package_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_with_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_package_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence
                     }

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
            #   @return [Symbol, :unit_with_percent]
            required :model_type, const: :unit_with_percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_percent_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence
                     }

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
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence
                     }

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
            #   @return [Symbol, :unit_with_proration]
            required :model_type, const: :unit_with_proration

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_allocation]
            required :model_type, const: :grouped_allocation

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_prorated_minimum]
            required :model_type, const: :grouped_with_prorated_minimum

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_metered_minimum]
            required :model_type, const: :grouped_with_metered_minimum

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence
                     }

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

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_display_name]
            required :model_type, const: :matrix_with_display_name

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence
                     }

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
            #   @return [Symbol, :bulk_with_proration]
            required :model_type, const: :bulk_with_proration

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered_package]
            required :model_type, const: :grouped_tiered_package

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence
                     }

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
            #   @return [Symbol, :scalable_matrix_with_unit_pricing]
            required :model_type, const: :scalable_matrix_with_unit_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_unit_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_unit_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence
                     }

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
            #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
            required :model_type, const: :scalable_matrix_with_tiered_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_tiered_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_tiered_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence
                     }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Symbol, :cumulative_grouped_bulk]
            required :model_type, const: :cumulative_grouped_bulk

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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
                     },
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
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk#dimensional_price_configuration
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
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk)]
        end
      end
    end
  end
end
