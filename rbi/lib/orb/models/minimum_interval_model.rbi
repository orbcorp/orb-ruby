# typed: strong

module Orb
  module Models
    class MinimumIntervalModel < Orb::BaseModel
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

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(String) }
      def minimum_amount
      end

      sig { params(_: String).returns(String) }
      def minimum_amount=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          minimum_amount: String,
          start_date: Time
        )
          .void
      end
      def initialize(
        applies_to_price_ids:,
        applies_to_price_interval_ids:,
        end_date:,
        minimum_amount:,
        start_date:
      )
      end

      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              minimum_amount: String,
              start_date: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
