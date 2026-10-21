# typed: strong

module Orb
  module Models
    module Webhooks
      class CreditNoteIssuedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
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
          returns(
            Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig { returns(T.anything) }
        attr_accessor :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a credit note is created.
        sig do
          params(
            id: String,
            created_at: Time,
            credit_note: Orb::CreditNote::OrHash,
            payload_style:
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties: T.anything,
            type:
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type::OrSymbol
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
                Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties: T.anything,
              type:
                Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type::TaggedSymbol
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
              T.all(
                Symbol,
                Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
              T.all(
                Symbol,
                Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_NOTE_ISSUED =
            T.let(
              :"credit_note.issued",
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
