# frozen_string_literal: true

module Orb
  module Models
    class TransactionAccountingSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting_sync_record
      #
      #   @return [Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      required :accounting_sync_record,
               -> { Orb::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord }

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute properties
      #
      #   @return [Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Properties]
      required :properties, -> { Orb::TransactionAccountingSyncSucceededWebhookEvent::Properties }

      # @!attribute transaction
      #
      #   @return [Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Transaction]
      required :transaction, -> { Orb::TransactionAccountingSyncSucceededWebhookEvent::Transaction }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Type]
      required :type, enum: -> { Orb::TransactionAccountingSyncSucceededWebhookEvent::Type }

      # @!method initialize(id:, accounting_sync_record:, created_at:, properties:, transaction:, type:)
      #   Issued when a transaction accounting sync succeeds.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param accounting_sync_record [Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord]
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Properties]
      #
      #   @param transaction [Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Transaction]
      #
      #   @param type [Symbol, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::TransactionAccountingSyncSucceededWebhookEvent#accounting_sync_record
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
        #   @return [Symbol, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        required :record_type,
                 enum: -> { Orb::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType }

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

        # @!attribute transaction_record_id
        #
        #   @return [String, nil]
        optional :transaction_record_id, String, nil?: true

        # @!method initialize(id:, customer_id:, record_type:, error_details: nil, provider_customer_id: nil, status: nil, sync_action: nil, transaction_record_id: nil)
        #   @param id [String]
        #   @param customer_id [String]
        #   @param record_type [Symbol, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType]
        #   @param error_details [Hash{Symbol=>Object}, nil]
        #   @param provider_customer_id [String, nil]
        #   @param status [String, nil]
        #   @param sync_action [String, nil]
        #   @param transaction_record_id [String, nil]

        # @see Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::AccountingSyncRecord#record_type
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

      # @see Orb::Models::TransactionAccountingSyncSucceededWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute connection_type
        #
        #   @return [String]
        required :connection_type, String

        # @!method initialize(connection_type:)
        #   @param connection_type [String]
      end

      # @see Orb::Models::TransactionAccountingSyncSucceededWebhookEvent#transaction
      class Transaction < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment attempt.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the payment attempt.
        #
        #   @return [String]
        required :amount, String

        # @!attribute created_at
        #   The time at which the payment attempt was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_provider
        #   The payment provider that attempted to collect the payment.
        #
        #   @return [Symbol, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Transaction::PaymentProvider, nil]
        required :payment_provider,
                 enum: -> {
                   Orb::TransactionAccountingSyncSucceededWebhookEvent::Transaction::PaymentProvider
                 },
                 nil?: true

        # @!attribute payment_provider_id
        #   The ID of the payment attempt in the payment provider.
        #
        #   @return [String, nil]
        required :payment_provider_id, String, nil?: true

        # @!attribute receipt_pdf
        #   URL to the downloadable PDF version of the receipt. This field will be `null`
        #   for payment attempts that did not succeed.
        #
        #   @return [String, nil]
        required :receipt_pdf, String, nil?: true

        # @!attribute succeeded
        #   Whether the payment attempt succeeded.
        #
        #   @return [Boolean]
        required :succeeded, Orb::Internal::Type::Boolean

        # @!method initialize(id:, amount:, created_at:, payment_provider:, payment_provider_id:, receipt_pdf:, succeeded:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Transaction} for
        #   more details.
        #
        #   @param id [String] The ID of the payment attempt.
        #
        #   @param amount [String] The amount of the payment attempt.
        #
        #   @param created_at [Time] The time at which the payment attempt was created.
        #
        #   @param payment_provider [Symbol, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Transaction::PaymentProvider, nil] The payment provider that attempted to collect the payment.
        #
        #   @param payment_provider_id [String, nil] The ID of the payment attempt in the payment provider.
        #
        #   @param receipt_pdf [String, nil] URL to the downloadable PDF version of the receipt. This field will be `null` fo
        #
        #   @param succeeded [Boolean] Whether the payment attempt succeeded.

        # The payment provider that attempted to collect the payment.
        #
        # @see Orb::Models::TransactionAccountingSyncSucceededWebhookEvent::Transaction#payment_provider
        module PaymentProvider
          extend Orb::Internal::Type::Enum

          STRIPE = :stripe
          ADYEN = :adyen

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::TransactionAccountingSyncSucceededWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        TRANSACTION_ACCOUNTING_SYNC_SUCCEEDED = :"transaction.accounting_sync_succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
