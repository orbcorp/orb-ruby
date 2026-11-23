# typed: strong

module Orb
  module Models
    module Customers
      class PaymentGatewayConnectionListResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Customers::PaymentGatewayConnectionListResponse,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(T::Array[Orb::Customers::CustomerPaymentGatewayConnection])
        end
        attr_accessor :payment_gateway_connections

        sig do
          params(
            customer_id: String,
            payment_gateway_connections:
              T::Array[Orb::Customers::CustomerPaymentGatewayConnection::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(customer_id:, payment_gateway_connections:)
        end

        sig do
          override.returns(
            {
              customer_id: String,
              payment_gateway_connections:
                T::Array[Orb::Customers::CustomerPaymentGatewayConnection]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
