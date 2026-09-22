# frozen_string_literal: true

module Orb
  module Models
    class SalesOrderAccountingSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting_sync_record
      #
      #   @return [Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      required :accounting_sync_record,
               -> { Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord }

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute invoice
      #   An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
      #   representing the request for payment for a single subscription. This includes a
      #   set of line items, which correspond to prices in the subscription's plan and can
      #   represent fixed recurring fees or usage-based fees. They are generated at the
      #   end of a billing period, or as the result of an action, such as a cancellation.
      #
      #   @return [Orb::Models::Invoice]
      required :invoice, -> { Orb::Invoice }

      # @!attribute properties
      #
      #   @return [Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::Properties]
      required :properties, -> { Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::Type]
      required :type, enum: -> { Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type }

      # @!method initialize(id:, accounting_sync_record:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent} for more details.
      #
      #   Issued when a sales order accounting sync succeeds.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param accounting_sync_record [Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent#accounting_sync_record
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
        #   @return [Symbol, Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        required :record_type,
                 enum: -> { Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType }

        # @!attribute error_details
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :error_details, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown], nil?: true

        # @!attribute invoice_id
        #
        #   @return [String, nil]
        optional :invoice_id, String, nil?: true

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

        # @!method initialize(id:, customer_id:, record_type:, error_details: nil, invoice_id: nil, provider_customer_id: nil, status: nil, sync_action: nil)
        #   @param id [String]
        #   @param customer_id [String]
        #   @param record_type [Symbol, Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        #   @param error_details [Hash{Symbol=>Object}, nil]
        #   @param invoice_id [String, nil]
        #   @param provider_customer_id [String, nil]
        #   @param status [String, nil]
        #   @param sync_action [String, nil]

        # @see Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord#record_type
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

      # @see Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent#properties
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
      # @see Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SALES_ORDER_ACCOUNTING_SYNC_SUCCEEDED = :"sales_order.accounting_sync_succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
