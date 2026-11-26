# typed: strong

module Orb
  module Models
    module Account
      class BillingEntityCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Account::BillingEntityCreateParams,
              Orb::Internal::AnyHash
            )
          end

        # The address printed on invoices.
        sig { returns(Orb::AddressInput) }
        attr_reader :address

        sig { params(address: Orb::AddressInput::OrHash).void }
        attr_writer :address

        # The legal name printed on invoices.
        sig { returns(String) }
        attr_accessor :legal_name

        # An internal name for the billing entity.
        sig { returns(String) }
        attr_accessor :name

        # An optional user-defined ID for this billing entity, unique within the account.
        # This cannot be changed after creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_billing_entity_id

        # Settings that override the account's for this billing entity.
        sig do
          returns(
            T.nilable(Orb::Account::BillingEntityCreateParams::InvoiceSettings)
          )
        end
        attr_reader :invoice_settings

        sig do
          params(
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityCreateParams::InvoiceSettings::OrHash
              )
          ).void
        end
        attr_writer :invoice_settings

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Account::BillingEntityCreateParams::TaxRegistration]
            )
          )
        end
        attr_reader :tax_registrations

        sig do
          params(
            tax_registrations:
              T::Array[
                Orb::Account::BillingEntityCreateParams::TaxRegistration::OrHash
              ]
          ).void
        end
        attr_writer :tax_registrations

        sig do
          params(
            address: Orb::AddressInput::OrHash,
            legal_name: String,
            name: String,
            external_billing_entity_id: T.nilable(String),
            invoice_settings:
              T.nilable(
                Orb::Account::BillingEntityCreateParams::InvoiceSettings::OrHash
              ),
            tax_registrations:
              T::Array[
                Orb::Account::BillingEntityCreateParams::TaxRegistration::OrHash
              ],
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The address printed on invoices.
          address:,
          # The legal name printed on invoices.
          legal_name:,
          # An internal name for the billing entity.
          name:,
          # An optional user-defined ID for this billing entity, unique within the account.
          # This cannot be changed after creation.
          external_billing_entity_id: nil,
          # Settings that override the account's for this billing entity.
          invoice_settings: nil,
          tax_registrations: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              address: Orb::AddressInput,
              legal_name: String,
              name: String,
              external_billing_entity_id: T.nilable(String),
              invoice_settings:
                T.nilable(
                  Orb::Account::BillingEntityCreateParams::InvoiceSettings
                ),
              tax_registrations:
                T::Array[
                  Orb::Account::BillingEntityCreateParams::TaxRegistration
                ],
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
                Orb::Account::BillingEntityCreateParams::InvoiceSettings,
                Orb::Internal::AnyHash
              )
            end

          # The memo printed on the entity's invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :memo

          # Settings that override the account's for this billing entity.
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

        class TaxRegistration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Account::BillingEntityCreateParams::TaxRegistration,
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
          # customer. A Canadian provincial registration (`CA PST-BC`, `CA PST-MB`,
          # `CA PST-SK`, `CA QST`) only applies to customers in its province, whatever this
          # field holds.
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
            # customer. A Canadian provincial registration (`CA PST-BC`, `CA PST-MB`,
            # `CA PST-SK`, `CA QST`) only applies to customers in its province, whatever this
            # field holds.
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
