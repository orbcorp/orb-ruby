# typed: strong

module Orb
  module Models
    module Customers
      class PaymentGatewayConnectionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::PaymentGatewayConnectionListParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # Only return mappings to this billing entity's connections.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_entity_id

        # Only return the mapping to this connection.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_gateway_connection_id

        sig do
          params(
            customer_id: String,
            billing_entity_id: T.nilable(String),
            payment_gateway_connection_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # Only return mappings to this billing entity's connections.
          billing_entity_id: nil,
          # Only return the mapping to this connection.
          payment_gateway_connection_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              billing_entity_id: T.nilable(String),
              payment_gateway_connection_id: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
