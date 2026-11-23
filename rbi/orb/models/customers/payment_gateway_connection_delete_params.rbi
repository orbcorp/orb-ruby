# typed: strong

module Orb
  module Models
    module Customers
      class PaymentGatewayConnectionDeleteParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::PaymentGatewayConnectionDeleteParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :payment_gateway_connection_id

        sig do
          params(
            customer_id: String,
            payment_gateway_connection_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          payment_gateway_connection_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              payment_gateway_connection_id: String,
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
