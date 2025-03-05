# typed: strong

module Orb
  module Models
    class AddSubscriptionPriceParams < Orb::BaseModel
      sig { returns(T.nilable(Orb::Models::AddSubscriptionPriceParams::AllocationPrice)) }
      def allocation_price
      end

      sig do
        params(_: T.nilable(Orb::Models::AddSubscriptionPriceParams::AllocationPrice))
          .returns(T.nilable(Orb::Models::AddSubscriptionPriceParams::AllocationPrice))
      end
      def allocation_price=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams::Discount])) }
      def discounts
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams::Discount]))
          .returns(T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams::Discount]))
      end
      def discounts=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_price_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def plan_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def plan_phase_order=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
            )
          )
        )
      end
      def price
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
      end
      def price=(_)
      end

      sig { returns(T.nilable(String)) }
      def price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def price_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date=(_)
      end

      sig do
        params(
          allocation_price: T.nilable(Orb::Models::AddSubscriptionPriceParams::AllocationPrice),
          discounts: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams::Discount]),
          end_date: T.nilable(Time),
          external_price_id: T.nilable(String),
          maximum_amount: T.nilable(String),
          minimum_amount: T.nilable(String),
          plan_phase_order: T.nilable(Integer),
          price: T.nilable(
            T.any(
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
            )
          ),
          price_id: T.nilable(String),
          start_date: T.nilable(Time)
        )
          .void
      end
      def initialize(
        allocation_price: nil,
        discounts: nil,
        end_date: nil,
        external_price_id: nil,
        maximum_amount: nil,
        minimum_amount: nil,
        plan_phase_order: nil,
        price: nil,
        price_id: nil,
        start_date: nil
      )
      end

      sig do
        override
          .returns(
            {
              allocation_price: T.nilable(Orb::Models::AddSubscriptionPriceParams::AllocationPrice),
              discounts: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams::Discount]),
              end_date: T.nilable(Time),
              external_price_id: T.nilable(String),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              plan_phase_order: T.nilable(Integer),
              price: T.nilable(
                T.any(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
                )
              ),
              price_id: T.nilable(String),
              start_date: T.nilable(Time)
            }
          )
      end
      def to_hash
      end

      class AllocationPrice < Orb::BaseModel
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(T::Boolean) }
        def expires_at_end_of_cadence
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def expires_at_end_of_cadence=(_)
        end

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
          override
            .returns({
                       amount: String,
                       cadence: Symbol,
                       currency: String,
                       expires_at_end_of_cadence: T::Boolean
                     })
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

      class Discount < Orb::BaseModel
        sig { returns(Symbol) }
        def discount_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def discount_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def amount_discount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def amount_discount=(_)
        end

        sig { returns(T.nilable(Float)) }
        def percentage_discount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def percentage_discount=(_)
        end

        sig { returns(T.nilable(Float)) }
        def usage_discount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def usage_discount=(_)
        end

        sig do
          params(
            discount_type: Symbol,
            amount_discount: T.nilable(String),
            percentage_discount: T.nilable(Float),
            usage_discount: T.nilable(Float)
          )
            .void
        end
        def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
        end

        sig do
          override
            .returns(
              {
                discount_type: Symbol,
                amount_discount: T.nilable(String),
                percentage_discount: T.nilable(Float),
                usage_discount: T.nilable(Float)
              }
            )
        end
        def to_hash
        end

        class DiscountType < Orb::Enum
          abstract!

          PERCENTAGE = :percentage
          USAGE = :usage
          AMOUNT = :amount

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Price < Orb::Union
        abstract!

        class NewSubscriptionUnitPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig) }
          def unit_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig)
          end
          def unit_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              unit_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            unit_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :unit
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def unit_amount
            end

            sig { params(_: String).returns(String) }
            def unit_amount=(_)
            end

            sig { params(unit_amount: String).void }
            def initialize(unit_amount:)
            end

            sig { override.returns({unit_amount: String}) }
            def to_hash
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig) }
          def package_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig)
          end
          def package_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              package_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            package_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :package
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def package_amount
            end

            sig { params(_: String).returns(String) }
            def package_amount=(_)
            end

            sig { returns(Integer) }
            def package_size
            end

            sig { params(_: Integer).returns(Integer) }
            def package_size=(_)
            end

            sig { params(package_amount: String, package_size: Integer).void }
            def initialize(package_amount:, package_size:)
            end

            sig { override.returns({package_amount: String, package_size: Integer}) }
            def to_hash
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionMatrixPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig) }
          def matrix_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig)
          end
          def matrix_config=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              matrix_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            matrix_config:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :matrix
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  matrix_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def default_unit_amount
            end

            sig { params(_: String).returns(String) }
            def default_unit_amount=(_)
            end

            sig { returns(T::Array[T.nilable(String)]) }
            def dimensions
            end

            sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
            def dimensions=(_)
            end

            sig do
              returns(
                T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
              )
            end
            def matrix_values
            end

            sig do
              params(
                _: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
              )
                .returns(
                  T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                )
            end
            def matrix_values=(_)
            end

            sig do
              params(
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
              )
                .void
            end
            def initialize(default_unit_amount:, dimensions:, matrix_values:)
            end

            sig do
              override
                .returns(
                  {
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                  }
                )
            end
            def to_hash
            end

            class MatrixValue < Orb::BaseModel
              sig { returns(T::Array[T.nilable(String)]) }
              def dimension_values
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimension_values=(_)
              end

              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionTieredPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig) }
          def tiered_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig)
          end
          def tiered_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :tiered
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
              returns(
                T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                  }
                )
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(Float) }
              def first_unit
              end

              sig { params(_: Float).returns(Float) }
              def first_unit=(_)
              end

              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def last_unit
              end

              sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
              def last_unit=(_)
              end

              sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
              def initialize(first_unit:, unit_amount:, last_unit: nil)
              end

              sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
              def to_hash
              end
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionTieredBpsPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig) }
          def tiered_bps_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig)
          end
          def tiered_bps_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_bps_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :tiered_bps
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
              returns(
                T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
                  }
                )
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(Float) }
              def bps
              end

              sig { params(_: Float).returns(Float) }
              def bps=(_)
              end

              sig { returns(String) }
              def minimum_amount
              end

              sig { params(_: String).returns(String) }
              def minimum_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def maximum_amount
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def maximum_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_maximum
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_maximum=(_)
              end

              sig do
                params(
                  bps: Float,
                  minimum_amount: String,
                  maximum_amount: T.nilable(String),
                  per_unit_maximum: T.nilable(String)
                )
                  .void
              end
              def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
              end

              sig do
                override
                  .returns(
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionBpsPrice < Orb::BaseModel
          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig) }
          def bps_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig)
          end
          def bps_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            bps_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :bps
          )
          end

          sig do
            override
              .returns(
                {
                  bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class BpsConfig < Orb::BaseModel
            sig { returns(Float) }
            def bps
            end

            sig { params(_: Float).returns(Float) }
            def bps=(_)
            end

            sig { returns(T.nilable(String)) }
            def per_unit_maximum
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def per_unit_maximum=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionBulkBpsPrice < Orb::BaseModel
          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig) }
          def bulk_bps_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig)
          end
          def bulk_bps_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              bulk_bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            bulk_bps_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :bulk_bps
          )
          end

          sig do
            override
              .returns(
                {
                  bulk_bps_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class BulkBpsConfig < Orb::BaseModel
            sig do
              returns(
                T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                  }
                )
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(Float) }
              def bps
              end

              sig { params(_: Float).returns(Float) }
              def bps=(_)
              end

              sig { returns(T.nilable(String)) }
              def maximum_amount
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def maximum_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_maximum
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_maximum=(_)
              end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionBulkPrice < Orb::BaseModel
          sig { returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig) }
          def bulk_config
          end

          sig do
            params(_: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig)
              .returns(Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig)
          end
          def bulk_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              bulk_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            bulk_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :bulk
          )
          end

          sig do
            override
              .returns(
                {
                  bulk_config: Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class BulkConfig < Orb::BaseModel
            sig do
              returns(
                T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                  }
                )
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

              sig { returns(T.nilable(Float)) }
              def maximum_units
              end

              sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
              def maximum_units=(_)
              end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def threshold_total_amount_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def threshold_total_amount_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              threshold_total_amount_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            threshold_total_amount_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :threshold_total_amount
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  threshold_total_amount_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def tiered_package_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def tiered_package_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_package_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_package_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :tiered_package
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_minimum_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_minimum_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_with_minimum_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_with_minimum_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :tiered_with_minimum
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def unit_with_percent_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def unit_with_percent_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              unit_with_percent_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            unit_with_percent_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :unit_with_percent
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_percent_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def package_with_allocation_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def package_with_allocation_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              package_with_allocation_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            package_with_allocation_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :package_with_allocation
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_with_allocation_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_proration_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_proration_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_with_proration_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_with_proration_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :tiered_with_proration
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def unit_with_proration_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def unit_with_proration_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              unit_with_proration_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            unit_with_proration_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :unit_with_proration
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_allocation_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_allocation_config=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_allocation_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            grouped_allocation_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :grouped_allocation
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_allocation_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_prorated_minimum_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_prorated_minimum_config=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            grouped_with_prorated_minimum_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :grouped_with_prorated_minimum
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
          sig { returns(T::Hash[Symbol, T.anything]) }
          def bulk_with_proration_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def bulk_with_proration_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              bulk_with_proration_config: T::Hash[Symbol, T.anything],
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            bulk_with_proration_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :bulk_with_proration
          )
          end

          sig do
            override
              .returns(
                {
                  bulk_with_proration_config: T::Hash[Symbol, T.anything],
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_unit_pricing_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_unit_pricing_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            scalable_matrix_with_unit_pricing_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :scalable_matrix_with_unit_pricing
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_tiered_pricing_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_tiered_pricing_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            scalable_matrix_with_tiered_pricing_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :scalable_matrix_with_tiered_pricing
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def cumulative_grouped_bulk_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def cumulative_grouped_bulk_config=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            cumulative_grouped_bulk_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :cumulative_grouped_bulk
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def max_group_tiered_package_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def max_group_tiered_package_config=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              max_group_tiered_package_config: T::Hash[Symbol, T.anything],
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            max_group_tiered_package_config:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :max_group_tiered_package
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_metered_minimum_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_metered_minimum_config=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            grouped_with_metered_minimum_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :grouped_with_metered_minimum
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def matrix_with_display_name_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def matrix_with_display_name_config=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              matrix_with_display_name_config: T::Hash[Symbol, T.anything],
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            item_id:,
            matrix_with_display_name_config:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :matrix_with_display_name
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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

        class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_tiered_package_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_tiered_package_config=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Symbol) }
          def model_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def model_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def billable_metric_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def billable_metric_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def billed_in_advance
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def billed_in_advance=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
          end
          def billing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def conversion_rate
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def conversion_rate=(_)
          end

          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          sig { returns(T.nilable(String)) }
          def external_price_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def external_price_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def fixed_price_quantity
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def fixed_price_quantity=(_)
          end

          sig { returns(T.nilable(String)) }
          def invoice_grouping_key
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def invoice_grouping_key=(_)
          end

          sig do
            returns(
              T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def reference_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reference_id=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_tiered_package_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              reference_id: T.nilable(String),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            grouped_tiered_package_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            reference_id: nil,
            model_type: :grouped_tiered_package
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                  ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
            def duration
            end

            sig { params(_: Integer).returns(Integer) }
            def duration=(_)
            end

            sig { returns(Symbol) }
            def duration_unit
            end

            sig { params(_: Symbol).returns(Symbol) }
            def duration_unit=(_)
            end

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
          override
            .returns(
              [[Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackagePrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBpsPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice], [Symbol, Orb::Models::AddSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice]]
            )
        end
        private_class_method def self.variants
        end
      end
    end
  end
end
