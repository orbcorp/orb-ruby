# typed: strong

module Orb
  module Models
    CustomerPaymentGatewayConnection =
      Customers::CustomerPaymentGatewayConnection

    module Customers
      class CustomerPaymentGatewayConnection < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::CustomerPaymentGatewayConnection,
              Orb::Internal::AnyHash
            )
          end

        # The ID of the billing entity that collects payments through the connection.
        sig { returns(String) }
        attr_accessor :billing_entity_id

        # The time the mapping was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the account in the external payment provider.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_account_id

        # Whether Orb charges the customer for that billing entity's invoices through this
        # mapping. On the default billing entity, it is the mapping the customer's
        # `payment_provider_id` reflects.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # The ID of the payment gateway connection the customer is mapped to.
        sig { returns(String) }
        attr_accessor :payment_gateway_connection_id

        # The ID of the customer in the external payment provider, or null if none is set.
        sig { returns(T.nilable(String)) }
        attr_accessor :provider_customer_id

        # The external payment provider of the connection.
        sig do
          returns(
            Orb::Customers::CustomerPaymentGatewayConnection::ProviderType::TaggedSymbol
          )
        end
        attr_accessor :provider_type

        # A customer's mapping to one payment gateway connection.
        sig do
          params(
            billing_entity_id: String,
            created_at: Time,
            external_account_id: T.nilable(String),
            is_default: T::Boolean,
            payment_gateway_connection_id: String,
            provider_customer_id: T.nilable(String),
            provider_type:
              Orb::Customers::CustomerPaymentGatewayConnection::ProviderType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the billing entity that collects payments through the connection.
          billing_entity_id:,
          # The time the mapping was created.
          created_at:,
          # The ID of the account in the external payment provider.
          external_account_id:,
          # Whether Orb charges the customer for that billing entity's invoices through this
          # mapping. On the default billing entity, it is the mapping the customer's
          # `payment_provider_id` reflects.
          is_default:,
          # The ID of the payment gateway connection the customer is mapped to.
          payment_gateway_connection_id:,
          # The ID of the customer in the external payment provider, or null if none is set.
          provider_customer_id:,
          # The external payment provider of the connection.
          provider_type:
        )
        end

        sig do
          override.returns(
            {
              billing_entity_id: String,
              created_at: Time,
              external_account_id: T.nilable(String),
              is_default: T::Boolean,
              payment_gateway_connection_id: String,
              provider_customer_id: T.nilable(String),
              provider_type:
                Orb::Customers::CustomerPaymentGatewayConnection::ProviderType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The external payment provider of the connection.
        module ProviderType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::Customers::CustomerPaymentGatewayConnection::ProviderType::TaggedSymbol
            )
          ADYEN =
            T.let(
              :adyen,
              Orb::Customers::CustomerPaymentGatewayConnection::ProviderType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Customers::CustomerPaymentGatewayConnection::ProviderType::TaggedSymbol
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
