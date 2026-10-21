# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class CreditNoteIssuedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_note
        #   The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
        #   been applied to a particular invoice.
        #
        #   @return [Orb::Models::CreditNote]
        required :credit_note, -> { Orb::CreditNote }

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Object]
        required :properties, Orb::Internal::Type::Unknown

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, credit_note:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent} for more details.
        #
        #   Issued when a credit note is created.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param credit_note [Orb::Models::CreditNote] The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Object]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          CREDIT_NOTE_ISSUED = :"credit_note.issued"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
