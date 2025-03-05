# typed: strong

module Orb
  module Models
    class AdjustmentModel < Orb::Union
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

        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Boolean) }
        def is_invoice_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_invoice_level=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reason=(_)
        end

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
            .void
        end
        def initialize(
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

        sig { returns(String) }
        def amount_discount
        end

        sig { params(_: String).returns(String) }
        def amount_discount=(_)
        end

        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Boolean) }
        def is_invoice_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_invoice_level=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

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
            .void
        end
        def initialize(
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

        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Boolean) }
        def is_invoice_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_invoice_level=(_)
        end

        sig { returns(Float) }
        def percentage_discount
        end

        sig { params(_: Float).returns(Float) }
        def percentage_discount=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

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
            .void
        end
        def initialize(
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

        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Boolean) }
        def is_invoice_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_invoice_level=(_)
        end

        sig { returns(String) }
        def item_id
        end

        sig { params(_: String).returns(String) }
        def item_id=(_)
        end

        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

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
            .void
        end
        def initialize(
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

        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Boolean) }
        def is_invoice_level
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_invoice_level=(_)
        end

        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

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
            .void
        end
        def initialize(
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

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment], [Symbol, Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment], [Symbol, Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment], [Symbol, Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment], [Symbol, Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
