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

      # Adjustments for this plan. If the plan has phases, this includes adjustments
      #   across all phases of the plan.
      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
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
            Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
            )
            ]
          )
      end
      def adjustments=(_)
      end

      sig { returns(T.nilable(Orb::Models::Plan::BasePlan)) }
      def base_plan
      end

      sig { params(_: T.nilable(Orb::Models::Plan::BasePlan)).returns(T.nilable(Orb::Models::Plan::BasePlan)) }
      def base_plan=(_)
      end

      # The parent plan id if the given plan was created by overriding one or more of
      #   the parent's prices
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

      # An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's
      #   prices.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The default memo text on the invoices corresponding to subscriptions on this
      #   plan. Note that each subscription may configure its own memo.
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
              Orb::Models::UsageDiscount,
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
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
      end
      def discount=(_)
      end

      # An optional user-defined ID for this plan resource, used throughout the system
      #   as an alias for this Plan. Use this field to identify a plan by an existing
      #   identifier in your system.
      sig { returns(T.nilable(String)) }
      def external_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_plan_id=(_)
      end

      # An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      #   unless `currency` is a custom pricing unit.
      sig { returns(String) }
      def invoicing_currency
      end

      sig { params(_: String).returns(String) }
      def invoicing_currency=(_)
      end

      sig { returns(T.nilable(Orb::Models::Plan::Maximum)) }
      def maximum
      end

      sig { params(_: T.nilable(Orb::Models::Plan::Maximum)).returns(T.nilable(Orb::Models::Plan::Maximum)) }
      def maximum=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Orb::Models::Plan::Minimum)) }
      def minimum
      end

      sig { params(_: T.nilable(Orb::Models::Plan::Minimum)).returns(T.nilable(Orb::Models::Plan::Minimum)) }
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

      # Determines the difference between the invoice issue date and the due date. A
      #   value of "0" here signifies that invoices are due on issue, whereas a value of
      #   "30" means that the customer has a month to pay the invoice before its overdue.
      #   Note that individual subscriptions or invoices may set a different net terms
      #   configuration.
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

      # Prices for this plan. If the plan has phases, this includes prices across all
      #   phases of the plan.
      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::Price::UnitPrice,
            Orb::Models::Price::PackagePrice,
            Orb::Models::Price::MatrixPrice,
            Orb::Models::Price::TieredPrice,
            Orb::Models::Price::TieredBpsPrice,
            Orb::Models::Price::BpsPrice,
            Orb::Models::Price::BulkBpsPrice,
            Orb::Models::Price::BulkPrice,
            Orb::Models::Price::ThresholdTotalAmountPrice,
            Orb::Models::Price::TieredPackagePrice,
            Orb::Models::Price::GroupedTieredPrice,
            Orb::Models::Price::TieredWithMinimumPrice,
            Orb::Models::Price::TieredPackageWithMinimumPrice,
            Orb::Models::Price::PackageWithAllocationPrice,
            Orb::Models::Price::UnitWithPercentPrice,
            Orb::Models::Price::MatrixWithAllocationPrice,
            Orb::Models::Price::TieredWithProrationPrice,
            Orb::Models::Price::UnitWithProrationPrice,
            Orb::Models::Price::GroupedAllocationPrice,
            Orb::Models::Price::GroupedWithProratedMinimumPrice,
            Orb::Models::Price::GroupedWithMeteredMinimumPrice,
            Orb::Models::Price::MatrixWithDisplayNamePrice,
            Orb::Models::Price::BulkWithProrationPrice,
            Orb::Models::Price::GroupedTieredPackagePrice,
            Orb::Models::Price::MaxGroupTieredPackagePrice,
            Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
            Orb::Models::Price::CumulativeGroupedBulkPrice
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
            Orb::Models::Price::UnitPrice,
            Orb::Models::Price::PackagePrice,
            Orb::Models::Price::MatrixPrice,
            Orb::Models::Price::TieredPrice,
            Orb::Models::Price::TieredBpsPrice,
            Orb::Models::Price::BpsPrice,
            Orb::Models::Price::BulkBpsPrice,
            Orb::Models::Price::BulkPrice,
            Orb::Models::Price::ThresholdTotalAmountPrice,
            Orb::Models::Price::TieredPackagePrice,
            Orb::Models::Price::GroupedTieredPrice,
            Orb::Models::Price::TieredWithMinimumPrice,
            Orb::Models::Price::TieredPackageWithMinimumPrice,
            Orb::Models::Price::PackageWithAllocationPrice,
            Orb::Models::Price::UnitWithPercentPrice,
            Orb::Models::Price::MatrixWithAllocationPrice,
            Orb::Models::Price::TieredWithProrationPrice,
            Orb::Models::Price::UnitWithProrationPrice,
            Orb::Models::Price::GroupedAllocationPrice,
            Orb::Models::Price::GroupedWithProratedMinimumPrice,
            Orb::Models::Price::GroupedWithMeteredMinimumPrice,
            Orb::Models::Price::MatrixWithDisplayNamePrice,
            Orb::Models::Price::BulkWithProrationPrice,
            Orb::Models::Price::GroupedTieredPackagePrice,
            Orb::Models::Price::MaxGroupTieredPackagePrice,
            Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
            Orb::Models::Price::CumulativeGroupedBulkPrice
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Models::Price::PackagePrice,
              Orb::Models::Price::MatrixPrice,
              Orb::Models::Price::TieredPrice,
              Orb::Models::Price::TieredBpsPrice,
              Orb::Models::Price::BpsPrice,
              Orb::Models::Price::BulkBpsPrice,
              Orb::Models::Price::BulkPrice,
              Orb::Models::Price::ThresholdTotalAmountPrice,
              Orb::Models::Price::TieredPackagePrice,
              Orb::Models::Price::GroupedTieredPrice,
              Orb::Models::Price::TieredWithMinimumPrice,
              Orb::Models::Price::TieredPackageWithMinimumPrice,
              Orb::Models::Price::PackageWithAllocationPrice,
              Orb::Models::Price::UnitWithPercentPrice,
              Orb::Models::Price::MatrixWithAllocationPrice,
              Orb::Models::Price::TieredWithProrationPrice,
              Orb::Models::Price::UnitWithProrationPrice,
              Orb::Models::Price::GroupedAllocationPrice,
              Orb::Models::Price::GroupedWithProratedMinimumPrice,
              Orb::Models::Price::GroupedWithMeteredMinimumPrice,
              Orb::Models::Price::MatrixWithDisplayNamePrice,
              Orb::Models::Price::BulkWithProrationPrice,
              Orb::Models::Price::GroupedTieredPackagePrice,
              Orb::Models::Price::MaxGroupTieredPackagePrice,
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::Price::CumulativeGroupedBulkPrice
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

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   subscribed to by a customer. Plans define the billing behavior of the
      #   subscription. You can see more about how to configure prices in the
      #   [Price resource](/reference/price).
      sig do
        params(
          id: String,
          adjustments: T::Array[
          T.any(
            Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
          )
          ],
          base_plan: T.nilable(Orb::Models::Plan::BasePlan),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_plan_id: T.nilable(String),
          invoicing_currency: String,
          maximum: T.nilable(Orb::Models::Plan::Maximum),
          maximum_amount: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Models::Plan::Minimum),
          minimum_amount: T.nilable(String),
          name: String,
          net_terms: T.nilable(Integer),
          plan_phases: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]),
          prices: T::Array[
          T.any(
            Orb::Models::Price::UnitPrice,
            Orb::Models::Price::PackagePrice,
            Orb::Models::Price::MatrixPrice,
            Orb::Models::Price::TieredPrice,
            Orb::Models::Price::TieredBpsPrice,
            Orb::Models::Price::BpsPrice,
            Orb::Models::Price::BulkBpsPrice,
            Orb::Models::Price::BulkPrice,
            Orb::Models::Price::ThresholdTotalAmountPrice,
            Orb::Models::Price::TieredPackagePrice,
            Orb::Models::Price::GroupedTieredPrice,
            Orb::Models::Price::TieredWithMinimumPrice,
            Orb::Models::Price::TieredPackageWithMinimumPrice,
            Orb::Models::Price::PackageWithAllocationPrice,
            Orb::Models::Price::UnitWithPercentPrice,
            Orb::Models::Price::MatrixWithAllocationPrice,
            Orb::Models::Price::TieredWithProrationPrice,
            Orb::Models::Price::UnitWithProrationPrice,
            Orb::Models::Price::GroupedAllocationPrice,
            Orb::Models::Price::GroupedWithProratedMinimumPrice,
            Orb::Models::Price::GroupedWithMeteredMinimumPrice,
            Orb::Models::Price::MatrixWithDisplayNamePrice,
            Orb::Models::Price::BulkWithProrationPrice,
            Orb::Models::Price::GroupedTieredPackagePrice,
            Orb::Models::Price::MaxGroupTieredPackagePrice,
            Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
            Orb::Models::Price::CumulativeGroupedBulkPrice
          )
          ],
          product: Orb::Models::Plan::Product,
          status: Symbol,
          trial_config: Orb::Models::Plan::TrialConfig,
          version: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(
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
                Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
                Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
                Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
                Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
                Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
              )
              ],
              base_plan: T.nilable(Orb::Models::Plan::BasePlan),
              base_plan_id: T.nilable(String),
              created_at: Time,
              currency: String,
              default_invoice_memo: T.nilable(String),
              description: String,
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              ),
              external_plan_id: T.nilable(String),
              invoicing_currency: String,
              maximum: T.nilable(Orb::Models::Plan::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Models::Plan::Minimum),
              minimum_amount: T.nilable(String),
              name: String,
              net_terms: T.nilable(Integer),
              plan_phases: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]),
              prices: T::Array[
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
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

      class Adjustment < Orb::Union
        abstract!

        class PlanPhaseUsageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          def plan_phase_order
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def plan_phase_order=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          # The number of usage units by which to discount the price this adjustment applies
          #   to in a given billing period.
          sig { returns(Float) }
          def usage_discount
          end

          sig { params(_: Float).returns(Float) }
          def usage_discount=(_)
          end

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              usage_discount: Float,
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            plan_phase_order:,
            reason:,
            usage_discount:,
            adjustment_type: :usage_discount
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  usage_discount: Float
                }
              )
          end
          def to_hash
          end
        end

        class PlanPhaseAmountDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The amount by which to discount the prices this adjustment applies to in a given
          #   billing period.
          sig { returns(String) }
          def amount_discount
          end

          sig { params(_: String).returns(String) }
          def amount_discount=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          def plan_phase_order
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def plan_phase_order=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount_discount:,
            applies_to_price_ids:,
            is_invoice_level:,
            plan_phase_order:,
            reason:,
            adjustment_type: :amount_discount
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class PlanPhasePercentageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The percentage (as a value between 0 and 1) by which to discount the price
          #   intervals this adjustment applies to in a given billing period.
          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          def plan_phase_order
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def plan_phase_order=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              percentage_discount: Float,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            percentage_discount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :percentage_discount
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  percentage_discount: Float,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class PlanPhaseMinimumAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The item ID that revenue from this minimum will be attributed to.
          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          # The minimum amount to charge in a given billing period for the prices this
          #   adjustment applies to.
          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          def plan_phase_order
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def plan_phase_order=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              item_id: String,
              minimum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            item_id:,
            minimum_amount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :minimum
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  item_id: String,
                  minimum_amount: String,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class PlanPhaseMaximumAdjustment < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def adjustment_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def adjustment_type=(_)
          end

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # True for adjustments that apply to an entire invocice, false for adjustments
          #   that apply to only one price.
          sig { returns(T::Boolean) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          # The maximum amount to charge in a given billing period for the prices this
          #   adjustment applies to.
          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          def plan_phase_order
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def plan_phase_order=(_)
          end

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_)
          end

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              maximum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            maximum_amount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :maximum
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean,
                  maximum_amount: String,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns(
                [Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment]
              )
          end
          def variants
          end
        end
      end

      class BasePlan < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_)
        end

        # An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        sig { returns(T.nilable(String)) }
        def external_plan_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_plan_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(id:, external_plan_id:, name:)
        end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              external_plan_id: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Maximum < Orb::BaseModel
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        #   maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # Maximum amount applied
        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        sig do
          params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, maximum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash
        end
      end

      class Minimum < Orb::BaseModel
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        #   minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # Minimum amount applied
        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        sig do
          params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, minimum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash
        end
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
                Orb::Models::UsageDiscount,
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
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
        end

        # How many terms of length `duration_unit` this phase is active for. If null, this
        #   phase is evergreen and active indefinitely
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

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Plan::PlanPhase::Maximum))
            .returns(T.nilable(Orb::Models::Plan::PlanPhase::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Plan::PlanPhase::Minimum))
            .returns(T.nilable(Orb::Models::Plan::PlanPhase::Minimum))
        end
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

        # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
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
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            duration: T.nilable(Integer),
            duration_unit: T.nilable(Symbol),
            maximum: T.nilable(Orb::Models::Plan::PlanPhase::Maximum),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Models::Plan::PlanPhase::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            order: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                duration: T.nilable(Integer),
                duration_unit: T.nilable(Symbol),
                maximum: T.nilable(Orb::Models::Plan::PlanPhase::Maximum),
                maximum_amount: T.nilable(String),
                minimum: T.nilable(Orb::Models::Plan::PlanPhase::Minimum),
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # Maximum amount applied
          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # Minimum amount applied
          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
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

        sig { params(id: String, created_at: Time, name: String).returns(T.attached_class) }
        def self.new(id:, created_at:, name:)
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
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

        sig { params(trial_period: T.nilable(Integer), trial_period_unit: Symbol).returns(T.attached_class) }
        def self.new(trial_period:, trial_period_unit:)
        end

        sig { override.returns({trial_period: T.nilable(Integer), trial_period_unit: Symbol}) }
        def to_hash
        end

        class TrialPeriodUnit < Orb::Enum
          abstract!

          DAYS = :days

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
