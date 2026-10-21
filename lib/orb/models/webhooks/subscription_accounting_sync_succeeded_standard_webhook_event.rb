# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class SubscriptionAccountingSyncSucceededStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute accounting_sync_record
        #
        #   @return [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord]
        required :accounting_sync_record,
                 -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord }

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Properties]
        required :properties,
                 -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Properties }

        # @!attribute subscription
        #   The subscription in a standard webhook payload: the fields readable without
        #   to_subscription_params(), which every interval, billing period and plan phase
        #   depends on.
        #
        #   @return [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription]
        required :subscription,
                 -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Type }

        # @!method initialize(id:, accounting_sync_record:, created_at:, payload_style:, properties:, subscription:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent}
        #   for more details.
        #
        #   Issued when a subscription accounting sync succeeds.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param accounting_sync_record [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord]
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Properties]
        #
        #   @param subscription [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription] The subscription in a standard webhook payload: the fields readable without
        #
        #   @param type [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Type] The event this payload describes.

        # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent#accounting_sync_record
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
          #   @return [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType]
          required :record_type,
                   enum: -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType }

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
          #   @param record_type [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord::RecordType]
          #   @param error_details [Hash{Symbol=>Object}, nil]
          #   @param provider_customer_id [String, nil]
          #   @param status [String, nil]
          #   @param subscription_id [String, nil]
          #   @param sync_action [String, nil]

          # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::AccountingSyncRecord#record_type
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

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute connection_type
          #
          #   @return [String]
          required :connection_type, String

          # @!method initialize(connection_type:)
          #   @param connection_type [String]
        end

        # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent#subscription
        class Subscription < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute customer
          #
          #   @return [Orb::Models::CustomerMinified]
          required :customer, -> { Orb::CustomerMinified }

          # @!attribute end_date
          #   The date Orb stops billing for this subscription.
          #
          #   @return [Time, nil]
          required :end_date, Time, nil?: true

          # @!attribute metadata
          #   User specified key-value pairs for the resource. If not present, this defaults
          #   to an empty dictionary. Individual keys can be removed by setting the value to
          #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          #   `null`.
          #
          #   @return [Hash{Symbol=>String}]
          required :metadata, Orb::Internal::Type::HashOf[String]

          # @!attribute name
          #   The name of the subscription.
          #
          #   @return [String]
          required :name, String

          # @!attribute plan
          #
          #   @return [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Plan, nil]
          required :plan,
                   -> {
                     Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Plan
                   },
                   nil?: true

          # @!attribute start_date
          #   The date Orb starts billing for this subscription.
          #
          #   @return [Time]
          required :start_date, Time

          # @!attribute status
          #
          #   @return [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Status]
          required :status,
                   enum: -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Status }

          # @!method initialize(id:, created_at:, customer:, end_date:, metadata:, name:, plan:, start_date:, status:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription}
          #   for more details.
          #
          #   The subscription in a standard webhook payload: the fields readable without
          #   to_subscription_params(), which every interval, billing period and plan phase
          #   depends on.
          #
          #   @param id [String]
          #
          #   @param created_at [Time]
          #
          #   @param customer [Orb::Models::CustomerMinified]
          #
          #   @param end_date [Time, nil] The date Orb stops billing for this subscription.
          #
          #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
          #
          #   @param name [String] The name of the subscription.
          #
          #   @param plan [Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Plan, nil]
          #
          #   @param start_date [Time] The date Orb starts billing for this subscription.
          #
          #   @param status [Symbol, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Status]

          # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription#plan
          class Plan < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            required :id, String, nil?: true

            # @!attribute external_plan_id
            #   An optional user-defined ID for this plan resource, used throughout the system
            #   as an alias for this Plan. Use this field to identify a plan by an existing
            #   identifier in your system.
            #
            #   @return [String, nil]
            required :external_plan_id, String, nil?: true

            # @!attribute name
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!method initialize(id:, external_plan_id:, name:)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription::Plan}
            #   for more details.
            #
            #   @param id [String, nil]
            #
            #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
            #
            #   @param name [String, nil]
          end

          # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent::Subscription#status
          module Status
            extend Orb::Internal::Type::Enum

            ACTIVE = :active
            ENDED = :ended
            UPCOMING = :upcoming

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          SUBSCRIPTION_ACCOUNTING_SYNC_SUCCEEDED = :"subscription.accounting_sync_succeeded"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
