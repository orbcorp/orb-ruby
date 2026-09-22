# typed: strong

module Orb
  module Models
    class IngestionUnmatchedCustomerIDsWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::IngestionUnmatchedCustomerIDsWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when ingestion events reference unmatched customer IDs.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Properties::OrHash,
          type: Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            properties:
              Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Properties,
            type:
              Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :external_customer_ids

        sig do
          params(external_customer_ids: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(external_customer_ids:)
        end

        sig { override.returns({ external_customer_ids: T::Array[String] }) }
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INGESTION_UNMATCHED_CUSTOMER_IDS =
          T.let(
            :"ingestion.unmatched_customer_ids",
            Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
