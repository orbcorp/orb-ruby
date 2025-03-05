# typed: strong

module Orb
  module Models
    class AddSubscriptionAdjustmentParams < Orb::BaseModel
      sig do
        returns(
          T.any(
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum
          )
        )
      end
      def adjustment
      end

      sig do
        params(
          _: T.any(
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum
          )
        )
          .returns(
            T.any(
              Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount,
              Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount,
              Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount,
              Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum,
              Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum
            )
          )
      end
      def adjustment=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def plan_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def plan_phase_order=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date=(_)
      end

      sig do
        params(
          adjustment: T.any(
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum,
            Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum
          ),
          end_date: T.nilable(Time),
          plan_phase_order: T.nilable(Integer),
          start_date: T.nilable(Time)
        )
          .void
      end
      def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil)
      end

      sig do
        override
          .returns(
            {
              adjustment: T.any(
                Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount,
                Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount,
                Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount,
                Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum,
                Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum
              ),
              end_date: T.nilable(Time),
              plan_phase_order: T.nilable(Integer),
              start_date: T.nilable(Time)
            }
          )
      end
      def to_hash
      end

      class Adjustment < Orb::Union
        abstract!

        class NewPercentageDiscount < Orb::BaseModel
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

          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              percentage_discount: Float,
              is_invoice_level: T::Boolean,
              adjustment_type: Symbol
            )
              .void
          end
          def initialize(
            applies_to_price_ids:,
            percentage_discount:,
            is_invoice_level: nil,
            adjustment_type: :percentage_discount
          )
          end

          sig do
            override
              .returns(
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

          sig { returns(Float) }
          def usage_discount
          end

          sig { params(_: Float).returns(Float) }
          def usage_discount=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              usage_discount: Float,
              is_invoice_level: T::Boolean,
              adjustment_type: Symbol
            )
              .void
          end
          def initialize(
            applies_to_price_ids:,
            usage_discount:,
            is_invoice_level: nil,
            adjustment_type: :usage_discount
          )
          end

          sig do
            override
              .returns(
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

          sig { returns(T.nilable(T::Boolean)) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig do
            params(
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              adjustment_type: Symbol
            )
              .void
          end
          def initialize(
            amount_discount:,
            applies_to_price_ids:,
            is_invoice_level: nil,
            adjustment_type: :amount_discount
          )
          end

          sig do
            override
              .returns(
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

          sig { returns(T.nilable(T::Boolean)) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              item_id: String,
              minimum_amount: String,
              is_invoice_level: T::Boolean,
              adjustment_type: Symbol
            )
              .void
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
            override
              .returns(
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

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_invoice_level
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_invoice_level=(_)
          end

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String,
              is_invoice_level: T::Boolean,
              adjustment_type: Symbol
            )
              .void
          end
          def initialize(
            applies_to_price_ids:,
            maximum_amount:,
            is_invoice_level: nil,
            adjustment_type: :maximum
          )
          end

          sig do
            override
              .returns(
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
          override
            .returns(
              [[Symbol, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount], [Symbol, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount], [Symbol, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount], [Symbol, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum], [Symbol, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum]]
            )
        end
        private_class_method def self.variants
        end
      end
    end
  end
end
