# typed: strong

module Orb
  module Models
    class CouponListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::CouponListParams, Orb::Internal::AnyHash) }

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter to coupons matching this redemption code.
      sig { returns(T.nilable(String)) }
      attr_accessor :redemption_code

      # Show archived coupons as well (by default, this endpoint only returns active
      # coupons).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :show_archived

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          redemption_code: T.nilable(String),
          show_archived: T.nilable(T::Boolean),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        # Filter to coupons matching this redemption code.
        redemption_code: nil,
        # Show archived coupons as well (by default, this endpoint only returns active
        # coupons).
        show_archived: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: T.nilable(String),
            limit: Integer,
            redemption_code: T.nilable(String),
            show_archived: T.nilable(T::Boolean),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
