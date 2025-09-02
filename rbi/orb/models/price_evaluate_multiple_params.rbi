# typed: strong

module Orb
  module Models
    class PriceEvaluateMultipleParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::PriceEvaluateMultipleParams, Orb::Internal::AnyHash)
        end

      # The exclusive upper bound for event timestamps
      sig { returns(Time) }
      attr_accessor :timeframe_end

      # The inclusive lower bound for event timestamps
      sig { returns(Time) }
      attr_accessor :timeframe_start

      # The ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # The external customer ID of the customer to which this evaluation is scoped.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # List of prices to evaluate (max 100)
      sig do
        returns(
          T.nilable(T::Array[Orb::PriceEvaluateMultipleParams::PriceEvaluation])
        )
      end
      attr_reader :price_evaluations

      sig do
        params(
          price_evaluations:
            T::Array[Orb::PriceEvaluateMultipleParams::PriceEvaluation::OrHash]
        ).void
      end
      attr_writer :price_evaluations

      sig do
        params(
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          price_evaluations:
            T::Array[Orb::PriceEvaluateMultipleParams::PriceEvaluation::OrHash],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The exclusive upper bound for event timestamps
        timeframe_end:,
        # The inclusive lower bound for event timestamps
        timeframe_start:,
        # The ID of the customer to which this evaluation is scoped.
        customer_id: nil,
        # The external customer ID of the customer to which this evaluation is scoped.
        external_customer_id: nil,
        # List of prices to evaluate (max 100)
        price_evaluations: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            timeframe_end: Time,
            timeframe_start: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String),
            price_evaluations:
              T::Array[Orb::PriceEvaluateMultipleParams::PriceEvaluation],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PriceEvaluation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceEvaluateMultipleParams::PriceEvaluation,
              Orb::Internal::AnyHash
            )
          end

        # The external ID of a price to evaluate that exists in your Orb account.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # A boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties) used to
        # filter the underlying billable metric
        sig { returns(T.nilable(String)) }
        attr_accessor :filter

        # Properties (or
        # [computed properties](/extensibility/advanced-metrics#computed-properties)) used
        # to group the underlying billable metric
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :grouping_keys

        sig { params(grouping_keys: T::Array[String]).void }
        attr_writer :grouping_keys

        # An inline price definition to evaluate, allowing you to test price
        # configurations before adding them to Orb.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingBulkPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum
              )
            )
          )
        end
        attr_accessor :price

        # The ID of a price to evaluate that exists in your Orb account.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            external_price_id: T.nilable(String),
            filter: T.nilable(String),
            grouping_keys: T::Array[String],
            price:
              T.nilable(
                T.any(
                  Orb::NewFloatingUnitPrice::OrHash,
                  Orb::NewFloatingPackagePrice::OrHash,
                  Orb::NewFloatingMatrixPrice::OrHash,
                  Orb::NewFloatingMatrixWithAllocationPrice::OrHash,
                  Orb::NewFloatingTieredPrice::OrHash,
                  Orb::NewFloatingBulkPrice::OrHash,
                  Orb::NewFloatingThresholdTotalAmountPrice::OrHash,
                  Orb::NewFloatingTieredPackagePrice::OrHash,
                  Orb::NewFloatingGroupedTieredPrice::OrHash,
                  Orb::NewFloatingMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewFloatingTieredWithMinimumPrice::OrHash,
                  Orb::NewFloatingPackageWithAllocationPrice::OrHash,
                  Orb::NewFloatingTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewFloatingUnitWithPercentPrice::OrHash,
                  Orb::NewFloatingTieredWithProrationPrice::OrHash,
                  Orb::NewFloatingUnitWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedAllocationPrice::OrHash,
                  Orb::NewFloatingGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewFloatingGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::NewFloatingMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewFloatingBulkWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedTieredPackagePrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewFloatingCumulativeGroupedBulkPrice::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::OrHash
                )
              ),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The external ID of a price to evaluate that exists in your Orb account.
          external_price_id: nil,
          # A boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties) used to
          # filter the underlying billable metric
          filter: nil,
          # Properties (or
          # [computed properties](/extensibility/advanced-metrics#computed-properties)) used
          # to group the underlying billable metric
          grouping_keys: nil,
          # An inline price definition to evaluate, allowing you to test price
          # configurations before adding them to Orb.
          price: nil,
          # The ID of a price to evaluate that exists in your Orb account.
          price_id: nil
        )
        end

        sig do
          override.returns(
            {
              external_price_id: T.nilable(String),
              filter: T.nilable(String),
              grouping_keys: T::Array[String],
              price:
                T.nilable(
                  T.any(
                    Orb::NewFloatingUnitPrice,
                    Orb::NewFloatingPackagePrice,
                    Orb::NewFloatingMatrixPrice,
                    Orb::NewFloatingMatrixWithAllocationPrice,
                    Orb::NewFloatingTieredPrice,
                    Orb::NewFloatingBulkPrice,
                    Orb::NewFloatingThresholdTotalAmountPrice,
                    Orb::NewFloatingTieredPackagePrice,
                    Orb::NewFloatingGroupedTieredPrice,
                    Orb::NewFloatingMaxGroupTieredPackagePrice,
                    Orb::NewFloatingTieredWithMinimumPrice,
                    Orb::NewFloatingPackageWithAllocationPrice,
                    Orb::NewFloatingTieredPackageWithMinimumPrice,
                    Orb::NewFloatingUnitWithPercentPrice,
                    Orb::NewFloatingTieredWithProrationPrice,
                    Orb::NewFloatingUnitWithProrationPrice,
                    Orb::NewFloatingGroupedAllocationPrice,
                    Orb::NewFloatingGroupedWithProratedMinimumPrice,
                    Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                    Orb::NewFloatingMatrixWithDisplayNamePrice,
                    Orb::NewFloatingBulkWithProrationPrice,
                    Orb::NewFloatingGroupedTieredPackagePrice,
                    Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                    Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                    Orb::NewFloatingCumulativeGroupedBulkPrice,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum
                  )
                ),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # An inline price definition to evaluate, allowing you to test price
        # configurations before adding them to Orb.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingBulkPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum
              )
            end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_min_max_thresholds_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                currency: String,
                grouped_with_min_max_thresholds_config:
                  T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_with_min_max_thresholds_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              model_type: :grouped_with_min_max_thresholds
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  currency: String,
                  grouped_with_min_max_thresholds_config:
                    T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Minimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::MinimumConfig
              )
            end
            attr_reader :minimum_config

            sig do
              params(
                minimum_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::MinimumConfig::OrHash
              ).void
            end
            attr_writer :minimum_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                minimum_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::MinimumConfig::OrHash,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              # The id of the item the price will be associated with.
              item_id:,
              minimum_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              model_type: :minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  minimum_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::MinimumConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MinimumConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Minimum::MinimumConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The minimum amount to apply
              sig { returns(String) }
              attr_accessor :minimum_amount

              # By default, subtotals from minimum composite prices are prorated based on the
              # service period. Set to false to disable proration.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :prorated

              sig do
                params(
                  minimum_amount: String,
                  prorated: T.nilable(T::Boolean)
                ).returns(T.attached_class)
              end
              def self.new(
                # The minimum amount to apply
                minimum_amount:,
                # By default, subtotals from minimum composite prices are prorated based on the
                # service period. Set to false to disable proration.
                prorated: nil
              )
              end

              sig do
                override.returns(
                  { minimum_amount: String, prorated: T.nilable(T::Boolean) }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
