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

      # This endpoint returns a list of pending subscription changes for a customer. Use
      # the [Fetch Subscription Change](fetch-subscription-change) endpoint to retrieve
      # the expected subscription state after the pending change is applied.
      sig do
        params(
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          limit: Integer,
          status:
            T.nilable(Orb::SubscriptionChangeListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(
          Orb::Internal::Page[Orb::Models::SubscriptionChangeListResponse]
        )
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        customer_id: nil,
        external_customer_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      # Apply a subscription change to perform the intended action. If a positive amount
      # is passed with a request to this endpoint, any eligible invoices that were
      # created will be issued immediately if they only contain in-advance fees.
      sig do
        params(
          subscription_change_id: String,
          description: T.nilable(String),
          mark_as_paid: T.nilable(T::Boolean),
          payment_external_id: T.nilable(String),
          payment_notes: T.nilable(String),
          payment_received_date: T.nilable(Date),
          previously_collected_amount: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::SubscriptionChangeApplyResponse)
      end
      def apply(
        subscription_change_id,
        # Description to apply to the balance transaction representing this credit.
        description: nil,
        # Mark all pending invoices that are payable as paid. If amount is also provided,
        # mark as paid and credit the difference to the customer's balance.
        mark_as_paid: nil,
        # An optional external ID to associate with the payment. Only applicable when
        # mark_as_paid is true.
        payment_external_id: nil,
        # Optional notes about the payment. Only applicable when mark_as_paid is true.
        payment_notes: nil,
        # A date string to specify the date the payment was received. Only applicable when
        # mark_as_paid is true. If not provided, defaults to the current date.
        payment_received_date: nil,
        # Amount already collected to apply to the customer's balance. If mark_as_paid is
        # also provided, credit the difference to the customer's balance.
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
