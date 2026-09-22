# typed: strong

module Orb
  module Models
    class ResourceEventTestWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::ResourceEventTestWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::ResourceEventTestWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::ResourceEventTestWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig { returns(Orb::ResourceEventTestWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a test webhook is sent.
      sig do
        params(
          id: String,
          created_at: Time,
          properties: Orb::ResourceEventTestWebhookEvent::Properties::OrHash,
          type: Orb::ResourceEventTestWebhookEvent::Type::OrSymbol
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
            properties: Orb::ResourceEventTestWebhookEvent::Properties,
            type: Orb::ResourceEventTestWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::ResourceEventTestWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { params(message: String).returns(T.attached_class) }
        def self.new(message: nil)
        end

        sig { override.returns({ message: String }) }
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::ResourceEventTestWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RESOURCE_EVENT_TEST =
          T.let(
            :"resource_event.test",
            Orb::ResourceEventTestWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::ResourceEventTestWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
