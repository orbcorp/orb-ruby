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

          # Whether Orb charges the customer's payment method automatically.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :auto_collection

          # Whether Orb calculates tax through the tax provider.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :automatic_tax_enabled

          # Whether Orb emails invoices to customers.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :email_delivery

          # Whether invoices stay in draft until issued by hand.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :manual_issuance

          # The memo printed on the entity's invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :memo

          # The number of days until payment is due, counting the start date as day 1, so
          # net 30 from October 1 is due October 30. The account's
          # [due date calculation method](/invoicing/payments#configuring-net-terms-and-collection-behavior)
          # sets whether the start date is the invoice date or the issuance date.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :net_terms

          # Settings that override the account's for this billing entity.
          sig do
            params(
              auto_collection: T.nilable(T::Boolean),
              automatic_tax_enabled: T.nilable(T::Boolean),
              email_delivery: T.nilable(T::Boolean),
              manual_issuance: T.nilable(T::Boolean),
              memo: T.nilable(String),
              net_terms: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether Orb charges the customer's payment method automatically.
            auto_collection: nil,
            # Whether Orb calculates tax through the tax provider.
            automatic_tax_enabled: nil,
            # Whether Orb emails invoices to customers.
            email_delivery: nil,
            # Whether invoices stay in draft until issued by hand.
            manual_issuance: nil,
            # The memo printed on the entity's invoices.
            memo: nil,
            # The number of days until payment is due, counting the start date as day 1, so
            # net 30 from October 1 is due October 30. The account's
            # [due date calculation method](/invoicing/payments#configuring-net-terms-and-collection-behavior)
            # sets whether the start date is the invoice date or the issuance date.
            net_terms: nil
          )
          end

          sig do
            override.returns(
              {
                auto_collection: T.nilable(T::Boolean),
                automatic_tax_enabled: T.nilable(T::Boolean),
                email_delivery: T.nilable(T::Boolean),
                manual_issuance: T.nilable(T::Boolean),
                memo: T.nilable(String),
                net_terms: T.nilable(Integer)
              }
            )
          end
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
