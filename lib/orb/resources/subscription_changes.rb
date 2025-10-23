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

      # Some parameter documentations has been truncated, see
      # {Orb::Models::SubscriptionChangeApplyParams} for more details.
      #
      # Apply a subscription change to perform the intended action. If a positive amount
      # is passed with a request to this endpoint, any eligible invoices that were
      # created will be issued immediately if they only contain in-advance fees.
      #
      # @overload apply(subscription_change_id, description: nil, mark_as_paid: nil, payment_external_id: nil, payment_notes: nil, payment_received_date: nil, previously_collected_amount: nil, request_options: {})
      #
      # @param subscription_change_id [String]
      #
      # @param description [String, nil] Description to apply to the balance transaction representing this credit.
      #
      # @param mark_as_paid [Boolean, nil] Mark all pending invoices that are payable as paid. If amount is also provided,
      #
      # @param payment_external_id [String, nil] An optional external ID to associate with the payment. Only applicable when mark
      #
      # @param payment_notes [String, nil] Optional notes about the payment. Only applicable when mark_as_paid is true.
      #
      # @param payment_received_date [Date, nil] A date string to specify the date the payment was received. Only applicable when
      #
      # @param previously_collected_amount [String, nil] Amount already collected to apply to the customer's balance. If mark_as_paid is
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionChangeApplyResponse]
      #
      # @see Orb::Models::SubscriptionChangeApplyParams
      def apply(subscription_change_id, params = {})
        parsed, options = Orb::SubscriptionChangeApplyParams.dump_request(params)
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
