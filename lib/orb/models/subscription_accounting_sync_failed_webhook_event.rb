# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionAccountingSyncFailedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute accounting_sync_record
      #
      #   @return [Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord]
      required :accounting_sync_record,
               -> { Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord }

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute properties
      #
      #   @return [Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionAccountingSyncFailedWebhookEvent::Properties }

      # @!attribute subscription
      #   A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #   by a customer.
      #
      #   By default, subscriptions begin on the day that they're created and renew
      #   automatically for each billing cycle at the cadence that's configured in the
      #   plan definition.
      #
      #   Subscriptions also default to **beginning of month alignment**, which means the
      #   first invoice issued for the subscription will have pro-rated charges between
      #   the `start_date` and the first of the following month. Subsequent billing
      #   periods will always start and end on a month boundary (e.g. subsequent month
      #   starts for monthly billing).
      #
      #   Depending on the plan configuration, any _flat_ recurring fees will be billed
      #   either at the beginning (in-advance) or end (in-arrears) of each billing cycle.
      #   Plans default to **in-advance billing**. Usage-based fees are billed in arrears
      #   as usage is accumulated. In the normal course of events, you can expect an
      #   invoice to contain usage-based charges for the previous period, and a recurring
      #   fee for the following period.
      #
      #   @return [Orb::Models::Subscription]
      required :subscription, -> { Orb::Subscription }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionAccountingSyncFailedWebhookEvent::Type }

      # @!method initialize(id:, accounting_sync_record:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent} for more details.
      #
      #   Issued when a subscription accounting sync fails.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param accounting_sync_record [Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord]
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::Properties]
      #
      #   @param subscription [Orb::Models::Subscription] A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #
      #   @param type [Symbol, Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent#accounting_sync_record
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
        #   @return [Symbol, Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType]
        required :record_type,
                 enum: -> { Orb::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType }

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

        # @!attribute subscription_id
        #
        #   @return [String, nil]
        optional :subscription_id, String, nil?: true

        # @!attribute sync_action
        #
        #   @return [String, nil]
        optional :sync_action, String, nil?: true

        # @!method initialize(id:, customer_id:, record_type:, error_details: nil, provider_customer_id: nil, status: nil, subscription_id: nil, sync_action: nil)
        #   @param id [String]
        #   @param customer_id [String]
        #   @param record_type [Symbol, Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType]
        #   @param error_details [Hash{Symbol=>Object}, nil]
        #   @param provider_customer_id [String, nil]
        #   @param status [String, nil]
        #   @param subscription_id [String, nil]
        #   @param sync_action [String, nil]

        # @see Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent::AccountingSyncRecord#record_type
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

      # @see Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute connection_type
        #
        #   @return [String]
        required :connection_type, String

        # @!attribute failure_reason
        #
        #   @return [String]
        required :failure_reason, String

        # @!method initialize(connection_type:, failure_reason:)
        #   @param connection_type [String]
        #   @param failure_reason [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_ACCOUNTING_SYNC_FAILED = :"subscription.accounting_sync_failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
