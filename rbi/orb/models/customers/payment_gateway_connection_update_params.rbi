# typed: strong

module Orb
  module Models
    module Customers
      class PaymentGatewayConnectionUpdateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::PaymentGatewayConnectionUpdateParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :payment_gateway_connection_id

        # Only `true` is accepted: it makes this the customer's default mapping for the
        # connection's billing entity. Omit it to keep the current default. To move the
        # default, set it on another mapping.
        sig do
          returns(
            T.nilable(
              Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault::OrBoolean
            )
          )
        end
        attr_accessor :is_default

        # The ID of the customer in the external payment provider. Omit it to keep the
        # current one; `null` clears it, and Orb creates a Stripe customer at the next
        # payment through this connection.
        sig { returns(T.nilable(String)) }
        attr_accessor :provider_customer_id

        sig do
          params(
            customer_id: String,
            payment_gateway_connection_id: String,
            is_default:
              T.nilable(
                Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault::OrBoolean
              ),
            provider_customer_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          payment_gateway_connection_id:,
          # Only `true` is accepted: it makes this the customer's default mapping for the
          # connection's billing entity. Omit it to keep the current default. To move the
          # default, set it on another mapping.
          is_default: nil,
          # The ID of the customer in the external payment provider. Omit it to keep the
          # current one; `null` clears it, and Orb creates a Stripe customer at the next
          # payment through this connection.
          provider_customer_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              payment_gateway_connection_id: String,
              is_default:
                T.nilable(
                  Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault::OrBoolean
                ),
              provider_customer_id: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Only `true` is accepted: it makes this the customer's default mapping for the
        # connection's billing entity. Omit it to keep the current default. To move the
        # default, set it on another mapping.
        module IsDefault
          extend Orb::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
