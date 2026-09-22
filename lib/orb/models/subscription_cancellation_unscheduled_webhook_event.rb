# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionCancellationUnscheduledWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionCancellationUnscheduledWebhookEvent::Properties }

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
      #   @return [Symbol, Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionCancellationUnscheduledWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent} for more details.
      #
      #   Issued when a scheduled subscription cancellation is unscheduled.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent::Properties]
      #
      #   @param subscription [Orb::Models::Subscription] A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #
      #   @param type [Symbol, Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute original_cancellation_date
        #
        #   @return [String]
        required :original_cancellation_date, String

        # @!method initialize(original_cancellation_date:)
        #   @param original_cancellation_date [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_CANCELLATION_UNSCHEDULED = :"subscription.cancellation_unscheduled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
