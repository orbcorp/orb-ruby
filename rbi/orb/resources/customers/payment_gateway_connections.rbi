# typed: strong

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
        # This endpoint maps the customer to a payment gateway connection. Orb charges the
        # customer for a billing entity's invoices through the customer's first mapping
        # for that billing entity; `is_default` moves that to this mapping when the
        # customer already has one.
        sig do
          params(
            customer_id: String,
            payment_gateway_connection_id: String,
            is_default: T::Boolean,
            provider_customer_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Customers::CustomerPaymentGatewayConnection)
        end
        def create(
          customer_id,
          # The ID of the payment gateway connection to map the customer to.
          payment_gateway_connection_id:,
          # Whether Orb charges the customer for the billing entity's invoices through this
          # mapping. The customer's first mapping for a billing entity is the default
          # regardless.
          is_default: nil,
          # The ID of the customer in the external payment provider.
          provider_customer_id: nil,
          request_options: {}
        )
        end

        # This endpoint updates the customer's mapping to a payment gateway connection:
        # the customer's ID in that account, and whether Orb charges the customer for the
        # billing entity's invoices through it. Omitted fields keep their value.
        sig do
          params(
            payment_gateway_connection_id: String,
            customer_id: String,
            is_default:
              T.nilable(
                Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault::OrBoolean
              ),
            provider_customer_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Customers::CustomerPaymentGatewayConnection)
        end
        def update(
          # Path param
          payment_gateway_connection_id,
          # Path param
          customer_id:,
          # Body param: Only `true` is accepted: it makes this the customer's default
          # mapping for the connection's billing entity. Omit it to keep the current
          # default. To move the default, set it on another mapping.
          is_default: nil,
          # Body param: The ID of the customer in the external payment provider. Omit it to
          # keep the current one; `null` clears it, and Orb creates a Stripe customer at the
          # next payment through this connection.
          provider_customer_id: nil,
          request_options: {}
        )
        end

        # This endpoint returns the customer's mappings to payment gateway connections,
        # for example the customer's Stripe ID in each connected Stripe account. A
        # customer has at most one mapping per connection, so the list is not paginated.
        sig do
          params(
            customer_id: String,
            billing_entity_id: T.nilable(String),
            payment_gateway_connection_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(
            Orb::Models::Customers::PaymentGatewayConnectionListResponse
          )
        end
        def list(
          customer_id,
          # Only return mappings to this billing entity's connections.
          billing_entity_id: nil,
          # Only return the mapping to this connection.
          payment_gateway_connection_id: nil,
          request_options: {}
        )
        end

        # This endpoint removes the customer's mapping to a payment gateway connection and
        # returns it. Active subscriptions and unpaid invoices do not block it. If the
        # mapping was the customer's default for the billing entity, the customer's oldest
        # remaining mapping on that entity becomes the default. With no mapping left, the
        # next charge goes through the billing entity's default connection.
        sig do
          params(
            payment_gateway_connection_id: String,
            customer_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Customers::CustomerPaymentGatewayConnection)
        end
        def delete(
          payment_gateway_connection_id,
          customer_id:,
          request_options: {}
        )
        end

        # This endpoint maps the customer to a payment gateway connection. Orb charges the
        # customer for a billing entity's invoices through the customer's first mapping
        # for that billing entity; `is_default` moves that to this mapping when the
        # customer already has one.
        sig do
          params(
            external_customer_id: String,
            payment_gateway_connection_id: String,
            is_default: T::Boolean,
            provider_customer_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Customers::CustomerPaymentGatewayConnection)
        end
        def create_by_external_id(
          external_customer_id,
          # The ID of the payment gateway connection to map the customer to.
          payment_gateway_connection_id:,
          # Whether Orb charges the customer for the billing entity's invoices through this
          # mapping. The customer's first mapping for a billing entity is the default
          # regardless.
          is_default: nil,
          # The ID of the customer in the external payment provider.
          provider_customer_id: nil,
          request_options: {}
        )
        end

        # This endpoint removes the customer's mapping to a payment gateway connection and
        # returns it. Active subscriptions and unpaid invoices do not block it. If the
        # mapping was the customer's default for the billing entity, the customer's oldest
        # remaining mapping on that entity becomes the default. With no mapping left, the
        # next charge goes through the billing entity's default connection.
        sig do
          params(
            payment_gateway_connection_id: String,
            external_customer_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Customers::CustomerPaymentGatewayConnection)
        end
        def delete_by_external_id(
          payment_gateway_connection_id,
          external_customer_id:,
          request_options: {}
        )
        end

        # This endpoint returns the customer's mappings to payment gateway connections,
        # for example the customer's Stripe ID in each connected Stripe account. A
        # customer has at most one mapping per connection, so the list is not paginated.
        sig do
          params(
            external_customer_id: String,
            billing_entity_id: T.nilable(String),
            payment_gateway_connection_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(
            Orb::Models::Customers::PaymentGatewayConnectionListByExternalIDResponse
          )
        end
        def list_by_external_id(
          external_customer_id,
          # Only return mappings to this billing entity's connections.
          billing_entity_id: nil,
          # Only return the mapping to this connection.
          payment_gateway_connection_id: nil,
          request_options: {}
        )
        end

        # This endpoint updates the customer's mapping to a payment gateway connection:
        # the customer's ID in that account, and whether Orb charges the customer for the
        # billing entity's invoices through it. Omitted fields keep their value.
        sig do
          params(
            payment_gateway_connection_id: String,
            external_customer_id: String,
            is_default:
              T.nilable(
                Orb::Customers::PaymentGatewayConnectionUpdateByExternalIDParams::IsDefault::OrBoolean
              ),
            provider_customer_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Customers::CustomerPaymentGatewayConnection)
        end
        def update_by_external_id(
          # Path param
          payment_gateway_connection_id,
          # Path param
          external_customer_id:,
          # Body param: Only `true` is accepted: it makes this the customer's default
          # mapping for the connection's billing entity. Omit it to keep the current
          # default. To move the default, set it on another mapping.
          is_default: nil,
          # Body param: The ID of the customer in the external payment provider. Omit it to
          # keep the current one; `null` clears it, and Orb creates a Stripe customer at the
          # next payment through this connection.
          provider_customer_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
