# typed: strong

module Orb
  module Models
    class CouponListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            cursor: T.nilable(String),
            limit: Integer,
            redemption_code: T.nilable(String),
            show_archived: T.nilable(T::Boolean)
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil, request_options: {})
      end

      sig { returns(Orb::Models::CouponListParams::Shape) }
      def to_h; end
    end
  end
end
