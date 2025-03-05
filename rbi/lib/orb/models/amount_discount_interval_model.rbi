# typed: strong

module Orb
  module Models
    class AmountDiscountIntervalModel < Orb::BaseModel
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

      sig { returns(T::Array[String]) }
      def applies_to_price_interval_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applies_to_price_interval_ids=(_)
      end

      sig { returns(Symbol) }
      def discount_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def discount_type=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig do
        params(
          amount_discount: String,
          applies_to_price_ids: T::Array[String],
          applies_to_price_interval_ids: T::Array[String],
          discount_type: Symbol,
          end_date: T.nilable(Time),
          start_date: Time
        )
          .void
      end
      def initialize(
        amount_discount:,
        applies_to_price_ids:,
        applies_to_price_interval_ids:,
        discount_type:,
        end_date:,
        start_date:
      )
      end

      sig do
        override
          .returns(
            {
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              discount_type: Symbol,
              end_date: T.nilable(Time),
              start_date: Time
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        AMOUNT = :amount

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
