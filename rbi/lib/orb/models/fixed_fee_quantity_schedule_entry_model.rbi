# typed: strong

module Orb
  module Models
    class FixedFeeQuantityScheduleEntryModel < Orb::BaseModel
      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(String) }
      def price_id
      end

      sig { params(_: String).returns(String) }
      def price_id=(_)
      end

      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig { params(end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time).void }
      def initialize(end_date:, price_id:, quantity:, start_date:)
      end

      sig do
        override.returns({end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time})
      end
      def to_hash
      end
    end
  end
end
