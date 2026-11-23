# typed: strong

module Orb
  module Models
    module Customers
      class PaymentGatewayConnectionCreateByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::PaymentGatewayConnectionCreateByExternalIDParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :external_customer_id

        # The ID of the payment gateway connection to map the customer to.
        sig { returns(String) }
        attr_accessor :payment_gateway_connection_id

        # Whether Orb charges the customer for the billing entity's invoices through this
        # mapping. The customer's first mapping for a billing entity is the default
        # regardless.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_default

        sig { params(is_default: T::Boolean).void }
        attr_writer :is_default

        # The ID of the customer in the external payment provider.
        sig { returns(T.nilable(String)) }
        attr_accessor :provider_customer_id

        sig do
          params(
            external_customer_id: String,
            payment_gateway_connection_id: String,
            is_default: T::Boolean,
            provider_customer_id: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          external_customer_id:,
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

        sig do
          override.returns(
            {
              external_customer_id: String,
              payment_gateway_connection_id: String,
              is_default: T::Boolean,
              provider_customer_id: T.nilable(String),
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
