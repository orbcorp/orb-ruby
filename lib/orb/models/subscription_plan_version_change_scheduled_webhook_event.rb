# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionPlanVersionChangeScheduledWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionPlanVersionChangeScheduledWebhookEvent::Properties }

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
      #   @return [Symbol, Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionPlanVersionChangeScheduledWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent} for more
      #   details.
      #
      #   Issued when a subscription plan version change is scheduled.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent::Properties]
      #
      #   @param subscription [Orb::Models::Subscription] A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #
      #   @param type [Symbol, Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute effective_date
        #
        #   @return [String]
        required :effective_date, String

        # @!attribute new_plan_version_number
        #
        #   @return [Integer]
        required :new_plan_version_number, Integer

        # @!attribute previous_plan_version_number
        #
        #   @return [Integer]
        required :previous_plan_version_number, Integer

        # @!method initialize(effective_date:, new_plan_version_number:, previous_plan_version_number:)
        #   @param effective_date [String]
        #   @param new_plan_version_number [Integer]
        #   @param previous_plan_version_number [Integer]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_PLAN_VERSION_CHANGE_SCHEDULED = :"subscription.plan_version_change_scheduled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
