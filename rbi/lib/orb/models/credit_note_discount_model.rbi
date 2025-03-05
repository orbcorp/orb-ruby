# typed: strong

module Orb
  module Models
    class CreditNoteDiscountModel < Orb::BaseModel
      sig { returns(String) }
      def amount_applied
      end

      sig { params(_: String).returns(String) }
      def amount_applied=(_)
      end

      sig { returns(Symbol) }
      def discount_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def discount_type=(_)
      end

      sig { returns(Float) }
      def percentage_discount
      end

      sig { params(_: Float).returns(Float) }
      def percentage_discount=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::CreditNoteDiscountModel::AppliesToPrice])) }
      def applies_to_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::CreditNoteDiscountModel::AppliesToPrice]))
          .returns(T.nilable(T::Array[Orb::Models::CreditNoteDiscountModel::AppliesToPrice]))
      end
      def applies_to_prices=(_)
      end

      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig do
        params(
          amount_applied: String,
          discount_type: Symbol,
          percentage_discount: Float,
          applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNoteDiscountModel::AppliesToPrice]),
          reason: T.nilable(String)
        )
          .void
      end
      def initialize(
        amount_applied:,
        discount_type:,
        percentage_discount:,
        applies_to_prices: nil,
        reason: nil
      )
      end

      sig do
        override
          .returns(
            {
              amount_applied: String,
              discount_type: Symbol,
              percentage_discount: Float,
              applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNoteDiscountModel::AppliesToPrice]),
              reason: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        PERCENTAGE = :percentage

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class AppliesToPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(id: String, name: String).void }
        def initialize(id:, name:)
        end

        sig { override.returns({id: String, name: String}) }
        def to_hash
        end
      end
    end
  end
end
