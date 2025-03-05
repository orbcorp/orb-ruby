# typed: strong

module Orb
  module Models
    class NewAdjustmentModel < Orb::Union
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
            [[Symbol, Orb::Models::NewAdjustmentModel::NewPercentageDiscount], [Symbol, Orb::Models::NewAdjustmentModel::NewUsageDiscount], [Symbol, Orb::Models::NewAdjustmentModel::NewAmountDiscount], [Symbol, Orb::Models::NewAdjustmentModel::NewMinimum], [Symbol, Orb::Models::NewAdjustmentModel::NewMaximum]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
