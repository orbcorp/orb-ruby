# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionFixedFeeQuantityUpdatedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties }

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
      #   @return [Symbol, Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent} for more details.
      #
      #   Issued when a subscription's fixed fee quantity is updated.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Properties]
      #
      #   @param subscription [Orb::Models::Subscription] A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #
      #   @param type [Symbol, Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute effective_date
        #
        #   @return [Time]
        required :effective_date, Time

        # @!attribute new_quantity
        #
        #   @return [Float]
        required :new_quantity, Float

        # @!attribute old_quantity
        #
        #   @return [Float]
        required :old_quantity, Float

        # @!attribute price_id
        #
        #   @return [String]
        required :price_id, String

        # @!method initialize(effective_date:, new_quantity:, old_quantity:, price_id:)
        #   @param effective_date [Time]
        #   @param new_quantity [Float]
        #   @param old_quantity [Float]
        #   @param price_id [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_FIXED_FEE_QUANTITY_UPDATED = :"subscription.fixed_fee_quantity_updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
