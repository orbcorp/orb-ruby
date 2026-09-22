# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteMarkedAsVoidWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute properties
      #
      #   @return [Object]
      required :properties, Orb::Internal::Type::Unknown

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::CreditNoteMarkedAsVoidWebhookEvent::Type]
      required :type, enum: -> { Orb::CreditNoteMarkedAsVoidWebhookEvent::Type }

      # @!method initialize(id:, created_at:, credit_note:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CreditNoteMarkedAsVoidWebhookEvent} for more details.
      #
      #   Issued when a credit note is marked as void.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param credit_note [Orb::Models::CreditNote] The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      #
      #   @param properties [Object]
      #
      #   @param type [Symbol, Orb::Models::CreditNoteMarkedAsVoidWebhookEvent::Type] The event this payload describes.

      # The event this payload describes.
      #
      # @see Orb::Models::CreditNoteMarkedAsVoidWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        CREDIT_NOTE_MARKED_AS_VOID = :"credit_note.marked_as_void"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
