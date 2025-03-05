# typed: strong

module Orb
  module Models
    class ReplaceSubscriptionPriceParams < Orb::BaseModel
      sig { returns(String) }
      def replaces_price_id
      end

      sig { params(_: String).returns(String) }
      def replaces_price_id=(_)
      end

      sig { returns(T.nilable(Orb::Models::ReplaceSubscriptionPriceParams::AllocationPrice)) }
      def allocation_price
      end

      sig do
        params(_: T.nilable(Orb::Models::ReplaceSubscriptionPriceParams::AllocationPrice))
          .returns(T.nilable(Orb::Models::ReplaceSubscriptionPriceParams::AllocationPrice))
      end
      def allocation_price=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Discount])) }
      def discounts
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Discount]))
          .returns(T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Discount]))
      end
      def discounts=(_)
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

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
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
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
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

      sig do
        params(
          replaces_price_id: String,
          allocation_price: T.nilable(Orb::Models::ReplaceSubscriptionPriceParams::AllocationPrice),
          discounts: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Discount]),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          maximum_amount: T.nilable(String),
          minimum_amount: T.nilable(String),
          price: T.nilable(
            T.any(
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
            )
          ),
          price_id: T.nilable(String)
        )
          .void
      end
      def initialize(
        replaces_price_id:,
        allocation_price: nil,
        discounts: nil,
        external_price_id: nil,
        fixed_price_quantity: nil,
        maximum_amount: nil,
        minimum_amount: nil,
        price: nil,
        price_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              replaces_price_id: String,
              allocation_price: T.nilable(Orb::Models::ReplaceSubscriptionPriceParams::AllocationPrice),
              discounts: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Discount]),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              price: T.nilable(
                T.any(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice
                )
              ),
              price_id: T.nilable(String)
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

          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig) }
          def unit_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
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
              unit_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
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
                  unit_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::UnitConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
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

          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig) }
          def package_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
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
              package_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
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
                  package_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::PackageConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
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

          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig) }
          def matrix_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
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
              matrix_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
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
                  matrix_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
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
                T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
              )
            end
            def matrix_values
            end

            sig do
              params(
                _: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
              )
                .returns(
                  T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                )
            end
            def matrix_values=(_)
            end

            sig do
              params(
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
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
                    matrix_values: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
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

          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig) }
          def tiered_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
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
              tiered_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
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
                  tiered_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
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
                T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
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

          sig do
            returns(
              Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
            )
          end
          def tiered_bps_config
          end

          sig do
            params(
              _: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
            )
              .returns(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
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
              tiered_bps_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
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
                  tiered_bps_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
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
                T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
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
          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig) }
          def bps_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
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
              bps_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
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
                  bps_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
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
          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig) }
          def bulk_bps_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
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
              bulk_bps_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
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
                  bulk_bps_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
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
                T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
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
          sig { returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig) }
          def bulk_config
          end

          sig do
            params(_: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig)
              .returns(Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig)
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
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
              bulk_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
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
                  bulk_config: Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
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
                T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
              )
            end
            def tiers
            end

            sig do
              params(
                _: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
              )
                .returns(
                  T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {
                    tiers: T::Array[Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
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
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
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
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
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
              [[Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackagePrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredBpsPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBpsPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkBpsPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionThresholdTotalAmountPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredPackagePrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTieredWithMinimumPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithPercentPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionPackageWithAllocationPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionTierWithProrationPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionUnitWithProrationPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedAllocationPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithProratedMinimumPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionBulkWithProrationPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionCumulativeGroupedBulkPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMaxGroupTieredPackagePrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionMatrixWithDisplayNamePrice], [Symbol, Orb::Models::ReplaceSubscriptionPriceParams::Price::NewSubscriptionGroupedTieredPackagePrice]]
            )
        end
        private_class_method def self.variants
        end
      end
    end
  end
end
