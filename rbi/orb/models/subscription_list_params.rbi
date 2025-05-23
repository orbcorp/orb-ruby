# typed: strong

module Orb
  module Models
    class SubscriptionListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionListParams, Orb::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :customer_id

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :external_customer_id

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Orb::SubscriptionListParams::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          customer_id: T.nilable(T::Array[String]),
          external_customer_id: T.nilable(T::Array[String]),
          limit: Integer,
          status: T.nilable(Orb::SubscriptionListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        customer_id: nil,
        external_customer_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        status: nil,
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
            customer_id: T.nilable(T::Array[String]),
            external_customer_id: T.nilable(T::Array[String]),
            limit: Integer,
            status: T.nilable(Orb::SubscriptionListParams::Status::OrSymbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::SubscriptionListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Orb::SubscriptionListParams::Status::TaggedSymbol)
        ENDED = T.let(:ended, Orb::SubscriptionListParams::Status::TaggedSymbol)
        UPCOMING =
          T.let(:upcoming, Orb::SubscriptionListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::SubscriptionListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
