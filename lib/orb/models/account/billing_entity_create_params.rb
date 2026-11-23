# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::BillingEntities#create
      class BillingEntityCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute address
        #   The address printed on invoices.
        #
        #   @return [Orb::Models::AddressInput]
        required :address, -> { Orb::AddressInput }

        # @!attribute legal_name
        #   The legal name printed on invoices.
        #
        #   @return [String]
        required :legal_name, String

        # @!attribute name
        #   An internal name for the billing entity.
        #
        #   @return [String]
        required :name, String

        # @!attribute external_billing_entity_id
        #   An optional user-defined ID for this billing entity, unique within the account.
        #   This cannot be changed after creation.
        #
        #   @return [String, nil]
        optional :external_billing_entity_id, String, nil?: true

        # @!attribute invoice_settings
        #   Settings that override the account's for this billing entity.
        #
        #   @return [Orb::Models::Account::BillingEntityCreateParams::InvoiceSettings, nil]
        optional :invoice_settings,
                 -> {
                   Orb::Account::BillingEntityCreateParams::InvoiceSettings
                 },
                 nil?: true

        # @!attribute tax_registrations
        #
        #   @return [Array<Orb::Models::Account::BillingEntityCreateParams::TaxRegistration>, nil]
        optional :tax_registrations,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntityCreateParams::TaxRegistration] }

        # @!method initialize(address:, legal_name:, name:, external_billing_entity_id: nil, invoice_settings: nil, tax_registrations: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Account::BillingEntityCreateParams} for more details.
        #
        #   @param address [Orb::Models::AddressInput] The address printed on invoices.
        #
        #   @param legal_name [String] The legal name printed on invoices.
        #
        #   @param name [String] An internal name for the billing entity.
        #
        #   @param external_billing_entity_id [String, nil] An optional user-defined ID for this billing entity, unique within the account.
        #
        #   @param invoice_settings [Orb::Models::Account::BillingEntityCreateParams::InvoiceSettings, nil] Settings that override the account's for this billing entity.
        #
        #   @param tax_registrations [Array<Orb::Models::Account::BillingEntityCreateParams::TaxRegistration>]
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        class InvoiceSettings < Orb::Internal::Type::BaseModel
          # @!attribute auto_collection
          #   Whether Orb charges the customer's payment method automatically.
          #
          #   @return [Boolean, nil]
          optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute automatic_tax_enabled
          #   Whether Orb calculates tax through the tax provider.
          #
          #   @return [Boolean, nil]
          optional :automatic_tax_enabled, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute email_delivery
          #   Whether Orb emails invoices to customers.
          #
          #   @return [Boolean, nil]
          optional :email_delivery, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute manual_issuance
          #   Whether invoices stay in draft until issued by hand.
          #
          #   @return [Boolean, nil]
          optional :manual_issuance, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute memo
          #   The memo printed on the entity's invoices.
          #
          #   @return [String, nil]
          optional :memo, String, nil?: true

          # @!attribute net_terms
          #   The number of days until payment is due, counting the start date as day 1, so
          #   net 30 from October 1 is due October 30. The account's
          #   [due date calculation method](/invoicing/payments#configuring-net-terms-and-collection-behavior)
          #   sets whether the start date is the invoice date or the issuance date.
          #
          #   @return [Integer, nil]
          optional :net_terms, Integer, nil?: true

          # @!method initialize(auto_collection: nil, automatic_tax_enabled: nil, email_delivery: nil, manual_issuance: nil, memo: nil, net_terms: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Account::BillingEntityCreateParams::InvoiceSettings} for more
          #   details.
          #
          #   Settings that override the account's for this billing entity.
          #
          #   @param auto_collection [Boolean, nil] Whether Orb charges the customer's payment method automatically.
          #
          #   @param automatic_tax_enabled [Boolean, nil] Whether Orb calculates tax through the tax provider.
          #
          #   @param email_delivery [Boolean, nil] Whether Orb emails invoices to customers.
          #
          #   @param manual_issuance [Boolean, nil] Whether invoices stay in draft until issued by hand.
          #
          #   @param memo [String, nil] The memo printed on the entity's invoices.
          #
          #   @param net_terms [Integer, nil] The number of days until payment is due, counting the start date as day 1, so ne
        end

        class TaxRegistration < Orb::Internal::Type::BaseModel
          # @!attribute code
          #   The tax registration type, for example `DE VAT`.
          #
          #   @return [String]
          required :code, String

          # @!attribute value
          #   The registration number.
          #
          #   @return [String]
          required :value, String

          # @!attribute applies_to
          #   The jurisdiction the registration applies to. If null, it applies to every
          #   customer.
          #
          #   @return [String, nil]
          optional :applies_to, String, nil?: true

          # @!method initialize(code:, value:, applies_to: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Account::BillingEntityCreateParams::TaxRegistration} for more
          #   details.
          #
          #   @param code [String] The tax registration type, for example `DE VAT`.
          #
          #   @param value [String] The registration number.
          #
          #   @param applies_to [String, nil] The jurisdiction the registration applies to. If null, it applies to every custo
        end
      end
    end
  end
end
