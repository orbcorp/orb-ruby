# typed: strong

module Orb
  module Models
    class CouponRedemption < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::CouponRedemption, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :coupon_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          coupon_id: String,
          end_date: T.nilable(Time),
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(coupon_id:, end_date:, start_date:)
      end

      sig do
        override.returns(
          { coupon_id: String, end_date: T.nilable(Time), start_date: Time }
        )
      end
      def to_hash
      end
    end
  end
end
