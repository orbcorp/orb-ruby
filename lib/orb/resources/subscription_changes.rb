# frozen_string_literal: true

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
      #
      # @overload retrieve(subscription_change_id, request_options: {})
      #
      # @param subscription_change_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionChangeRetrieveResponse]
      #
      # @see Orb::Models::SubscriptionChangeRetrieveParams
      def retrieve(subscription_change_id, params = {})
        @client.request(
          method: :get,
          path: ["subscription_changes/%1$s", subscription_change_id],
          model: Orb::Models::SubscriptionChangeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Apply a subscription change to perform the intended action. If a positive amount
      # is passed with a request to this endpoint, any eligible invoices that were
      # created will be issued immediately if they only contain in-advance fees.
      #
      # @overload apply(subscription_change_id, description: nil, previously_collected_amount: nil, request_options: {})
      #
      # @param subscription_change_id [String]
      #
      # @param description [String, nil] Description to apply to the balance transaction representing this credit.
      #
      # @param previously_collected_amount [String, nil] Amount already collected to apply to the customer's balance.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionChangeApplyResponse]
      #
      # @see Orb::Models::SubscriptionChangeApplyParams
      def apply(subscription_change_id, params = {})
        parsed, options = Orb::Models::SubscriptionChangeApplyParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscription_changes/%1$s/apply", subscription_change_id],
          body: parsed,
          model: Orb::Models::SubscriptionChangeApplyResponse,
          options: options
        )
      end

      # Cancel a subscription change. The change can no longer be applied. A
      # subscription can only have one "pending" change at a time - use this endpoint to
      # cancel an existing change before creating a new one.
      #
      # @overload cancel(subscription_change_id, request_options: {})
      #
      # @param subscription_change_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionChangeCancelResponse]
      #
      # @see Orb::Models::SubscriptionChangeCancelParams
      def cancel(subscription_change_id, params = {})
        @client.request(
          method: :post,
          path: ["subscription_changes/%1$s/cancel", subscription_change_id],
          model: Orb::Models::SubscriptionChangeCancelResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
