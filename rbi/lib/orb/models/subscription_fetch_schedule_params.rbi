# typed: strong

module Orb
  module Models
    class SubscriptionFetchScheduleParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date_lte

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          start_date_gt: T.nilable(Time),
          start_date_gte: T.nilable(Time),
          start_date_lt: T.nilable(Time),
          start_date_lte: T.nilable(Time),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        cursor: nil,
        limit: nil,
        start_date_gt: nil,
        start_date_gte: nil,
        start_date_lt: nil,
        start_date_lte: nil,
        request_options: {}
      ); end
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
      def to_hash; end
    end
  end
end
