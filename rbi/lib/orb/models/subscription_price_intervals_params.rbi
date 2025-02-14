# typed: strong

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])) }
      attr_reader :add

      sig { params(add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add]).void }
      attr_writer :add

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])) }
      attr_reader :add_adjustments

      sig do
        params(add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment]).void
      end
      attr_writer :add_adjustments

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])) }
      attr_reader :edit

      sig { params(edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit]).void }
      attr_writer :edit

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment])) }
      attr_reader :edit_adjustments

      sig do
        params(edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment]).void
      end
      attr_writer :edit_adjustments

      sig do
        params(
          add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add],
          add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment],
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit],
          edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment],
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        add: nil,
        add_adjustments: nil,
        allow_invoice_credit_or_void: nil,
        edit: nil,
        edit_adjustments: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add],
            add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment],
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit],
            edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Add < Orb::BaseModel
        sig { returns(T.any(Time, Symbol)) }
        attr_accessor :start_date

        sig { returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice)) }
        attr_accessor :allocation_price

        sig do
          returns(
            T.nilable(
              T::Array[T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
              )]
            )
          )
        end
        attr_accessor :discounts

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        attr_accessor :end_date

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig do
          returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]))
        end
        attr_accessor :fixed_fee_quantity_transitions

        sig { returns(T.nilable(Float)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(Float)) }
        attr_accessor :minimum_amount

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
              )
            )
          )
        end
        attr_accessor :price

        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            start_date: T.any(Time, Symbol),
            allocation_price: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice),
            discounts: T.nilable(
              T::Array[T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
              )]
            ),
            end_date: T.nilable(T.any(Time, Symbol)),
            external_price_id: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]),
            maximum_amount: T.nilable(Float),
            minimum_amount: T.nilable(Float),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
              )
            ),
            price_id: T.nilable(String)
          ).void
        end
        def initialize(
          start_date:,
          allocation_price: nil,
          discounts: nil,
          end_date: nil,
          external_price_id: nil,
          fixed_fee_quantity_transitions: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          price: nil,
          price_id: nil
        )
        end

        sig do
          override.returns(
            {
              start_date: T.any(Time, Symbol),
              allocation_price: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice),
              discounts: T.nilable(
                T::Array[T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
                )]
              ),
              end_date: T.nilable(T.any(Time, Symbol)),
              external_price_id: T.nilable(String),
              fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]),
              maximum_amount: T.nilable(Float),
              minimum_amount: T.nilable(Float),
              price: T.nilable(
                T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
                )
              ),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class AllocationPrice < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(T::Boolean) }
          attr_accessor :expires_at_end_of_cadence

          sig do
            params(
              amount: String,
              cadence: Symbol,
              currency: String,
              expires_at_end_of_cadence: T::Boolean
            ).void
          end
          def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          end

          sig do
            override.returns(
              {
                amount: String,
                cadence: Symbol,
                currency: String,
                expires_at_end_of_cadence: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Cadence < Orb::Enum
            abstract!

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Discount < Orb::Union
          abstract!

          class AmountDiscountCreationParams < Orb::BaseModel
            sig { returns(Float) }
            attr_accessor :amount_discount

            sig { returns(Symbol) }
            attr_accessor :discount_type

            sig { params(amount_discount: Float, discount_type: Symbol).void }
            def initialize(amount_discount:, discount_type: :amount)
            end

            sig { override.returns({amount_discount: Float, discount_type: Symbol}) }
            def to_hash
            end
          end

          class PercentageDiscountCreationParams < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :discount_type

            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { params(percentage_discount: Float, discount_type: Symbol).void }
            def initialize(percentage_discount:, discount_type: :percentage)
            end

            sig { override.returns({discount_type: Symbol, percentage_discount: Float}) }
            def to_hash
            end
          end

          class UsageDiscountCreationParams < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :discount_type

            sig { returns(Float) }
            attr_accessor :usage_discount

            sig { params(usage_discount: Float, discount_type: Symbol).void }
            def initialize(usage_discount:, discount_type: :usage)
            end

            sig { override.returns({discount_type: Symbol, usage_discount: Float}) }
            def to_hash
            end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
                ]
              ]
            )
          end
          private_class_method def self.variants
          end
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          sig { returns(Time) }
          attr_accessor :effective_date

          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, quantity: Integer).void }
          def initialize(effective_date:, quantity:)
          end

          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash
          end
        end

        class Price < Orb::Union
          abstract!

          class NewFloatingUnitPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig)
            end
            attr_accessor :unit_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                unit_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              unit_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :unit
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class UnitConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).void }
              def initialize(unit_amount:)
              end

              sig { override.returns({unit_amount: String}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig)
            end
            attr_accessor :package_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                package_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :package
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class PackageConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :package_amount

              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).void }
              def initialize(package_amount:, package_size:)
              end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingMatrixPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig)
            end
            attr_accessor :matrix_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                matrix_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              matrix_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :matrix
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  matrix_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :default_unit_amount

              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              sig do
                returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue])
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue]
                ).void
              end
              def initialize(default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override.returns(
                  {
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue]
                  }
                )
              end
              def to_hash
              end

              class MatrixValue < Orb::BaseModel
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
                def initialize(dimension_values:, unit_amount:)
                end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingMatrixWithAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig)
            end
            attr_accessor :matrix_with_allocation_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                matrix_with_allocation_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              matrix_with_allocation_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :matrix_with_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  matrix_with_allocation_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class MatrixWithAllocationConfig < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :allocation

              sig { returns(String) }
              attr_accessor :default_unit_amount

              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              sig do
                returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue])
              end
              attr_accessor :matrix_values

              sig do
                params(
                  allocation: Float,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
                ).void
              end
              def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override.returns(
                  {
                    allocation: Float,
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
                  }
                )
              end
              def to_hash
              end

              class MatrixValue < Orb::BaseModel
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
                def initialize(dimension_values:, unit_amount:)
                end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingTieredPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig)
            end
            attr_accessor :tiered_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class TieredConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                ).void
              end
              def initialize(tiers:)
              end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]})
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :first_unit

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
                def initialize(first_unit:, unit_amount:, last_unit: nil)
                end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingTieredBpsPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig)
            end
            attr_accessor :tiered_bps_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_bps_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_bps
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class TieredBpsConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier]
                ).void
              end
              def initialize(tiers:)
              end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier]})
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :bps

                sig { returns(String) }
                attr_accessor :minimum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
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

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingBpsPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig)
            end
            attr_accessor :bps_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              bps_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bps
            )
            end

            sig do
              override.returns(
                {
                  bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  )
                }
              )
            end
            def to_hash
            end

            class BpsConfig < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :bps

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
              def initialize(bps:, per_unit_maximum: nil)
              end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash
              end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingBulkBpsPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig)
            end
            attr_accessor :bulk_bps_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                bulk_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_bps_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bulk_bps
            )
            end

            sig do
              override.returns(
                {
                  bulk_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  )
                }
              )
            end
            def to_hash
            end

            class BulkBpsConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                ).void
              end
              def initialize(tiers:)
              end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]})
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :bps

                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
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

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingBulkPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig)
            end
            attr_accessor :bulk_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                bulk_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bulk
            )
            end

            sig do
              override.returns(
                {
                  bulk_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  )
                }
              )
            end
            def to_hash
            end

            class BulkConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                ).void
              end
              def initialize(tiers:)
              end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]})
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
                def initialize(unit_amount:, maximum_units: nil)
                end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash
                end
              end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingThresholdTotalAmountPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :threshold_total_amount_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              threshold_total_amount_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :threshold_total_amount
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  threshold_total_amount_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_package
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingGroupedTieredPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_tiered_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              grouped_tiered_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_tiered
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  grouped_tiered_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingMaxGroupTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :max_group_tiered_package_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              max_group_tiered_package_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingTieredWithMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_minimum_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_with_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingPackageWithAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :package_with_allocation_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              package_with_allocation_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :package_with_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_with_allocation_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingTieredPackageWithMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_with_minimum_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_package_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_package_with_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingUnitWithPercentPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_percent_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              unit_with_percent_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :unit_with_percent
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_percent_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingTieredWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_proration_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_with_proration
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingUnitWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_proration_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              unit_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :unit_with_proration
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingGroupedAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_allocation_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              grouped_allocation_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  grouped_allocation_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingGroupedWithProratedMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_prorated_minimum_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              grouped_with_prorated_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_with_prorated_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingGroupedWithMeteredMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_metered_minimum_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              grouped_with_metered_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingMatrixWithDisplayNamePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :matrix_with_display_name_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              matrix_with_display_name_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_with_proration_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bulk_with_proration
            )
            end

            sig do
              override.returns(
                {
                  bulk_with_proration_config: T::Hash[Symbol, T.anything],
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingGroupedTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_package_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              grouped_tiered_package_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_unit_pricing_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              scalable_matrix_with_unit_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_tiered_pricing_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              currency:,
              item_id:,
              name:,
              scalable_matrix_with_tiered_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NewFloatingCumulativeGroupedBulkPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :cumulative_grouped_bulk_config

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence: Symbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              cumulative_grouped_bulk_config:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          sig do
            override.returns(
              [
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice
                ],
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice
                ],
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice
                ],
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice],
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice],
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
                ]
              ]
            )
          end
          private_class_method def self.variants
          end
        end
      end

      class AddAdjustment < Orb::BaseModel
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
        end
        attr_accessor :adjustment

        sig { returns(T.any(Time, Symbol)) }
        attr_accessor :start_date

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        attr_accessor :end_date

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
            ),
            start_date: T.any(Time, Symbol),
            end_date: T.nilable(T.any(Time, Symbol))
          ).void
        end
        def initialize(adjustment:, start_date:, end_date: nil)
        end

        sig do
          override.returns(
            {
              adjustment: T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
              ),
              start_date: T.any(Time, Symbol),
              end_date: T.nilable(T.any(Time, Symbol))
            }
          )
        end
        def to_hash
        end

        class Adjustment < Orb::Union
          abstract!

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              percentage_discount:,
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  percentage_discount: Float,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              usage_discount:,
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  usage_discount: Float,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              item_id:,
              minimum_amount:,
              is_invoice_level: nil,
              adjustment_type: :minimum
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  item_id: String,
                  minimum_amount: String,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              maximum_amount:,
              is_invoice_level: nil,
              adjustment_type: :maximum
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  maximum_amount: String,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum
                ],
                [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum]
              ]
            )
          end
          private_class_method def self.variants
          end
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end

      class Edit < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :price_interval_id

        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_cycle_day

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        attr_accessor :end_date

        sig do
          returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]))
        end
        attr_accessor :fixed_fee_quantity_transitions

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        attr_reader :start_date

        sig { params(start_date: T.any(Time, Symbol)).void }
        attr_writer :start_date

        sig do
          params(
            price_interval_id: String,
            billing_cycle_day: T.nilable(Integer),
            end_date: T.nilable(T.any(Time, Symbol)),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]),
            start_date: T.any(Time, Symbol)
          ).void
        end
        def initialize(
          price_interval_id:,
          billing_cycle_day: nil,
          end_date: nil,
          fixed_fee_quantity_transitions: nil,
          start_date: nil
        )
        end

        sig do
          override.returns(
            {
              price_interval_id: String,
              billing_cycle_day: T.nilable(Integer),
              end_date: T.nilable(T.any(Time, Symbol)),
              fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]),
              start_date: T.any(Time, Symbol)
            }
          )
        end
        def to_hash
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          sig { returns(Time) }
          attr_accessor :effective_date

          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, quantity: Integer).void }
          def initialize(effective_date:, quantity:)
          end

          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash
          end
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end

      class EditAdjustment < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :adjustment_interval_id

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        attr_accessor :end_date

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        attr_reader :start_date

        sig { params(start_date: T.any(Time, Symbol)).void }
        attr_writer :start_date

        sig do
          params(
            adjustment_interval_id: String,
            end_date: T.nilable(T.any(Time, Symbol)),
            start_date: T.any(Time, Symbol)
          ).void
        end
        def initialize(adjustment_interval_id:, end_date: nil, start_date: nil)
        end

        sig do
          override.returns(
            {
              adjustment_interval_id: String,
              end_date: T.nilable(T.any(Time, Symbol)),
              start_date: T.any(Time, Symbol)
            }
          )
        end
        def to_hash
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end
    end
  end
end
