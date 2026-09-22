# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionInvoicingThresholdExceededWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute properties
      #
      #   @return [Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties }

      # @!attribute subscription
      #   A lightweight subscription representation for webhook payloads.
      #
      #   This avoids the expensive to_subscription_params() call required for full
      #   serialization.
      #
      #   @return [Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription]
      required :subscription, -> { Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent} for more
      #   details.
      #
      #   Issued when a subscription's invoicing threshold is exceeded and an evaluation
      #   is performed.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Properties]
      #
      #   @param subscription [Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription] A lightweight subscription representation for webhook payloads.
      #
      #   @param type [Symbol, Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute evaluated_amount
        #
        #   @return [String]
        required :evaluated_amount, String

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute invoicing_threshold
        #
        #   @return [String]
        required :invoicing_threshold, String

        # @!attribute threshold_invoice_created
        #
        #   @return [Boolean]
        required :threshold_invoice_created, Orb::Internal::Type::Boolean

        # @!method initialize(evaluated_amount:, invoice_id:, invoicing_threshold:, threshold_invoice_created:)
        #   @param evaluated_amount [String]
        #   @param invoice_id [String]
        #   @param invoicing_threshold [String]
        #   @param threshold_invoice_created [Boolean]
      end

      # @see Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent#subscription
      class Subscription < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinified]
        required :customer, -> { Orb::CustomerMinified }

        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute plan
        #
        #   @return [Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan, nil]
        required :plan,
                 -> { Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan },
                 nil?: true

        # @!attribute start_date
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status]
        required :status,
                 enum: -> { Orb::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status }

        # @!method initialize(id:, customer:, end_date:, plan:, start_date:, status:)
        #   A lightweight subscription representation for webhook payloads.
        #
        #   This avoids the expensive to_subscription_params() call required for full
        #   serialization.
        #
        #   @param id [String]
        #   @param customer [Orb::Models::CustomerMinified]
        #   @param end_date [Time, nil]
        #   @param plan [Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan, nil]
        #   @param start_date [Time]
        #   @param status [Symbol, Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Status]

        # @see Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription#plan
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
          #   {Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription::Plan}
          #   for more details.
          #
          #   @param id [String, nil]
          #
          #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
          #
          #   @param name [String, nil]
        end

        # @see Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent::Subscription#status
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
      # @see Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_INVOICING_THRESHOLD_EXCEEDED = :"subscription.invoicing_threshold_exceeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
