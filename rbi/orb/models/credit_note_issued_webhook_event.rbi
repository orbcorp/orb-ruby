# typed: strong

module Orb
  module Models
    class CreditNoteIssuedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::CreditNoteIssuedWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      # been applied to a particular invoice.
      sig { returns(Orb::CreditNote) }
      attr_reader :credit_note

      sig { params(credit_note: Orb::CreditNote::OrHash).void }
      attr_writer :credit_note

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      sig do
        returns(Orb::CreditNoteIssuedWebhookEvent::PayloadStyle::TaggedSymbol)
      end
      attr_accessor :payload_style

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig { returns(Orb::CreditNoteIssuedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when a credit note is created.
      sig do
        params(
          id: String,
          created_at: Time,
          credit_note: Orb::CreditNote::OrHash,
          payload_style:
            Orb::CreditNoteIssuedWebhookEvent::PayloadStyle::OrSymbol,
          properties: T.anything,
          type: Orb::CreditNoteIssuedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
        # been applied to a particular invoice.
        credit_note:,
        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        payload_style:,
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
            credit_note: Orb::CreditNote,
            payload_style:
              Orb::CreditNoteIssuedWebhookEvent::PayloadStyle::TaggedSymbol,
            properties: T.anything,
            type: Orb::CreditNoteIssuedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CreditNoteIssuedWebhookEvent::PayloadStyle)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPANDED =
          T.let(
            :expanded,
            Orb::CreditNoteIssuedWebhookEvent::PayloadStyle::TaggedSymbol
          )
        STANDARD =
          T.let(
            :standard,
            Orb::CreditNoteIssuedWebhookEvent::PayloadStyle::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CreditNoteIssuedWebhookEvent::PayloadStyle::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CreditNoteIssuedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_NOTE_ISSUED =
          T.let(
            :"credit_note.issued",
            Orb::CreditNoteIssuedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::CreditNoteIssuedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
