# typed: strong

module Orb
  module Models
    module Account
      class PaymentGatewayConnection < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Account::PaymentGatewayConnection,
              Orb::Internal::AnyHash
            )
          end

        # The Orb-assigned unique identifier for the payment gateway connection.
        sig { returns(String) }
        attr_accessor :id

        # The ID of the billing entity that collects payments through this connection.
        sig { returns(String) }
        attr_accessor :billing_entity_id

        # The time the connection was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the account in the external payment provider.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_account_id

        # Whether this is the billing entity's default payment gateway connection.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # The external payment provider of this connection.
        sig do
          returns(
            Orb::Account::PaymentGatewayConnection::ProviderType::TaggedSymbol
          )
        end
        attr_accessor :provider_type

        # A payment gateway connection is one Stripe account or one Adyen merchant account
        # that a billing entity collects payments through.
        sig do
          params(
            id: String,
            billing_entity_id: String,
            created_at: Time,
            external_account_id: T.nilable(String),
            is_default: T::Boolean,
            provider_type:
              Orb::Account::PaymentGatewayConnection::ProviderType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The Orb-assigned unique identifier for the payment gateway connection.
          id:,
          # The ID of the billing entity that collects payments through this connection.
          billing_entity_id:,
          # The time the connection was created.
          created_at:,
          # The ID of the account in the external payment provider.
          external_account_id:,
          # Whether this is the billing entity's default payment gateway connection.
          is_default:,
          # The external payment provider of this connection.
          provider_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_entity_id: String,
              created_at: Time,
              external_account_id: T.nilable(String),
              is_default: T::Boolean,
              provider_type:
                Orb::Account::PaymentGatewayConnection::ProviderType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The external payment provider of this connection.
        module ProviderType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Account::PaymentGatewayConnection::ProviderType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::Account::PaymentGatewayConnection::ProviderType::TaggedSymbol
            )
          ADYEN =
            T.let(
              :adyen,
              Orb::Account::PaymentGatewayConnection::ProviderType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Account::PaymentGatewayConnection::ProviderType::TaggedSymbol
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
