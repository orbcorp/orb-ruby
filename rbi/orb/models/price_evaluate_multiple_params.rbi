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

      # Optional list of preview events to use instead of actual usage data (max 500)
      sig do
        returns(T.nilable(T::Array[Orb::PriceEvaluateMultipleParams::Event]))
      end
      attr_accessor :events

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
          events:
            T.nilable(
              T::Array[Orb::PriceEvaluateMultipleParams::Event::OrHash]
            ),
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
        # Optional list of preview events to use instead of actual usage data (max 500)
        events: nil,
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
            events:
              T.nilable(T::Array[Orb::PriceEvaluateMultipleParams::Event]),
            external_customer_id: T.nilable(String),
            price_evaluations:
              T::Array[Orb::PriceEvaluateMultipleParams::PriceEvaluation],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Event < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceEvaluateMultipleParams::Event,
              Orb::Internal::AnyHash
            )
          end

        # A name to meaningfully identify the action or event type.
        sig { returns(String) }
        attr_accessor :event_name

        # A dictionary of custom properties. Values in this dictionary must be numeric,
        # boolean, or strings. Nested dictionaries are disallowed.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :properties

        # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        # represent the time that usage was recorded, and is particularly important to
        # attribute usage to a given billing period.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The Orb Customer identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # An alias for the Orb customer, whose mapping is specified when creating the
        # customer
        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig do
          params(
            event_name: String,
            properties: T::Hash[Symbol, T.anything],
            timestamp: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A name to meaningfully identify the action or event type.
          event_name:,
          # A dictionary of custom properties. Values in this dictionary must be numeric,
          # boolean, or strings. Nested dictionaries are disallowed.
          properties:,
          # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
          # represent the time that usage was recorded, and is particularly important to
          # attribute usage to a given billing period.
          timestamp:,
          # The Orb Customer identifier
          customer_id: nil,
          # An alias for the Orb customer, whose mapping is specified when creating the
          # customer
          external_customer_id: nil
        )
        end

        sig do
          override.returns(
            {
              event_name: String,
              properties: T::Hash[Symbol, T.anything],
              timestamp: Time,
              customer_id: T.nilable(String),
              external_customer_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class PriceEvaluation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceEvaluateMultipleParams::PriceEvaluation,
              Orb::Internal::AnyHash
            )
          end

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
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk
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
            filter: T.nilable(String),
            grouping_keys: T::Array[String],
            price:
              T.nilable(
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::OrHash,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::OrHash
                )
              ),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
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
              filter: T.nilable(String),
              grouping_keys: T::Array[String],
              price:
                T.nilable(
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk
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
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing,
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk
              )
            end

          class Unit < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig
              )
            end
            attr_reader :unit_config

            sig do
              params(
                unit_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig::OrHash
              ).void
            end
            attr_writer :unit_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              unit_config:,
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
              model_type: :unit
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class UnitConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::UnitConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Rate per unit of usage
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).returns(T.attached_class) }
              def self.new(
                # Rate per unit of usage
                unit_amount:
              )
              end

              sig { override.returns({ unit_amount: String }) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig
              )
            end
            attr_reader :package_config

            sig do
              params(
                package_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig::OrHash
              ).void
            end
            attr_writer :package_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                package_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              package_config:,
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
              model_type: :package
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class PackageConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::PackageConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # A currency amount to rate usage by
              sig { returns(String) }
              attr_accessor :package_amount

              # An integer amount to represent package size. For example, 1000 here would divide
              # usage by 1000 before multiplying by package_amount in rating
              sig { returns(Integer) }
              attr_accessor :package_size

              sig do
                params(package_amount: String, package_size: Integer).returns(
                  T.attached_class
                )
              end
              def self.new(
                # A currency amount to rate usage by
                package_amount:,
                # An integer amount to represent package size. For example, 1000 here would divide
                # usage by 1000 before multiplying by package_amount in rating
                package_size:
              )
              end

              sig do
                override.returns(
                  { package_amount: String, package_size: Integer }
                )
              end
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::OrSymbol
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
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig
              )
            end
            attr_reader :matrix_config

            sig do
              params(
                matrix_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::OrHash
              ).void
            end
            attr_writer :matrix_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::OrHash,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::OrHash
                  ),
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
              matrix_config:,
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
              model_type: :matrix
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  matrix_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MatrixConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values:
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Default per unit rate for any usage not bucketed into a specified matrix_value
                default_unit_amount:,
                # One or two event property values to evaluate matrix groups by
                dimensions:,
                # Matrix values for specified matrix grouping keys
                matrix_values:
              )
              end

              sig do
                override.returns(
                  {
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values:
                      T::Array[
                        Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue
                      ]
                  }
                )
              end
              def to_hash
              end

              class MatrixValue < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::MatrixConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  end

                # One or two matrix keys to filter usage to this Matrix value by. For example,
                # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                # instance tier.
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                # Unit price for the specified dimension_values
                sig { returns(String) }
                attr_accessor :unit_amount

                sig do
                  params(
                    dimension_values: T::Array[T.nilable(String)],
                    unit_amount: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # One or two matrix keys to filter usage to this Matrix value by. For example,
                  # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                  # instance tier.
                  dimension_values:,
                  # Unit price for the specified dimension_values
                  unit_amount:
                )
                end

                sig do
                  override.returns(
                    {
                      dimension_values: T::Array[T.nilable(String)],
                      unit_amount: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class MatrixWithAllocation < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::OrSymbol
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
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig
              )
            end
            attr_reader :matrix_with_allocation_config

            sig do
              params(
                matrix_with_allocation_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::OrHash
              ).void
            end
            attr_writer :matrix_with_allocation_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_allocation_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::OrHash,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::OrHash
                  ),
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
              matrix_with_allocation_config:,
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
              model_type: :matrix_with_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  matrix_with_allocation_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Allocation to be used to calculate the price
              sig { returns(Float) }
              attr_accessor :allocation

              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  allocation: Float,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values:
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Allocation to be used to calculate the price
                allocation:,
                # Default per unit rate for any usage not bucketed into a specified matrix_value
                default_unit_amount:,
                # One or two event property values to evaluate matrix groups by
                dimensions:,
                # Matrix values for specified matrix grouping keys
                matrix_values:
              )
              end

              sig do
                override.returns(
                  {
                    allocation: Float,
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values:
                      T::Array[
                        Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                      ]
                  }
                )
              end
              def to_hash
              end

              class MatrixValue < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  end

                # One or two matrix keys to filter usage to this Matrix value by. For example,
                # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                # instance tier.
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                # Unit price for the specified dimension_values
                sig { returns(String) }
                attr_accessor :unit_amount

                sig do
                  params(
                    dimension_values: T::Array[T.nilable(String)],
                    unit_amount: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # One or two matrix keys to filter usage to this Matrix value by. For example,
                  # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                  # instance tier.
                  dimension_values:,
                  # Unit price for the specified dimension_values
                  unit_amount:
                )
                end

                sig do
                  override.returns(
                    {
                      dimension_values: T::Array[T.nilable(String)],
                      unit_amount: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig
              )
            end
            attr_reader :tiered_config

            sig do
              params(
                tiered_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::OrHash
              ).void
            end
            attr_writer :tiered_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              tiered_config:,
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
              model_type: :tiered
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class TieredConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Tiers for rating based on total usage quantities into the specified tier
              sig do
                returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Tiers for rating based on total usage quantities into the specified tier
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    tiers:
                      T::Array[
                        Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::TieredConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Exclusive tier starting value
                sig { returns(Float) }
                attr_accessor :first_unit

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Inclusive tier ending value. If null, this is treated as the last tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig do
                  params(
                    first_unit: Float,
                    unit_amount: String,
                    last_unit: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Exclusive tier starting value
                  first_unit:,
                  # Amount per unit
                  unit_amount:,
                  # Inclusive tier ending value. If null, this is treated as the last tier
                  last_unit: nil
                )
                end

                sig do
                  override.returns(
                    {
                      first_unit: Float,
                      unit_amount: String,
                      last_unit: T.nilable(Float)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig
              )
            end
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::OrHash
              ).void
            end
            attr_writer :tiered_bps_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_bps_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              tiered_bps_config:,
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
              model_type: :tiered_bps
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_bps_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              # tiers
              sig do
                returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
                # tiers
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    tiers:
                      T::Array[
                        Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::TieredBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Per-event basis point rate
                sig { returns(Float) }
                attr_accessor :bps

                # Exclusive tier starting value
                sig { returns(String) }
                attr_accessor :minimum_amount

                # Inclusive tier ending value
                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                # Per unit maximum to charge
                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Per-event basis point rate
                  bps:,
                  # Exclusive tier starting value
                  minimum_amount:,
                  # Inclusive tier ending value
                  maximum_amount: nil,
                  # Per unit maximum to charge
                  per_unit_maximum: nil
                )
                end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      minimum_amount: String,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps,
                  Orb::Internal::AnyHash
                )
              end

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig
              )
            end
            attr_reader :bps_config

            sig do
              params(
                bps_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig::OrHash
              ).void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::OrHash
                  )
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
                bps_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig::OrHash,
                cadence:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              bps_config:,
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :bps
            )
            end

            sig do
              override.returns(
                {
                  bps_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig,
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration
                    ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class BpsConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BpsConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Basis point take rate per event
              sig { returns(Float) }
              attr_accessor :bps

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig do
                params(bps: Float, per_unit_maximum: T.nilable(String)).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Basis point take rate per event
                bps:,
                # Optional currency amount maximum to cap spend per event
                per_unit_maximum: nil
              )
              end

              sig do
                override.returns(
                  { bps: Float, per_unit_maximum: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps,
                  Orb::Internal::AnyHash
                )
              end

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig
              )
            end
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::OrHash
              ).void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::OrHash
                  )
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
                bulk_bps_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::OrHash,
                cadence:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              bulk_bps_config:,
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :bulk_bps
            )
            end

            sig do
              override.returns(
                {
                  bulk_bps_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig,
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration
                    ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              # tier based on total volume
              sig do
                returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
                # tier based on total volume
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    tiers:
                      T::Array[
                        Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BulkBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Basis points to rate on
                sig { returns(Float) }
                attr_accessor :bps

                # Upper bound for tier
                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                # The maximum amount to charge for any one event
                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Basis points to rate on
                  bps:,
                  # Upper bound for tier
                  maximum_amount: nil,
                  # The maximum amount to charge for any one event
                  per_unit_maximum: nil
                )
                end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk,
                  Orb::Internal::AnyHash
                )
              end

            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig
              )
            end
            attr_reader :bulk_config

            sig do
              params(
                bulk_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::OrHash
              ).void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::OrHash
                  )
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
                bulk_config:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::OrHash,
                cadence:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              bulk_config:,
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :bulk
            )
            end

            sig do
              override.returns(
                {
                  bulk_config:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig,
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration
                    ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class BulkConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers:
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Bulk tiers for rating based on total usage volume
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    tiers:
                      T::Array[
                        Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BulkConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Upper bound for this tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig do
                  params(
                    unit_amount: String,
                    maximum_units: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Amount per unit
                  unit_amount:,
                  # Upper bound for this tier
                  maximum_units: nil
                )
                end

                sig do
                  override.returns(
                    { unit_amount: String, maximum_units: T.nilable(Float) }
                  )
                end
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :threshold_total_amount_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              threshold_total_amount_config:,
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
              model_type: :threshold_total_amount
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  threshold_total_amount_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              tiered_package_config:,
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
              model_type: :tiered_package
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class GroupedTiered < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::OrSymbol,
                currency: String,
                grouped_tiered_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_tiered_config:,
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
              model_type: :grouped_tiered
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::OrSymbol,
                  currency: String,
                  grouped_tiered_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :max_group_tiered_package_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::OrHash
                  ),
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
              max_group_tiered_package_config:,
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
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_minimum_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              tiered_with_minimum_config:,
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
              model_type: :tiered_with_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :package_with_allocation_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              package_with_allocation_config:,
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
              model_type: :package_with_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_with_allocation_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_with_minimum_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              tiered_package_with_minimum_config:,
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
              model_type: :tiered_package_with_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_with_minimum_config:
                    T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_percent_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              unit_with_percent_config:,
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
              model_type: :unit_with_percent
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_percent_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_proration_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              tiered_with_proration_config:,
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
              model_type: :tiered_with_proration
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_proration_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              unit_with_proration_config:,
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
              model_type: :unit_with_proration
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_allocation_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::OrSymbol,
                currency: String,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_allocation_config:,
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
              model_type: :grouped_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::OrSymbol,
                  currency: String,
                  grouped_allocation_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_prorated_minimum_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                currency: String,
                grouped_with_prorated_minimum_config:
                  T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_with_prorated_minimum_config:,
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
              model_type: :grouped_with_prorated_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                  currency: String,
                  grouped_with_prorated_minimum_config:
                    T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_metered_minimum_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                currency: String,
                grouped_with_metered_minimum_config:
                  T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_with_metered_minimum_config:,
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
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                  currency: String,
                  grouped_with_metered_minimum_config:
                    T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :matrix_with_display_name_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::OrHash
                  ),
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
              matrix_with_display_name_config:,
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
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::OrHash
                  )
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
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence:
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              bulk_with_proration_config:,
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :bulk_with_proration
            )
            end

            sig do
              override.returns(
                {
                  bulk_with_proration_config: T::Hash[Symbol, T.anything],
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_package_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::OrSymbol,
                currency: String,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_tiered_package_config:,
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
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::OrSymbol,
                  currency: String,
                  grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_unit_pricing_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config:
                  T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              scalable_matrix_with_unit_pricing_config:,
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
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_unit_pricing_config:
                    T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_tiered_pricing_config

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config:
                  T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::OrHash
                  ),
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
              # The name of the price.
              name:,
              scalable_matrix_with_tiered_pricing_config:,
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
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_tiered_pricing_config:
                    T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :cumulative_grouped_bulk_config

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # For dimensional price: specifies a price group and dimension values
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
                )
              )
            end
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration::OrHash
                  )
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
            sig do
              returns(
                T.nilable(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::OrHash
                  )
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
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::OrHash
                  ),
                conversion_rate: T.nilable(Float),
                dimensional_price_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration::OrHash
                  ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::OrHash
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              cumulative_grouped_bulk_config:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                  cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                    ),
                  conversion_rate: T.nilable(Float),
                  dimensional_price_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
                    ),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                    ),
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
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The list of dimension values matching (in order) the dimensions of the price
              # group
              sig { returns(T::Array[String]) }
              attr_accessor :dimension_values

              # The id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :dimensional_price_group_id

              # The external id of the dimensional price group to include this price in
              sig { returns(T.nilable(String)) }
              attr_accessor :external_dimensional_price_group_id

              # For dimensional price: specifies a price group and dimension values
              sig do
                params(
                  dimension_values: T::Array[String],
                  dimensional_price_group_id: T.nilable(String),
                  external_dimensional_price_group_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The list of dimension values matching (in order) the dimensions of the price
                # group
                dimension_values:,
                # The id of the dimensional price group to include this price in
                dimensional_price_group_id: nil,
                # The external id of the dimensional price group to include this price in
                external_dimensional_price_group_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    dimension_values: T::Array[String],
                    dimensional_price_group_id: T.nilable(String),
                    external_dimensional_price_group_id: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                end

              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit:
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              )
              end

              sig do
                override.returns(
                  {
                    duration: Integer,
                    duration_unit:
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
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
