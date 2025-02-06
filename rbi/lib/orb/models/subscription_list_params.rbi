# typed: strong

module Orb
  module Models
    class SubscriptionListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            created_at_gt: T.nilable(Time),
            created_at_gte: T.nilable(Time),
            created_at_lt: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            cursor: T.nilable(String),
            customer_id: T.nilable(T::Array[String]),
            external_customer_id: T.nilable(String),
            limit: Integer,
            status: T.nilable(Symbol)
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :status

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          customer_id: T.nilable(T::Array[String]),
          external_customer_id: T.nilable(String),
          limit: Integer,
          status: T.nilable(Symbol),
          request_options: Orb::RequestOpts
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
        status: nil,
        request_options: {}
      ); end

      sig { returns(Orb::Models::SubscriptionListParams::Shape) }
      def to_h; end

      class Status < Orb::Enum
        abstract!

        ACTIVE = T.let(:active, T.nilable(Symbol))
        ENDED = T.let(:ended, T.nilable(Symbol))
        UPCOMING = T.let(:upcoming, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
