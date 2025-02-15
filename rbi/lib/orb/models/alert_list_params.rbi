# typed: strong

module Orb
  module Models
    class AlertListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(Time)) }
      def created_at_gt
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at_gt=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at_gte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at_gte=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at_lt
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at_lt=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at_lte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at_lte=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def subscription_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def subscription_id=(_)
      end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          limit: Integer,
          subscription_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        customer_id: nil,
        external_customer_id: nil,
        limit: nil,
        subscription_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at_gt: T.nilable(Time),
            created_at_gte: T.nilable(Time),
            created_at_lt: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            cursor: T.nilable(String),
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String),
            limit: Integer,
            subscription_id: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
