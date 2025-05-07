# typed: strong

module Orb
  module Resources
    class SubscriptionChanges
      # This endpoint returns a subscription change given an identifier.
      #
      # A subscription change is created by including
      # `Create-Pending-Subscription-Change: True` in the header of a subscription
      # mutation API call (e.g.
      # [create subscription endpoint](/api-reference/subscription/create-subscription),
      # [schedule plan change endpoint](/api-reference/subscription/schedule-plan-change),
      # ...). The subscription change will be referenced by the
      # `pending_subscription_change` field in the response.
      sig do
        params(
          subscription_change_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::SubscriptionChangeRetrieveResponse)
      end
      def retrieve(subscription_change_id, request_options: {})
      end

      # Apply a subscription change to perform the intended action. If a positive amount
      # is passed with a request to this endpoint, any eligible invoices that were
      # created will be issued immediately if they only contain in-advance fees.
      sig do
        params(
          subscription_change_id: String,
          description: T.nilable(String),
          previously_collected_amount: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::SubscriptionChangeApplyResponse)
      end
      def apply(
        subscription_change_id,
        # Description to apply to the balance transaction representing this credit.
        description: nil,
        # Amount already collected to apply to the customer's balance.
        previously_collected_amount: nil,
        request_options: {}
      )
      end

      # Cancel a subscription change. The change can no longer be applied. A
      # subscription can only have one "pending" change at a time - use this endpoint to
      # cancel an existing change before creating a new one.
      sig do
        params(
          subscription_change_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::SubscriptionChangeCancelResponse)
      end
      def cancel(subscription_change_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
