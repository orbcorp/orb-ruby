# typed: strong

module Orb
  module Models
    class SubscriptionFetchScheduleParams < Orb::BaseModel
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

      sig { returns(T.nilable(Time)) }
      def start_date_gt
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date_gt=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date_gte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date_gte=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date_lt
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date_lt=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date_lte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date_lte=(_)
      end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          start_date_gt: T.nilable(Time),
          start_date_gte: T.nilable(Time),
          start_date_lt: T.nilable(Time),
          start_date_lte: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        cursor: nil,
        limit: nil,
        start_date_gt: nil,
        start_date_gte: nil,
        start_date_lt: nil,
        start_date_lte: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              cursor: T.nilable(String),
              limit: Integer,
              start_date_gt: T.nilable(Time),
              start_date_gte: T.nilable(Time),
              start_date_lt: T.nilable(Time),
              start_date_lte: T.nilable(Time),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
