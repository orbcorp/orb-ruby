# typed: strong

module Orb
  module Models
    class SubscriptionFetchScheduleParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            cursor: T.nilable(String),
            limit: Integer,
            start_date_gt: T.nilable(Time),
            start_date_gte: T.nilable(Time),
            start_date_lt: T.nilable(Time),
            start_date_lte: T.nilable(Time)
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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(
        cursor: nil,
        limit: nil,
        start_date_gt: nil,
        start_date_gte: nil,
        start_date_lt: nil,
        start_date_lte: nil,
        request_options: {}
      ); end

      sig { returns(Orb::Models::SubscriptionFetchScheduleParams::Shape) }
      def to_h; end
    end
  end
end
