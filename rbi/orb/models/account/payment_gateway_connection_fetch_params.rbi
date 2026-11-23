# typed: strong

module Orb
  module Models
    module Account
      class PaymentGatewayConnectionFetchParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Account::PaymentGatewayConnectionFetchParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :payment_gateway_connection_id

        sig do
          params(
            payment_gateway_connection_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(payment_gateway_connection_id:, request_options: {})
        end

        sig do
          override.returns(
            {
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
