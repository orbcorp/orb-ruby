# typed: strong

module Orb
  module Models
    class SubscriptionChangeListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionChangeListParams, Orb::Internal::AnyHash)
        end

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      # from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        returns(T.nilable(Orb::SubscriptionChangeListParams::Status::OrSymbol))
      end
      attr_accessor :status

      sig do
        params(
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          limit: Integer,
          status:
            T.nilable(Orb::SubscriptionChangeListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
            cursor: T.nilable(String),
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String),
            limit: Integer,
            status:
              T.nilable(Orb::SubscriptionChangeListParams::Status::OrSymbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionChangeListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Orb::SubscriptionChangeListParams::Status::TaggedSymbol
          )
        APPLIED =
          T.let(
            :applied,
            Orb::SubscriptionChangeListParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Orb::SubscriptionChangeListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::SubscriptionChangeListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
