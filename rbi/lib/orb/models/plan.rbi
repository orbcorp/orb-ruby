# typed: strong

module Orb
  module Models
    class Plan < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
          )
          ]
        )
      end
      def adjustments
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
              Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
            )
            ]
          )
      end
      def adjustments=(_)
      end

      sig { returns(T.nilable(Orb::Models::PlanMinifiedModel)) }
      def base_plan
      end

      sig { params(_: T.nilable(Orb::Models::PlanMinifiedModel)).returns(T.nilable(Orb::Models::PlanMinifiedModel)) }
      def base_plan=(_)
      end

      sig { returns(T.nilable(String)) }
      def base_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def base_plan_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
      end
      def discount
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
      end
      def discount=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_plan_id=(_)
      end

      sig { returns(String) }
      def invoicing_currency
      end

      sig { params(_: String).returns(String) }
      def invoicing_currency=(_)
      end

      sig { returns(T.nilable(Orb::Models::MaximumModel)) }
      def maximum
      end

      sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
      def maximum=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Orb::Models::MinimumModel)) }
      def minimum
      end

      sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
      def minimum=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def net_terms
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def net_terms=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::Plan::PlanPhase])) }
      def plan_phases
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]))
          .returns(T.nilable(T::Array[Orb::Models::Plan::PlanPhase]))
      end
      def plan_phases=(_)
      end

      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::PriceModel::UnitPrice,
            Orb::Models::PriceModel::PackagePrice,
            Orb::Models::PriceModel::MatrixPrice,
            Orb::Models::PriceModel::TieredPrice,
            Orb::Models::PriceModel::TieredBpsPrice,
            Orb::Models::PriceModel::BpsPrice,
            Orb::Models::PriceModel::BulkBpsPrice,
            Orb::Models::PriceModel::BulkPrice,
            Orb::Models::PriceModel::ThresholdTotalAmountPrice,
            Orb::Models::PriceModel::TieredPackagePrice,
            Orb::Models::PriceModel::GroupedTieredPrice,
            Orb::Models::PriceModel::TieredWithMinimumPrice,
            Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
            Orb::Models::PriceModel::PackageWithAllocationPrice,
            Orb::Models::PriceModel::UnitWithPercentPrice,
            Orb::Models::PriceModel::MatrixWithAllocationPrice,
            Orb::Models::PriceModel::TieredWithProrationPrice,
            Orb::Models::PriceModel::UnitWithProrationPrice,
            Orb::Models::PriceModel::GroupedAllocationPrice,
            Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
            Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
            Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
            Orb::Models::PriceModel::BulkWithProrationPrice,
            Orb::Models::PriceModel::GroupedTieredPackagePrice,
            Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
            Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
            Orb::Models::PriceModel::CumulativeGroupedBulkPrice
          )
          ]
        )
      end
      def prices
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Orb::Models::PriceModel::UnitPrice,
            Orb::Models::PriceModel::PackagePrice,
            Orb::Models::PriceModel::MatrixPrice,
            Orb::Models::PriceModel::TieredPrice,
            Orb::Models::PriceModel::TieredBpsPrice,
            Orb::Models::PriceModel::BpsPrice,
            Orb::Models::PriceModel::BulkBpsPrice,
            Orb::Models::PriceModel::BulkPrice,
            Orb::Models::PriceModel::ThresholdTotalAmountPrice,
            Orb::Models::PriceModel::TieredPackagePrice,
            Orb::Models::PriceModel::GroupedTieredPrice,
            Orb::Models::PriceModel::TieredWithMinimumPrice,
            Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
            Orb::Models::PriceModel::PackageWithAllocationPrice,
            Orb::Models::PriceModel::UnitWithPercentPrice,
            Orb::Models::PriceModel::MatrixWithAllocationPrice,
            Orb::Models::PriceModel::TieredWithProrationPrice,
            Orb::Models::PriceModel::UnitWithProrationPrice,
            Orb::Models::PriceModel::GroupedAllocationPrice,
            Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
            Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
            Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
            Orb::Models::PriceModel::BulkWithProrationPrice,
            Orb::Models::PriceModel::GroupedTieredPackagePrice,
            Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
            Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
            Orb::Models::PriceModel::CumulativeGroupedBulkPrice
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
            ]
          )
      end
      def prices=(_)
      end

      sig { returns(Orb::Models::Plan::Product) }
      def product
      end

      sig { params(_: Orb::Models::Plan::Product).returns(Orb::Models::Plan::Product) }
      def product=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Orb::Models::Plan::TrialConfig) }
      def trial_config
      end

      sig { params(_: Orb::Models::Plan::TrialConfig).returns(Orb::Models::Plan::TrialConfig) }
      def trial_config=(_)
      end

      sig { returns(Integer) }
      def version
      end

      sig { params(_: Integer).returns(Integer) }
      def version=(_)
      end

      sig do
        params(
          id: String,
          adjustments: T::Array[
          T.any(
            Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
          )
          ],
          base_plan: T.nilable(Orb::Models::PlanMinifiedModel),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_plan_id: T.nilable(String),
          invoicing_currency: String,
          maximum: T.nilable(Orb::Models::MaximumModel),
          maximum_amount: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Models::MinimumModel),
          minimum_amount: T.nilable(String),
          name: String,
          net_terms: T.nilable(Integer),
          plan_phases: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]),
          prices: T::Array[
          T.any(
            Orb::Models::PriceModel::UnitPrice,
            Orb::Models::PriceModel::PackagePrice,
            Orb::Models::PriceModel::MatrixPrice,
            Orb::Models::PriceModel::TieredPrice,
            Orb::Models::PriceModel::TieredBpsPrice,
            Orb::Models::PriceModel::BpsPrice,
            Orb::Models::PriceModel::BulkBpsPrice,
            Orb::Models::PriceModel::BulkPrice,
            Orb::Models::PriceModel::ThresholdTotalAmountPrice,
            Orb::Models::PriceModel::TieredPackagePrice,
            Orb::Models::PriceModel::GroupedTieredPrice,
            Orb::Models::PriceModel::TieredWithMinimumPrice,
            Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
            Orb::Models::PriceModel::PackageWithAllocationPrice,
            Orb::Models::PriceModel::UnitWithPercentPrice,
            Orb::Models::PriceModel::MatrixWithAllocationPrice,
            Orb::Models::PriceModel::TieredWithProrationPrice,
            Orb::Models::PriceModel::UnitWithProrationPrice,
            Orb::Models::PriceModel::GroupedAllocationPrice,
            Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
            Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
            Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
            Orb::Models::PriceModel::BulkWithProrationPrice,
            Orb::Models::PriceModel::GroupedTieredPackagePrice,
            Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
            Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
            Orb::Models::PriceModel::CumulativeGroupedBulkPrice
          )
          ],
          product: Orb::Models::Plan::Product,
          status: Symbol,
          trial_config: Orb::Models::Plan::TrialConfig,
          version: Integer
        )
          .void
      end
      def initialize(
        id:,
        adjustments:,
        base_plan:,
        base_plan_id:,
        created_at:,
        currency:,
        default_invoice_memo:,
        description:,
        discount:,
        external_plan_id:,
        invoicing_currency:,
        maximum:,
        maximum_amount:,
        metadata:,
        minimum:,
        minimum_amount:,
        name:,
        net_terms:,
        plan_phases:,
        prices:,
        product:,
        status:,
        trial_config:,
        version:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              adjustments: T::Array[
              T.any(
                Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
                Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
                Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
                Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
                Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
              )
              ],
              base_plan: T.nilable(Orb::Models::PlanMinifiedModel),
              base_plan_id: T.nilable(String),
              created_at: Time,
              currency: String,
              default_invoice_memo: T.nilable(String),
              description: String,
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::Discount::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              ),
              external_plan_id: T.nilable(String),
              invoicing_currency: String,
              maximum: T.nilable(Orb::Models::MaximumModel),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Models::MinimumModel),
              minimum_amount: T.nilable(String),
              name: String,
              net_terms: T.nilable(Integer),
              plan_phases: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]),
              prices: T::Array[
              T.any(
                Orb::Models::PriceModel::UnitPrice,
                Orb::Models::PriceModel::PackagePrice,
                Orb::Models::PriceModel::MatrixPrice,
                Orb::Models::PriceModel::TieredPrice,
                Orb::Models::PriceModel::TieredBpsPrice,
                Orb::Models::PriceModel::BpsPrice,
                Orb::Models::PriceModel::BulkBpsPrice,
                Orb::Models::PriceModel::BulkPrice,
                Orb::Models::PriceModel::ThresholdTotalAmountPrice,
                Orb::Models::PriceModel::TieredPackagePrice,
                Orb::Models::PriceModel::GroupedTieredPrice,
                Orb::Models::PriceModel::TieredWithMinimumPrice,
                Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
                Orb::Models::PriceModel::PackageWithAllocationPrice,
                Orb::Models::PriceModel::UnitWithPercentPrice,
                Orb::Models::PriceModel::MatrixWithAllocationPrice,
                Orb::Models::PriceModel::TieredWithProrationPrice,
                Orb::Models::PriceModel::UnitWithProrationPrice,
                Orb::Models::PriceModel::GroupedAllocationPrice,
                Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
                Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
                Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
                Orb::Models::PriceModel::BulkWithProrationPrice,
                Orb::Models::PriceModel::GroupedTieredPackagePrice,
                Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
                Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::PriceModel::CumulativeGroupedBulkPrice
              )
              ],
              product: Orb::Models::Plan::Product,
              status: Symbol,
              trial_config: Orb::Models::Plan::TrialConfig,
              version: Integer
            }
          )
      end
      def to_hash
      end

      class PlanPhase < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::Discount::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def duration
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def duration=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def duration_unit
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def duration_unit=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Integer) }
        def order
        end

        sig { params(_: Integer).returns(Integer) }
        def order=(_)
        end

        sig do
          params(
            id: String,
            description: T.nilable(String),
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            duration: T.nilable(Integer),
            duration_unit: T.nilable(Symbol),
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            order: Integer
          )
            .void
        end
        def initialize(
          id:,
          description:,
          discount:,
          duration:,
          duration_unit:,
          maximum:,
          maximum_amount:,
          minimum:,
          minimum_amount:,
          name:,
          order:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                description: T.nilable(String),
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::Discount::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                duration: T.nilable(Integer),
                duration_unit: T.nilable(Symbol),
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                name: String,
                order: Integer
              }
            )
        end
        def to_hash
        end

        class DurationUnit < Orb::Enum
          abstract!

          DAILY = T.let(:daily, T.nilable(Symbol))
          MONTHLY = T.let(:monthly, T.nilable(Symbol))
          QUARTERLY = T.let(:quarterly, T.nilable(Symbol))
          SEMI_ANNUAL = T.let(:semi_annual, T.nilable(Symbol))
          ANNUAL = T.let(:annual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Product < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(id: String, created_at: Time, name: String).void }
        def initialize(id:, created_at:, name:)
        end

        sig { override.returns({id: String, created_at: Time, name: String}) }
        def to_hash
        end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class TrialConfig < Orb::BaseModel
        sig { returns(T.nilable(Integer)) }
        def trial_period
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def trial_period=(_)
        end

        sig { returns(Symbol) }
        def trial_period_unit
        end

        sig { params(_: Symbol).returns(Symbol) }
        def trial_period_unit=(_)
        end

        sig { params(trial_period: T.nilable(Integer), trial_period_unit: Symbol).void }
        def initialize(trial_period:, trial_period_unit:)
        end

        sig { override.returns({trial_period: T.nilable(Integer), trial_period_unit: Symbol}) }
        def to_hash
        end

        class TrialPeriodUnit < Orb::Enum
          abstract!

          DAYS = :days

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
