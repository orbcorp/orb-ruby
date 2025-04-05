# typed: strong

module Orb
  module Models
    class Plan < Orb::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # Adjustments for this plan. If the plan has phases, this includes adjustments
      # across all phases of the plan.
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
      attr_accessor :adjustments

      sig { returns(T.nilable(Orb::Models::Plan::BasePlan)) }
      attr_reader :base_plan

      sig { params(base_plan: T.nilable(T.any(Orb::Models::Plan::BasePlan, Orb::Internal::AnyHash))).void }
      attr_writer :base_plan

      # The parent plan id if the given plan was created by overriding one or more of
      # the parent's prices
      sig { returns(T.nilable(String)) }
      attr_accessor :base_plan_id

      sig { returns(Time) }
      attr_accessor :created_at

      # An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's
      # prices.
      sig { returns(String) }
      attr_accessor :currency

      # The default memo text on the invoices corresponding to subscriptions on this
      # plan. Note that each subscription may configure its own memo.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(String) }
      attr_accessor :description

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
      attr_accessor :discount

      # An optional user-defined ID for this plan resource, used throughout the system
      # as an alias for this Plan. Use this field to identify a plan by an existing
      # identifier in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      # unless `currency` is a custom pricing unit.
      sig { returns(String) }
      attr_accessor :invoicing_currency

      sig { returns(T.nilable(Orb::Models::Plan::Maximum)) }
      attr_reader :maximum

      sig { params(maximum: T.nilable(T.any(Orb::Models::Plan::Maximum, Orb::Internal::AnyHash))).void }
      attr_writer :maximum

      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(Orb::Models::Plan::Minimum)) }
      attr_reader :minimum

      sig { params(minimum: T.nilable(T.any(Orb::Models::Plan::Minimum, Orb::Internal::AnyHash))).void }
      attr_writer :minimum

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      sig { returns(String) }
      attr_accessor :name

      # Determines the difference between the invoice issue date and the due date. A
      # value of "0" here signifies that invoices are due on issue, whereas a value of
      # "30" means that the customer has a month to pay the invoice before its overdue.
      # Note that individual subscriptions or invoices may set a different net terms
      # configuration.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(T::Array[Orb::Models::Plan::PlanPhase])) }
      attr_accessor :plan_phases

      # Prices for this plan. If the plan has phases, this includes prices across all
      # phases of the plan.
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
      attr_accessor :prices

      sig { returns(Orb::Models::Plan::Product) }
      attr_reader :product

      sig { params(product: T.any(Orb::Models::Plan::Product, Orb::Internal::AnyHash)).void }
      attr_writer :product

      sig { returns(Orb::Models::Plan::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Orb::Models::Plan::TrialConfig) }
      attr_reader :trial_config

      sig { params(trial_config: T.any(Orb::Models::Plan::TrialConfig, Orb::Internal::AnyHash)).void }
      attr_writer :trial_config

      sig { returns(Integer) }
      attr_accessor :version

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      sig do
        params(
          id: String,
          adjustments: T::Array[
            T.any(
              Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Internal::AnyHash,
              Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
            )
          ],
          base_plan: T.nilable(T.any(Orb::Models::Plan::BasePlan, Orb::Internal::AnyHash)),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_plan_id: T.nilable(String),
          invoicing_currency: String,
          maximum: T.nilable(T.any(Orb::Models::Plan::Maximum, Orb::Internal::AnyHash)),
          maximum_amount: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(T.any(Orb::Models::Plan::Minimum, Orb::Internal::AnyHash)),
          minimum_amount: T.nilable(String),
          name: String,
          net_terms: T.nilable(Integer),
          plan_phases: T.nilable(T::Array[T.any(Orb::Models::Plan::PlanPhase, Orb::Internal::AnyHash)]),
          prices: T::Array[
            T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Internal::AnyHash,
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
          product: T.any(Orb::Models::Plan::Product, Orb::Internal::AnyHash),
          status: Orb::Models::Plan::Status::OrSymbol,
          trial_config: T.any(Orb::Models::Plan::TrialConfig, Orb::Internal::AnyHash),
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
      ); end
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
              status: Orb::Models::Plan::Status::TaggedSymbol,
              trial_config: Orb::Models::Plan::TrialConfig,
              version: Integer
            }
          )
      end
      def to_hash; end

      module Adjustment
        extend Orb::Internal::Type::Union

        class PlanPhaseUsageDiscountAdjustment < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The number of usage units by which to discount the price this adjustment applies
          # to in a given billing period.
          sig { returns(Float) }
          attr_accessor :usage_discount

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
          ); end
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
          def to_hash; end
        end

        class PlanPhaseAmountDiscountAdjustment < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The amount by which to discount the prices this adjustment applies to in a given
          # billing period.
          sig { returns(String) }
          attr_accessor :amount_discount

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
          ); end
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
          def to_hash; end
        end

        class PlanPhasePercentageDiscountAdjustment < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The percentage (as a value between 0 and 1) by which to discount the price
          # intervals this adjustment applies to in a given billing period.
          sig { returns(Float) }
          attr_accessor :percentage_discount

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
          ); end
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
          def to_hash; end
        end

        class PlanPhaseMinimumAdjustment < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The item ID that revenue from this minimum will be attributed to.
          sig { returns(String) }
          attr_accessor :item_id

          # The minimum amount to charge in a given billing period for the prices this
          # adjustment applies to.
          sig { returns(String) }
          attr_accessor :minimum_amount

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
          ); end
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
          def to_hash; end
        end

        class PlanPhaseMaximumAdjustment < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # True for adjustments that apply to an entire invocice, false for adjustments
          # that apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The maximum amount to charge in a given billing period for the prices this
          # adjustment applies to.
          sig { returns(String) }
          attr_accessor :maximum_amount

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

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
          ); end
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
          def to_hash; end
        end

        sig do
          override
            .returns(
              [Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment]
            )
        end
        def self.variants; end
      end

      class BasePlan < Orb::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # An optional user-defined ID for this plan resource, used throughout the system
        # as an alias for this Plan. Use this field to identify a plan by an existing
        # identifier in your system.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(id:, external_plan_id:, name:); end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              external_plan_id: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash; end
      end

      class Maximum < Orb::Internal::Type::BaseModel
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        # maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # Maximum amount applied
        sig { returns(String) }
        attr_accessor :maximum_amount

        sig do
          params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, maximum_amount:); end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash; end
      end

      class Minimum < Orb::Internal::Type::BaseModel
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        # minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # Minimum amount applied
        sig { returns(String) }
        attr_accessor :minimum_amount

        sig do
          params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, minimum_amount:); end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash; end
      end

      class PlanPhase < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

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
        attr_accessor :discount

        # How many terms of length `duration_unit` this phase is active for. If null, this
        # phase is evergreen and active indefinitely
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol)) }
        attr_accessor :duration_unit

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Plan::PlanPhase::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Plan::PlanPhase::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(String) }
        attr_accessor :name

        # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
        sig { returns(Integer) }
        attr_accessor :order

        sig do
          params(
            id: String,
            description: T.nilable(String),
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            duration: T.nilable(Integer),
            duration_unit: T.nilable(Orb::Models::Plan::PlanPhase::DurationUnit::OrSymbol),
            maximum: T.nilable(T.any(Orb::Models::Plan::PlanPhase::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(T.any(Orb::Models::Plan::PlanPhase::Minimum, Orb::Internal::AnyHash)),
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
        ); end
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
                duration_unit: T.nilable(Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol),
                maximum: T.nilable(Orb::Models::Plan::PlanPhase::Maximum),
                maximum_amount: T.nilable(String),
                minimum: T.nilable(Orb::Models::Plan::PlanPhase::Minimum),
                minimum_amount: T.nilable(String),
                name: String,
                order: Integer
              }
            )
        end
        def to_hash; end

        module DurationUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Plan::PlanPhase::DurationUnit) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol) }

          DAILY = T.let(:daily, Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Plan::PlanPhase::DurationUnit::TaggedSymbol]) }
          def self.values; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:); end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:); end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end
      end

      class Product < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, created_at: Time, name: String).returns(T.attached_class) }
        def self.new(id:, created_at:, name:); end

        sig { override.returns({id: String, created_at: Time, name: String}) }
        def to_hash; end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Plan::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Plan::Status::TaggedSymbol) }

        ACTIVE = T.let(:active, Orb::Models::Plan::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, Orb::Models::Plan::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::Models::Plan::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::Plan::Status::TaggedSymbol]) }
        def self.values; end
      end

      class TrialConfig < Orb::Internal::Type::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period

        sig { returns(Orb::Models::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol) }
        attr_accessor :trial_period_unit

        sig do
          params(
            trial_period: T.nilable(Integer),
            trial_period_unit: Orb::Models::Plan::TrialConfig::TrialPeriodUnit::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(trial_period:, trial_period_unit:); end

        sig do
          override
            .returns(
              {
                trial_period: T.nilable(Integer),
                trial_period_unit: Orb::Models::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol
              }
            )
        end
        def to_hash; end

        module TrialPeriodUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Plan::TrialConfig::TrialPeriodUnit) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol) }

          DAYS = T.let(:days, Orb::Models::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
