# typed: strong

module Orb
  module Models
    class CouponRedemptionModel < Orb::BaseModel
      sig { returns(String) }
      def coupon_id
      end

      sig { params(_: String).returns(String) }
      def coupon_id=(_)
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

      sig { params(coupon_id: String, end_date: T.nilable(Time), start_date: Time).void }
      def initialize(coupon_id:, end_date:, start_date:)
      end

      sig { override.returns({coupon_id: String, end_date: T.nilable(Time), start_date: Time}) }
      def to_hash
      end
    end
  end
end
