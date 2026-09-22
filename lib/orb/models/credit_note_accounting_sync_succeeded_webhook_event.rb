# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteAccountingSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting_sync_record
      #
      #   @return [Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      required :accounting_sync_record,
               -> { Orb::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord }

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
      #   @return [Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::Properties]
      required :properties, -> { Orb::CreditNoteAccountingSyncSucceededWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::Type]
      required :type, enum: -> { Orb::CreditNoteAccountingSyncSucceededWebhookEvent::Type }

      # @!method initialize(id:, accounting_sync_record:, created_at:, credit_note:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent} for more details.
      #
      #   Issued when a credit note accounting sync succeeds.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param accounting_sync_record [Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param credit_note [Orb::Models::CreditNote] The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      #
      #   @param properties [Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent#accounting_sync_record
      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute record_type
        #
        #   @return [Symbol, Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        required :record_type,
                 enum: -> { Orb::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType }

        # @!attribute credit_note_id
        #
        #   @return [String, nil]
        optional :credit_note_id, String, nil?: true

        # @!attribute error_details
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :error_details, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown], nil?: true

        # @!attribute provider_customer_id
        #
        #   @return [String, nil]
        optional :provider_customer_id, String, nil?: true

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String, nil?: true

        # @!attribute sync_action
        #
        #   @return [String, nil]
        optional :sync_action, String, nil?: true

        # @!method initialize(id:, customer_id:, record_type:, credit_note_id: nil, error_details: nil, provider_customer_id: nil, status: nil, sync_action: nil)
        #   @param id [String]
        #   @param customer_id [String]
        #   @param record_type [Symbol, Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        #   @param credit_note_id [String, nil]
        #   @param error_details [Hash{Symbol=>Object}, nil]
        #   @param provider_customer_id [String, nil]
        #   @param status [String, nil]
        #   @param sync_action [String, nil]

        # @see Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent::AccountingSyncRecord#record_type
        module RecordType
          extend Orb::Internal::Type::Enum

          CUSTOMER = :customer
          INVOICE = :invoice
          TRANSACTION = :transaction
          CUSTOMER_BALANCE_TRANSACTION = :customer_balance_transaction
          CREDIT_NOTE = :credit_note
          SUBSCRIPTION = :subscription
          SALES_ORDER = :sales_order
          BLOCK = :block

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute connection_type
        #
        #   @return [String]
        required :connection_type, String

        # @!method initialize(connection_type:)
        #   @param connection_type [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        CREDIT_NOTE_ACCOUNTING_SYNC_SUCCEEDED = :"credit_note.accounting_sync_succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
