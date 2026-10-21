# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class CustomerAccountingSyncFailedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute accounting_sync_record
        #
        #   @return [Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord]
        required :accounting_sync_record,
                 -> { Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord }

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer
        #   A customer is a buyer of your products, and the other party to the billing
        #   relationship.
        #
        #   In Orb, customers are assigned system generated identifiers automatically, but
        #   it's often desirable to have these match existing identifiers in your system. To
        #   avoid having to denormalize Orb ID information, you can pass in an
        #   `external_customer_id` with your own identifier. See
        #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        #   information about how these aliases work in Orb.
        #
        #   In addition to having an identifier in your system, a customer may exist in a
        #   payment provider solution like Stripe. Use the `payment_provider_id` and the
        #   `payment_provider` enum field to express this mapping.
        #
        #   A customer also has a timezone (from the standard
        #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        #   your account's timezone. See [Timezone localization](/essentials/timezones) for
        #   information on what this timezone parameter influences within Orb.
        #
        #   @return [Orb::Models::Customer]
        required :customer, -> { Orb::Customer }

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::Type }

        # @!method initialize(id:, accounting_sync_record:, created_at:, customer:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent} for
        #   more details.
        #
        #   Issued when a customer accounting sync fails.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param accounting_sync_record [Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord]
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::Type] The event this payload describes.

        # @see Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent#accounting_sync_record
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
          #   @return [Symbol, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType]
          required :record_type,
                   enum: -> { Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType }

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

          # @!method initialize(id:, customer_id:, record_type:, error_details: nil, provider_customer_id: nil, status: nil, sync_action: nil)
          #   @param id [String]
          #   @param customer_id [String]
          #   @param record_type [Symbol, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType]
          #   @param error_details [Hash{Symbol=>Object}, nil]
          #   @param provider_customer_id [String, nil]
          #   @param status [String, nil]
          #   @param sync_action [String, nil]

          # @see Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord#record_type
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
        # @see Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent#properties
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
        # @see Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          CUSTOMER_ACCOUNTING_SYNC_FAILED = :"customer.accounting_sync_failed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
