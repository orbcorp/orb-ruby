# typed: strong

module Orb
  module Models
    class CouponListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :redemption_code

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :show_archived

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          redemption_code: T.nilable(String),
          show_archived: T.nilable(T::Boolean),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil, request_options: {})
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
