# typed: strong

module Orb
  module Models
    class UsageDiscountIntervalModel < Orb::BaseModel
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

      sig { returns(Float) }
      def usage_discount
      end

      sig { params(_: Float).returns(Float) }
      def usage_discount=(_)
      end

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          applies_to_price_interval_ids: T::Array[String],
          discount_type: Symbol,
          end_date: T.nilable(Time),
          start_date: Time,
          usage_discount: Float
        )
          .void
      end
      def initialize(
        applies_to_price_ids:,
        applies_to_price_interval_ids:,
        discount_type:,
        end_date:,
        start_date:,
        usage_discount:
      )
      end

      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              discount_type: Symbol,
              end_date: T.nilable(Time),
              start_date: Time,
              usage_discount: Float
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        USAGE = :usage

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
