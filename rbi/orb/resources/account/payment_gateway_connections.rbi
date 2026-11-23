# typed: strong

module Orb
  module Resources
    class Account
      # A payment gateway connection is one Stripe account or one Adyen merchant account
      # that a billing entity collects payments through.
      class PaymentGatewayConnections
        # This endpoint returns the account's payment gateway connections with the billing
        # entity each one collects for, ordered in descending order by creation time.
        sig do
          params(
            billing_entity_id: T.nilable(String),
            cursor: T.nilable(String),
            limit: Integer,
            provider_type:
              T.nilable(
                Orb::Account::PaymentGatewayConnectionListParams::ProviderType::OrSymbol
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Internal::Page[Orb::Account::PaymentGatewayConnection])
        end
        def list(
          # Only return connections of this billing entity.
          billing_entity_id: nil,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # Only return connections of this payment provider.
          provider_type: nil,
          request_options: {}
        )
        end

        # This endpoint returns a payment gateway connection identified by its ID.
        sig do
          params(
            payment_gateway_connection_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Account::PaymentGatewayConnection)
        end
        def fetch(payment_gateway_connection_id, request_options: {})
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
