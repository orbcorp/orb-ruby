# typed: strong

module Orb
  module Models
    class CreditNoteMarkedAsVoidWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::CreditNoteMarkedAsVoidWebhookEvent, Orb::Internal::AnyHash)
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

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig do
        returns(Orb::CreditNoteMarkedAsVoidWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Issued when a credit note is marked as void.
      sig do
        params(
          id: String,
          created_at: Time,
          credit_note: Orb::CreditNote::OrHash,
          properties: T.anything,
          type: Orb::CreditNoteMarkedAsVoidWebhookEvent::Type::OrSymbol
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
            properties: T.anything,
            type: Orb::CreditNoteMarkedAsVoidWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CreditNoteMarkedAsVoidWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_NOTE_MARKED_AS_VOID =
          T.let(
            :"credit_note.marked_as_void",
            Orb::CreditNoteMarkedAsVoidWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CreditNoteMarkedAsVoidWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
