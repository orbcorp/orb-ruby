# frozen_string_literal: true

module Orb
  module Resources
    class Account
      # A payment gateway connection is one Stripe account or one Adyen merchant account
      # that a billing entity collects payments through.
      class PaymentGatewayConnections
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Account::PaymentGatewayConnectionListParams} for more details.
        #
        # This endpoint returns the account's payment gateway connections with the billing
        # entity each one collects for, ordered in descending order by creation time.
        #
        # @overload list(billing_entity_id: nil, cursor: nil, limit: nil, provider_type: nil, request_options: {})
        #
        # @param billing_entity_id [String, nil] Only return connections of this billing entity.
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param provider_type [Symbol, Orb::Models::Account::PaymentGatewayConnectionListParams::ProviderType, nil] Only return connections of this payment provider.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Account::PaymentGatewayConnection>]
        #
        # @see Orb::Models::Account::PaymentGatewayConnectionListParams
        def list(params = {})
          parsed, options = Orb::Account::PaymentGatewayConnectionListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "account/payment_gateway_connections",
            query: query,
            page: Orb::Internal::Page,
            model: Orb::Account::PaymentGatewayConnection,
            options: options
          )
        end

        # This endpoint returns a payment gateway connection identified by its ID.
        #
        # @overload fetch(payment_gateway_connection_id, request_options: {})
        #
        # @param payment_gateway_connection_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Account::PaymentGatewayConnection]
        #
        # @see Orb::Models::Account::PaymentGatewayConnectionFetchParams
        def fetch(payment_gateway_connection_id, params = {})
          @client.request(
            method: :get,
            path: ["account/payment_gateway_connections/%1$s", payment_gateway_connection_id],
            model: Orb::Account::PaymentGatewayConnection,
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
end
