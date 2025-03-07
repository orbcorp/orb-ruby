# typed: strong

module Orb
  module Models
    class CouponListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def redemption_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def redemption_code=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def show_archived
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def show_archived=(_)
      end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          redemption_code: T.nilable(String),
          show_archived: T.nilable(T::Boolean),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
