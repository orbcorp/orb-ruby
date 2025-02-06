# typed: strong

module Orb
  module Models
    class Subscription < Orb::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::Models::Subscription::AdjustmentInterval],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: Orb::Models::Subscription::BillingCycleAnchorConfiguration,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Models::Customer,
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[Orb::Models::Subscription::DiscountInterval::Variants],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[Orb::Models::Subscription::FixedFeeQuantitySchedule],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::Models::Subscription::MaximumInterval],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::Models::Subscription::MinimumInterval],
          net_terms: Integer,
          plan: Orb::Models::Plan,
          price_intervals: T::Array[Orb::Models::Subscription::PriceInterval],
          redeemed_coupon: T.nilable(Orb::Models::Subscription::RedeemedCoupon),
          start_date: Time,
          status: Symbol,
          trial_info: Orb::Models::Subscription::TrialInfo
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :active_plan_phase_order

      sig { returns(T::Array[Orb::Models::Subscription::AdjustmentInterval]) }
      attr_accessor :adjustment_intervals

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(Orb::Models::Subscription::BillingCycleAnchorConfiguration) }
      attr_accessor :billing_cycle_anchor_configuration

      sig { returns(Integer) }
      attr_accessor :billing_cycle_day

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_end_date

      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_start_date

      sig { returns(Orb::Models::Customer) }
      attr_accessor :customer

      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(T::Array[Orb::Models::Subscription::DiscountInterval::Variants]) }
      attr_accessor :discount_intervals

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(T::Array[Orb::Models::Subscription::FixedFeeQuantitySchedule]) }
      attr_accessor :fixed_fee_quantity_schedule

      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      sig { returns(T::Array[Orb::Models::Subscription::MaximumInterval]) }
      attr_accessor :maximum_intervals

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T::Array[Orb::Models::Subscription::MinimumInterval]) }
      attr_accessor :minimum_intervals

      sig { returns(Integer) }
      attr_accessor :net_terms

      sig { returns(Orb::Models::Plan) }
      attr_accessor :plan

      sig { returns(T::Array[Orb::Models::Subscription::PriceInterval]) }
      attr_accessor :price_intervals

      sig { returns(T.nilable(Orb::Models::Subscription::RedeemedCoupon)) }
      attr_accessor :redeemed_coupon

      sig { returns(Time) }
      attr_accessor :start_date

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Orb::Models::Subscription::TrialInfo) }
      attr_accessor :trial_info

      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::Models::Subscription::AdjustmentInterval],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: Orb::Models::Subscription::BillingCycleAnchorConfiguration,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Models::Customer,
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[Orb::Models::Subscription::DiscountInterval::Variants],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[Orb::Models::Subscription::FixedFeeQuantitySchedule],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::Models::Subscription::MaximumInterval],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::Models::Subscription::MinimumInterval],
          net_terms: Integer,
          plan: Orb::Models::Plan,
          price_intervals: T::Array[Orb::Models::Subscription::PriceInterval],
          redeemed_coupon: T.nilable(Orb::Models::Subscription::RedeemedCoupon),
          start_date: Time,
          status: Symbol,
          trial_info: Orb::Models::Subscription::TrialInfo
        ).void
      end
      def initialize(
        id:,
        active_plan_phase_order:,
        adjustment_intervals:,
        auto_collection:,
        billing_cycle_anchor_configuration:,
        billing_cycle_day:,
        created_at:,
        current_billing_period_end_date:,
        current_billing_period_start_date:,
        customer:,
        default_invoice_memo:,
        discount_intervals:,
        end_date:,
        fixed_fee_quantity_schedule:,
        invoicing_threshold:,
        maximum_intervals:,
        metadata:,
        minimum_intervals:,
        net_terms:,
        plan:,
        price_intervals:,
        redeemed_coupon:,
        start_date:,
        status:,
        trial_info:
      ); end

      sig { returns(Orb::Models::Subscription::Shape) }
      def to_h; end

      class AdjustmentInterval < Orb::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            adjustment: Orb::Models::Subscription::AdjustmentInterval::Adjustment::Variants,
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Orb::Models::Subscription::AdjustmentInterval::Adjustment::Variants) }
        attr_accessor :adjustment

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            id: String,
            adjustment: Orb::Models::Subscription::AdjustmentInterval::Adjustment::Variants,
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          ).void
        end
        def initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:); end

        sig { returns(Orb::Models::Subscription::AdjustmentInterval::Shape) }
        def to_h; end

        class Adjustment < Orb::Union
          abstract!

          Variants = T.type_alias do
            T.any(
              Orb::Models::Subscription::AdjustmentInterval::Adjustment::AmountDiscountAdjustment,
              Orb::Models::Subscription::AdjustmentInterval::Adjustment::PercentageDiscountAdjustment,
              Orb::Models::Subscription::AdjustmentInterval::Adjustment::UsageDiscountAdjustment,
              Orb::Models::Subscription::AdjustmentInterval::Adjustment::MinimumAdjustment,
              Orb::Models::Subscription::AdjustmentInterval::Adjustment::MaximumAdjustment
            )
          end

          class AmountDiscountAdjustment < Orb::BaseModel
            Shape = T.type_alias do
              {
                id: String,
                adjustment_type: Symbol,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

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
              ).void
            end
            def initialize(
              id:,
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level:,
              plan_phase_order:,
              reason:,
              adjustment_type: :amount_discount
            ); end

            sig do
              returns(Orb::Models::Subscription::AdjustmentInterval::Adjustment::AmountDiscountAdjustment::Shape)
            end
            def to_h; end
          end

          class PercentageDiscountAdjustment < Orb::BaseModel
            Shape = T.type_alias do
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

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
              ).void
            end
            def initialize(
              id:,
              applies_to_price_ids:,
              is_invoice_level:,
              percentage_discount:,
              plan_phase_order:,
              reason:,
              adjustment_type: :percentage_discount
            ); end

            sig do
              returns(Orb::Models::Subscription::AdjustmentInterval::Adjustment::PercentageDiscountAdjustment::Shape)
            end
            def to_h; end
          end

          class UsageDiscountAdjustment < Orb::BaseModel
            Shape = T.type_alias do
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                usage_discount: Float
              }
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

            sig { returns(T.nilable(String)) }
            attr_accessor :reason

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
              ).void
            end
            def initialize(
              id:,
              applies_to_price_ids:,
              is_invoice_level:,
              plan_phase_order:,
              reason:,
              usage_discount:,
              adjustment_type: :usage_discount
            ); end

            sig do
              returns(Orb::Models::Subscription::AdjustmentInterval::Adjustment::UsageDiscountAdjustment::Shape)
            end
            def to_h; end
          end

          class MinimumAdjustment < Orb::BaseModel
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

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
              ).void
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
            ); end

            sig do
              returns(Orb::Models::Subscription::AdjustmentInterval::Adjustment::MinimumAdjustment::Shape)
            end
            def to_h; end
          end

          class MaximumAdjustment < Orb::BaseModel
            Shape = T.type_alias do
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(String) }
            attr_accessor :maximum_amount

            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

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
              ).void
            end
            def initialize(
              id:,
              applies_to_price_ids:,
              is_invoice_level:,
              maximum_amount:,
              plan_phase_order:,
              reason:,
              adjustment_type: :maximum
            ); end

            sig do
              returns(Orb::Models::Subscription::AdjustmentInterval::Adjustment::MaximumAdjustment::Shape)
            end
            def to_h; end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::Subscription::AdjustmentInterval::Adjustment::AmountDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::Subscription::AdjustmentInterval::Adjustment::PercentageDiscountAdjustment
                ],
                [Symbol, Orb::Models::Subscription::AdjustmentInterval::Adjustment::UsageDiscountAdjustment],
                [Symbol, Orb::Models::Subscription::AdjustmentInterval::Adjustment::MinimumAdjustment],
                [Symbol, Orb::Models::Subscription::AdjustmentInterval::Adjustment::MaximumAdjustment]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        Shape = T.type_alias { {day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)} }

        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(T.nilable(Integer)) }
        attr_accessor :month

        sig { returns(T.nilable(Integer)) }
        attr_accessor :year

        sig { params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).void }
        def initialize(day:, month: nil, year: nil); end

        sig { returns(Orb::Models::Subscription::BillingCycleAnchorConfiguration::Shape) }
        def to_h; end
      end

      class DiscountInterval < Orb::Union
        abstract!

        Variants = T.type_alias do
          T.any(
            Orb::Models::Subscription::DiscountInterval::AmountDiscountInterval,
            Orb::Models::Subscription::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::Subscription::DiscountInterval::UsageDiscountInterval
          )
        end

        class AmountDiscountInterval < Orb::BaseModel
          Shape = T.type_alias do
            {
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              discount_type: Symbol,
              end_date: T.nilable(Time),
              start_date: Time
            }
          end

          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time,
              discount_type: Symbol
            ).void
          end
          def initialize(
            amount_discount:,
            applies_to_price_ids:,
            applies_to_price_interval_ids:,
            end_date:,
            start_date:,
            discount_type: :amount
          ); end

          sig { returns(Orb::Models::Subscription::DiscountInterval::AmountDiscountInterval::Shape) }
          def to_h; end
        end

        class PercentageDiscountInterval < Orb::BaseModel
          Shape = T.type_alias do
            {
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              discount_type: Symbol,
              end_date: T.nilable(Time),
              percentage_discount: Float,
              start_date: Time
            }
          end

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              percentage_discount: Float,
              start_date: Time,
              discount_type: Symbol
            ).void
          end
          def initialize(
            applies_to_price_ids:,
            applies_to_price_interval_ids:,
            end_date:,
            percentage_discount:,
            start_date:,
            discount_type: :percentage
          ); end

          sig { returns(Orb::Models::Subscription::DiscountInterval::PercentageDiscountInterval::Shape) }
          def to_h; end
        end

        class UsageDiscountInterval < Orb::BaseModel
          Shape = T.type_alias do
            {
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              discount_type: Symbol,
              end_date: T.nilable(Time),
              start_date: Time,
              usage_discount: Float
            }
          end

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Time) }
          attr_accessor :start_date

          sig { returns(Float) }
          attr_accessor :usage_discount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time,
              usage_discount: Float,
              discount_type: Symbol
            ).void
          end
          def initialize(
            applies_to_price_ids:,
            applies_to_price_interval_ids:,
            end_date:,
            start_date:,
            usage_discount:,
            discount_type: :usage
          ); end

          sig { returns(Orb::Models::Subscription::DiscountInterval::UsageDiscountInterval::Shape) }
          def to_h; end
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::Subscription::DiscountInterval::AmountDiscountInterval],
              [Symbol, Orb::Models::Subscription::DiscountInterval::PercentageDiscountInterval],
              [Symbol, Orb::Models::Subscription::DiscountInterval::UsageDiscountInterval]
            ]
          )
        end
        private_class_method def self.variants; end
      end

      class FixedFeeQuantitySchedule < Orb::BaseModel
        Shape = T.type_alias do
          {end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time}
        end

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :price_id

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Time) }
        attr_accessor :start_date

        sig { params(end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time).void }
        def initialize(end_date:, price_id:, quantity:, start_date:); end

        sig { returns(Orb::Models::Subscription::FixedFeeQuantitySchedule::Shape) }
        def to_h; end
      end

      class MaximumInterval < Orb::BaseModel
        Shape = T.type_alias do
          {
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            maximum_amount: String,
            start_date: Time
          }
        end

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :maximum_amount

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            maximum_amount: String,
            start_date: Time
          ).void
        end
        def initialize(
          applies_to_price_ids:,
          applies_to_price_interval_ids:,
          end_date:,
          maximum_amount:,
          start_date:
        )
        end

        sig { returns(Orb::Models::Subscription::MaximumInterval::Shape) }
        def to_h; end
      end

      class MinimumInterval < Orb::BaseModel
        Shape = T.type_alias do
          {
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            minimum_amount: String,
            start_date: Time
          }
        end

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :minimum_amount

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            minimum_amount: String,
            start_date: Time
          ).void
        end
        def initialize(
          applies_to_price_ids:,
          applies_to_price_interval_ids:,
          end_date:,
          minimum_amount:,
          start_date:
        )
        end

        sig { returns(Orb::Models::Subscription::MinimumInterval::Shape) }
        def to_h; end
      end

      class PriceInterval < Orb::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::Subscription::PriceInterval::FixedFeeQuantityTransition]),
            price: Orb::Models::Price::Variants,
            start_date: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :billing_cycle_day

        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_end_date

        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_start_date

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig do
          returns(T.nilable(T::Array[Orb::Models::Subscription::PriceInterval::FixedFeeQuantityTransition]))
        end
        attr_accessor :fixed_fee_quantity_transitions

        sig { returns(Orb::Models::Price::Variants) }
        attr_accessor :price

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::Subscription::PriceInterval::FixedFeeQuantityTransition]),
            price: Orb::Models::Price::Variants,
            start_date: Time
          ).void
        end
        def initialize(
          id:,
          billing_cycle_day:,
          current_billing_period_end_date:,
          current_billing_period_start_date:,
          end_date:,
          fixed_fee_quantity_transitions:,
          price:,
          start_date:
        ); end

        sig { returns(Orb::Models::Subscription::PriceInterval::Shape) }
        def to_h; end

        class FixedFeeQuantityTransition < Orb::BaseModel
          Shape = T.type_alias { {effective_date: Time, price_id: String, quantity: Integer} }

          sig { returns(Time) }
          attr_accessor :effective_date

          sig { returns(String) }
          attr_accessor :price_id

          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, price_id: String, quantity: Integer).void }
          def initialize(effective_date:, price_id:, quantity:); end

          sig { returns(Orb::Models::Subscription::PriceInterval::FixedFeeQuantityTransition::Shape) }
          def to_h; end
        end
      end

      class RedeemedCoupon < Orb::BaseModel
        Shape = T.type_alias { {coupon_id: String, end_date: T.nilable(Time), start_date: Time} }

        sig { returns(String) }
        attr_accessor :coupon_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(Time) }
        attr_accessor :start_date

        sig { params(coupon_id: String, end_date: T.nilable(Time), start_date: Time).void }
        def initialize(coupon_id:, end_date:, start_date:); end

        sig { returns(Orb::Models::Subscription::RedeemedCoupon::Shape) }
        def to_h; end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class TrialInfo < Orb::BaseModel
        Shape = T.type_alias { {end_date: T.nilable(Time)} }

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { params(end_date: T.nilable(Time)).void }
        def initialize(end_date:); end

        sig { returns(Orb::Models::Subscription::TrialInfo::Shape) }
        def to_h; end
      end
    end
  end
end
