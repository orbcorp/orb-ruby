# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionCreatedWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute payload_style
      #   The serialization style this payload was rendered in, as configured on the
      #   endpoint.
      #
      #   @return [Symbol, Orb::Models::SubscriptionCreatedWebhookEvent::PayloadStyle]
      required :payload_style, enum: -> { Orb::SubscriptionCreatedWebhookEvent::PayloadStyle }

      # @!attribute properties
      #
      #   @return [Object]
      required :properties, Orb::Internal::Type::Unknown

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
      #   @return [Symbol, Orb::Models::SubscriptionCreatedWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionCreatedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, payload_style:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionCreatedWebhookEvent} for more details.
      #
      #   Issued when a subscription resource is created.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param payload_style [Symbol, Orb::Models::SubscriptionCreatedWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
      #
      #   @param properties [Object]
      #
      #   @param subscription [Orb::Models::Subscription] A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #
      #   @param type [Symbol, Orb::Models::SubscriptionCreatedWebhookEvent::Type] The event this payload describes.

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      #
      # @see Orb::Models::SubscriptionCreatedWebhookEvent#payload_style
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        EXPANDED = :expanded
        STANDARD = :standard

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionCreatedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_CREATED = :"subscription.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
