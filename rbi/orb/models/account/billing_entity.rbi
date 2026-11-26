# typed: strong

module Orb
  module Models
    module Account
      class BillingEntity < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Account::BillingEntity, Orb::Internal::AnyHash)
          end

        # The Orb-assigned unique identifier for the billing entity.
        sig { returns(String) }
        attr_accessor :id

        # The address printed on invoices.
        sig { returns(T.nilable(Orb::Address)) }
        attr_reader :address

        sig { params(address: T.nilable(Orb::Address::OrHash)).void }
        attr_writer :address

        # The time the billing entity was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the connection Orb charges when the customer is not mapped to any of
        # the billing entity's connections.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_gateway_connection_id

        # An optional user-defined ID for this billing entity, unique within the account.
        # This cannot be changed after creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_billing_entity_id

        # The billing entity's own invoice settings. Each null field inherits the
        # account's setting.
        sig { returns(Orb::Account::BillingEntity::InvoiceSettings) }
        attr_reader :invoice_settings

        sig do
          params(
            invoice_settings:
              Orb::Account::BillingEntity::InvoiceSettings::OrHash
          ).void
        end
        attr_writer :invoice_settings

        # Whether this is the account's default billing entity.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # The legal name printed on invoices.
        sig { returns(String) }
        attr_accessor :legal_name

        # An internal name for the billing entity.
        sig { returns(String) }
        attr_accessor :name

        # The payment gateway connections the billing entity collects payments through.
        sig do
          returns(
            T::Array[Orb::Account::BillingEntity::PaymentGatewayConnection]
          )
        end
        attr_accessor :payment_gateway_connections

        sig { returns(Orb::Account::BillingEntity::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(T::Array[Orb::Account::BillingEntity::TaxRegistration]) }
        attr_accessor :tax_registrations

        # A billing entity is a legal entity an account invoices from, with its own legal
        # name, address and tax registrations.
        sig do
          params(
            id: String,
            address: T.nilable(Orb::Address::OrHash),
            created_at: Time,
            default_payment_gateway_connection_id: T.nilable(String),
            external_billing_entity_id: T.nilable(String),
            invoice_settings:
              Orb::Account::BillingEntity::InvoiceSettings::OrHash,
            is_default: T::Boolean,
            legal_name: String,
            name: String,
            payment_gateway_connections:
              T::Array[
                Orb::Account::BillingEntity::PaymentGatewayConnection::OrHash
              ],
            status: Orb::Account::BillingEntity::Status::OrSymbol,
            tax_registrations:
              T::Array[Orb::Account::BillingEntity::TaxRegistration::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The Orb-assigned unique identifier for the billing entity.
          id:,
          # The address printed on invoices.
          address:,
          # The time the billing entity was created.
          created_at:,
          # The ID of the connection Orb charges when the customer is not mapped to any of
          # the billing entity's connections.
          default_payment_gateway_connection_id:,
          # An optional user-defined ID for this billing entity, unique within the account.
          # This cannot be changed after creation.
          external_billing_entity_id:,
          # The billing entity's own invoice settings. Each null field inherits the
          # account's setting.
          invoice_settings:,
          # Whether this is the account's default billing entity.
          is_default:,
          # The legal name printed on invoices.
          legal_name:,
          # An internal name for the billing entity.
          name:,
          # The payment gateway connections the billing entity collects payments through.
          payment_gateway_connections:,
          status:,
          tax_registrations:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address: T.nilable(Orb::Address),
              created_at: Time,
              default_payment_gateway_connection_id: T.nilable(String),
              external_billing_entity_id: T.nilable(String),
              invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
              is_default: T::Boolean,
              legal_name: String,
              name: String,
              payment_gateway_connections:
                T::Array[Orb::Account::BillingEntity::PaymentGatewayConnection],
              status: Orb::Account::BillingEntity::Status::TaggedSymbol,
              tax_registrations:
                T::Array[Orb::Account::BillingEntity::TaxRegistration]
            }
          )
        end
        def to_hash
        end

        class InvoiceSettings < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Account::BillingEntity::InvoiceSettings,
                Orb::Internal::AnyHash
              )
            end

          # The memo printed on the entity's invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :memo

          # The billing entity's own invoice settings. Each null field inherits the
          # account's setting.
          sig { params(memo: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # The memo printed on the entity's invoices.
            memo:
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
                Orb::Account::BillingEntity::PaymentGatewayConnection,
                Orb::Internal::AnyHash
              )
            end

          # Whether this is the billing entity's default payment gateway connection.
          sig { returns(T::Boolean) }
          attr_accessor :is_default

          # The ID of the billing entity's payment gateway connection.
          sig { returns(String) }
          attr_accessor :payment_gateway_connection_id

          # The connection's payment provider.
          sig do
            returns(
              Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
            )
          end
          attr_accessor :payment_provider_type

          sig do
            params(
              is_default: T::Boolean,
              payment_gateway_connection_id: String,
              payment_provider_type:
                Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether this is the billing entity's default payment gateway connection.
            is_default:,
            # The ID of the billing entity's payment gateway connection.
            payment_gateway_connection_id:,
            # The connection's payment provider.
            payment_provider_type:
          )
          end

          sig do
            override.returns(
              {
                is_default: T::Boolean,
                payment_gateway_connection_id: String,
                payment_provider_type:
                  Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
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
                  Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRIPE =
              T.let(
                :stripe,
                Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
              )
            ADYEN =
              T.let(
                :adyen,
                Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Account::BillingEntity::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(:active, Orb::Account::BillingEntity::Status::TaggedSymbol)
          ARCHIVED =
            T.let(:archived, Orb::Account::BillingEntity::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Account::BillingEntity::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class TaxRegistration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Account::BillingEntity::TaxRegistration,
                Orb::Internal::AnyHash
              )
            end

          # The jurisdiction the registration applies to. If null, it applies to every
          # customer. A Canadian provincial registration (`CA PST-BC`, `CA PST-MB`,
          # `CA PST-SK`, `CA QST`) only applies to customers in its province, whatever this
          # field holds.
          sig { returns(T.nilable(String)) }
          attr_accessor :applies_to

          # The tax registration type, for example `DE VAT`.
          sig { returns(String) }
          attr_accessor :code

          # The registration number.
          sig { returns(String) }
          attr_accessor :value

          sig do
            params(
              applies_to: T.nilable(String),
              code: String,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The jurisdiction the registration applies to. If null, it applies to every
            # customer. A Canadian provincial registration (`CA PST-BC`, `CA PST-MB`,
            # `CA PST-SK`, `CA QST`) only applies to customers in its province, whatever this
            # field holds.
            applies_to:,
            # The tax registration type, for example `DE VAT`.
            code:,
            # The registration number.
            value:
          )
          end

          sig do
            override.returns(
              { applies_to: T.nilable(String), code: String, value: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
