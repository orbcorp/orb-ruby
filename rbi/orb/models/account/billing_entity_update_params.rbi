# typed: strong

module Orb
  module Models
    module Account
      class BillingEntityUpdateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Account::BillingEntityUpdateParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :billing_entity_id

        # Replaces the whole address. Omit it to keep the current one.
        sig { returns(T.nilable(Orb::AddressInput)) }
        attr_reader :address

        sig { params(address: T.nilable(Orb::AddressInput::OrHash)).void }
        attr_writer :address

        # The ID of the connection Orb charges when the customer is not mapped to any of
        # the billing entity's connections. Required when `payment_gateway_connections`
        # has more than one entry.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_gateway_connection_id

        # The invoice settings to change. Omitted fields keep their value; null clears a
        # field so it inherits the account's setting.
        sig do
          returns(
            T.nilable(Orb::Account::BillingEntityUpdateParams::InvoiceSettings)
          )
        end
        attr_reader :invoice_settings

        sig do
          params(
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityUpdateParams::InvoiceSettings::OrHash
              )
          ).void
        end
        attr_writer :invoice_settings

        # The legal name printed on invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :legal_name

        # An internal name for the billing entity.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The full set of payment gateway connections the billing entity collects payments
        # through. Omit it to keep the current ones. Naming another billing entity's
        # connection gives this billing entity a connection of its own through the same
        # Stripe account or Adyen merchant account.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection
              ]
            )
          )
        end
        attr_accessor :payment_gateway_connections

        # The full list of registrations. Omit it to keep the current ones.
        sig do
          returns(
            T.nilable(
              T::Array[Orb::Account::BillingEntityUpdateParams::TaxRegistration]
            )
          )
        end
        attr_accessor :tax_registrations

        sig do
          params(
            billing_entity_id: String,
            address: T.nilable(Orb::AddressInput::OrHash),
            default_payment_gateway_connection_id: T.nilable(String),
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityUpdateParams::InvoiceSettings::OrHash
              ),
            legal_name: T.nilable(String),
            name: T.nilable(String),
            payment_gateway_connections:
              T.nilable(
                T::Array[
                  Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::OrHash
                ]
              ),
            tax_registrations:
              T.nilable(
                T::Array[
                  Orb::Account::BillingEntityUpdateParams::TaxRegistration::OrHash
                ]
              ),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          billing_entity_id:,
          # Replaces the whole address. Omit it to keep the current one.
          address: nil,
          # The ID of the connection Orb charges when the customer is not mapped to any of
          # the billing entity's connections. Required when `payment_gateway_connections`
          # has more than one entry.
          default_payment_gateway_connection_id: nil,
          # The invoice settings to change. Omitted fields keep their value; null clears a
          # field so it inherits the account's setting.
          invoice_settings: nil,
          # The legal name printed on invoices.
          legal_name: nil,
          # An internal name for the billing entity.
          name: nil,
          # The full set of payment gateway connections the billing entity collects payments
          # through. Omit it to keep the current ones. Naming another billing entity's
          # connection gives this billing entity a connection of its own through the same
          # Stripe account or Adyen merchant account.
          payment_gateway_connections: nil,
          # The full list of registrations. Omit it to keep the current ones.
          tax_registrations: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              billing_entity_id: String,
              address: T.nilable(Orb::AddressInput),
              default_payment_gateway_connection_id: T.nilable(String),
              invoice_settings:
                T.nilable(
                  Orb::Account::BillingEntityUpdateParams::InvoiceSettings
                ),
              legal_name: T.nilable(String),
              name: T.nilable(String),
              payment_gateway_connections:
                T.nilable(
                  T::Array[
                    Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection
                  ]
                ),
              tax_registrations:
                T.nilable(
                  T::Array[
                    Orb::Account::BillingEntityUpdateParams::TaxRegistration
                  ]
                ),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        class InvoiceSettings < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Account::BillingEntityUpdateParams::InvoiceSettings,
                Orb::Internal::AnyHash
              )
            end

          # The memo printed on the entity's invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :memo

          # The invoice settings to change. Omitted fields keep their value; null clears a
          # field so it inherits the account's setting.
          sig { params(memo: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # The memo printed on the entity's invoices.
            memo: nil
          )
          end

          sig { override.returns({ memo: T.nilable(String) }) }
          def to_hash
          end
        end

        class PaymentGatewayConnection < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection,
                Orb::Internal::AnyHash
              )
            end

          # The ID of a payment gateway connection of the account.
          sig { returns(String) }
          attr_accessor :payment_gateway_connection_id

          # The connection's payment provider.
          sig do
            returns(
              Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType::OrSymbol
            )
          end
          attr_accessor :payment_provider_type

          sig do
            params(
              payment_gateway_connection_id: String,
              payment_provider_type:
                Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of a payment gateway connection of the account.
            payment_gateway_connection_id:,
            # The connection's payment provider.
            payment_provider_type:
          )
          end

          sig do
            override.returns(
              {
                payment_gateway_connection_id: String,
                payment_provider_type:
                  Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The connection's payment provider.
          module PaymentProviderType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRIPE =
              T.let(
                :stripe,
                Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
              )
            ADYEN =
              T.let(
                :adyen,
                Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TaxRegistration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Account::BillingEntityUpdateParams::TaxRegistration,
                Orb::Internal::AnyHash
              )
            end

          # The tax registration type, for example `DE VAT`.
          sig { returns(String) }
          attr_accessor :code

          # The registration number.
          sig { returns(String) }
          attr_accessor :value

          # The jurisdiction the registration applies to. If null, it applies to every
          # customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :applies_to

          sig do
            params(
              code: String,
              value: String,
              applies_to: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The tax registration type, for example `DE VAT`.
            code:,
            # The registration number.
            value:,
            # The jurisdiction the registration applies to. If null, it applies to every
            # customer.
            applies_to: nil
          )
          end

          sig do
            override.returns(
              { code: String, value: String, applies_to: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
