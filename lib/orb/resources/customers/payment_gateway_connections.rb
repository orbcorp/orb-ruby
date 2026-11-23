# frozen_string_literal: true

module Orb
  module Resources
    class Customers
      # A customer is a buyer of your products, and the other party to the billing
      # relationship.
      #
      # In Orb, customers are assigned system generated identifiers automatically, but
      # it's often desirable to have these match existing identifiers in your system. To
      # avoid having to denormalize Orb ID information, you can pass in an
      # `external_customer_id` with your own identifier. See
      # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      # information about how these aliases work in Orb.
      #
      # In addition to having an identifier in your system, a customer may exist in a
      # payment provider solution like Stripe. Use the `payment_provider_id` and the
      # `payment_provider` enum field to express this mapping.
      #
      # A customer also has a timezone (from the standard
      # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      # your account's timezone. See [Timezone localization](/essentials/timezones) for
      # information on what this timezone parameter influences within Orb.
      class PaymentGatewayConnections
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Customers::PaymentGatewayConnectionCreateParams} for more details.
        #
        # This endpoint maps the customer to a payment gateway connection. Orb charges the
        # customer for a billing entity's invoices through the customer's first mapping
        # for that billing entity; `is_default` moves that to this mapping when the
        # customer already has one.
        #
        # @overload create(customer_id, payment_gateway_connection_id:, is_default: nil, provider_customer_id: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param payment_gateway_connection_id [String] The ID of the payment gateway connection to map the customer to.
        #
        # @param is_default [Boolean] Whether Orb charges the customer for the billing entity's invoices through this
        #
        # @param provider_customer_id [String, nil] The ID of the customer in the external payment provider.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::CustomerPaymentGatewayConnection]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionCreateParams
        def create(customer_id, params)
          parsed, options = Orb::Customers::PaymentGatewayConnectionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["customers/%1$s/payment_gateway_connections", customer_id],
            body: parsed,
            model: Orb::Customers::CustomerPaymentGatewayConnection,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Customers::PaymentGatewayConnectionUpdateParams} for more details.
        #
        # This endpoint updates the customer's mapping to a payment gateway connection:
        # the customer's ID in that account, and whether Orb charges the customer for the
        # billing entity's invoices through it. Omitted fields keep their value.
        #
        # @overload update(payment_gateway_connection_id, customer_id:, is_default: nil, provider_customer_id: nil, request_options: {})
        #
        # @param payment_gateway_connection_id [String] Path param
        #
        # @param customer_id [String] Path param
        #
        # @param is_default [Boolean, Orb::Models::Customers::PaymentGatewayConnectionUpdateParams::IsDefault, nil] Body param: Only `true` is accepted: it makes this the customer's default mappin
        #
        # @param provider_customer_id [String, nil] Body param: The ID of the customer in the external payment provider. Omit it to
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::CustomerPaymentGatewayConnection]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionUpdateParams
        def update(payment_gateway_connection_id, params)
          parsed, options = Orb::Customers::PaymentGatewayConnectionUpdateParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "customers/%1$s/payment_gateway_connections/%2$s",
              customer_id,
              payment_gateway_connection_id
            ],
            body: parsed,
            model: Orb::Customers::CustomerPaymentGatewayConnection,
            options: options
          )
        end

        # This endpoint returns the customer's mappings to payment gateway connections,
        # for example the customer's Stripe ID in each connected Stripe account. A
        # customer has at most one mapping per connection, so the list is not paginated.
        #
        # @overload list(customer_id, billing_entity_id: nil, payment_gateway_connection_id: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param billing_entity_id [String, nil] Only return mappings to this billing entity's connections.
        #
        # @param payment_gateway_connection_id [String, nil] Only return the mapping to this connection.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::PaymentGatewayConnectionListResponse]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionListParams
        def list(customer_id, params = {})
          parsed, options = Orb::Customers::PaymentGatewayConnectionListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["customers/%1$s/payment_gateway_connections", customer_id],
            query: query,
            model: Orb::Models::Customers::PaymentGatewayConnectionListResponse,
            options: options
          )
        end

        # This endpoint removes the customer's mapping to a payment gateway connection and
        # returns it. Active subscriptions and unpaid invoices do not block it. If the
        # mapping was the customer's default for the billing entity, the customer's oldest
        # remaining mapping on that entity becomes the default. With no mapping left, the
        # next charge goes through the billing entity's default connection.
        #
        # @overload delete(payment_gateway_connection_id, customer_id:, request_options: {})
        #
        # @param payment_gateway_connection_id [String]
        # @param customer_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::CustomerPaymentGatewayConnection]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionDeleteParams
        def delete(payment_gateway_connection_id, params)
          parsed, options = Orb::Customers::PaymentGatewayConnectionDeleteParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "customers/%1$s/payment_gateway_connections/%2$s",
              customer_id,
              payment_gateway_connection_id
            ],
            model: Orb::Customers::CustomerPaymentGatewayConnection,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Customers::PaymentGatewayConnectionCreateByExternalIDParams} for
        # more details.
        #
        # This endpoint maps the customer to a payment gateway connection. Orb charges the
        # customer for a billing entity's invoices through the customer's first mapping
        # for that billing entity; `is_default` moves that to this mapping when the
        # customer already has one.
        #
        # @overload create_by_external_id(external_customer_id, payment_gateway_connection_id:, is_default: nil, provider_customer_id: nil, request_options: {})
        #
        # @param external_customer_id [String]
        #
        # @param payment_gateway_connection_id [String] The ID of the payment gateway connection to map the customer to.
        #
        # @param is_default [Boolean] Whether Orb charges the customer for the billing entity's invoices through this
        #
        # @param provider_customer_id [String, nil] The ID of the customer in the external payment provider.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::CustomerPaymentGatewayConnection]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionCreateByExternalIDParams
        def create_by_external_id(external_customer_id, params)
          parsed, options = Orb::Customers::PaymentGatewayConnectionCreateByExternalIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["customers/external_customer_id/%1$s/payment_gateway_connections", external_customer_id],
            body: parsed,
            model: Orb::Customers::CustomerPaymentGatewayConnection,
            options: options
          )
        end

        # This endpoint removes the customer's mapping to a payment gateway connection and
        # returns it. Active subscriptions and unpaid invoices do not block it. If the
        # mapping was the customer's default for the billing entity, the customer's oldest
        # remaining mapping on that entity becomes the default. With no mapping left, the
        # next charge goes through the billing entity's default connection.
        #
        # @overload delete_by_external_id(payment_gateway_connection_id, external_customer_id:, request_options: {})
        #
        # @param payment_gateway_connection_id [String]
        # @param external_customer_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::CustomerPaymentGatewayConnection]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionDeleteByExternalIDParams
        def delete_by_external_id(payment_gateway_connection_id, params)
          parsed, options = Orb::Customers::PaymentGatewayConnectionDeleteByExternalIDParams.dump_request(params)
          external_customer_id =
            parsed.delete(:external_customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "customers/external_customer_id/%1$s/payment_gateway_connections/%2$s",
              external_customer_id,
              payment_gateway_connection_id
            ],
            model: Orb::Customers::CustomerPaymentGatewayConnection,
            options: options
          )
        end

        # This endpoint returns the customer's mappings to payment gateway connections,
        # for example the customer's Stripe ID in each connected Stripe account. A
        # customer has at most one mapping per connection, so the list is not paginated.
        #
        # @overload list_by_external_id(external_customer_id, billing_entity_id: nil, payment_gateway_connection_id: nil, request_options: {})
        #
        # @param external_customer_id [String]
        #
        # @param billing_entity_id [String, nil] Only return mappings to this billing entity's connections.
        #
        # @param payment_gateway_connection_id [String, nil] Only return the mapping to this connection.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::PaymentGatewayConnectionListByExternalIDResponse]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionListByExternalIDParams
        def list_by_external_id(external_customer_id, params = {})
          parsed, options = Orb::Customers::PaymentGatewayConnectionListByExternalIDParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["customers/external_customer_id/%1$s/payment_gateway_connections", external_customer_id],
            query: query,
            model: Orb::Models::Customers::PaymentGatewayConnectionListByExternalIDResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Customers::PaymentGatewayConnectionUpdateByExternalIDParams} for
        # more details.
        #
        # This endpoint updates the customer's mapping to a payment gateway connection:
        # the customer's ID in that account, and whether Orb charges the customer for the
        # billing entity's invoices through it. Omitted fields keep their value.
        #
        # @overload update_by_external_id(payment_gateway_connection_id, external_customer_id:, is_default: nil, provider_customer_id: nil, request_options: {})
        #
        # @param payment_gateway_connection_id [String] Path param
        #
        # @param external_customer_id [String] Path param
        #
        # @param is_default [Boolean, Orb::Models::Customers::PaymentGatewayConnectionUpdateByExternalIDParams::IsDefault, nil] Body param: Only `true` is accepted: it makes this the customer's default mappin
        #
        # @param provider_customer_id [String, nil] Body param: The ID of the customer in the external payment provider. Omit it to
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Customers::CustomerPaymentGatewayConnection]
        #
        # @see Orb::Models::Customers::PaymentGatewayConnectionUpdateByExternalIDParams
        def update_by_external_id(payment_gateway_connection_id, params)
          parsed, options = Orb::Customers::PaymentGatewayConnectionUpdateByExternalIDParams.dump_request(params)
          external_customer_id =
            parsed.delete(:external_customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "customers/external_customer_id/%1$s/payment_gateway_connections/%2$s",
              external_customer_id,
              payment_gateway_connection_id
            ],
            body: parsed,
            model: Orb::Customers::CustomerPaymentGatewayConnection,
            options: options
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
