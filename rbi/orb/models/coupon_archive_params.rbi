# typed: strong

module Orb
  module Models
    class CouponArchiveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::CouponArchiveParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :coupon_id

      sig do
        params(
          coupon_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(coupon_id:, request_options: {})
      end

      sig do
        override.returns(
          { coupon_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
