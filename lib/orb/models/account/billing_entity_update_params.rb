# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::BillingEntities#update
      class BillingEntityUpdateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute billing_entity_id
        #
        #   @return [String]
        required :billing_entity_id, String

        # @!attribute address
        #   Replaces the whole address. Omit it to keep the current one.
        #
        #   @return [Orb::Models::AddressInput, nil]
        optional :address, -> { Orb::AddressInput }, nil?: true

        # @!attribute default_payment_gateway_connection_id
        #   The ID of the connection Orb charges when the customer is not mapped to any of
        #   the billing entity's connections. Required when `payment_gateway_connections`
        #   has more than one entry.
        #
        #   @return [String, nil]
        optional :default_payment_gateway_connection_id, String, nil?: true

        # @!attribute invoice_settings
        #   The invoice settings to change. Omitted fields keep their value; null clears a
        #   field so it inherits the account's setting.
        #
        #   @return [Orb::Models::Account::BillingEntityUpdateParams::InvoiceSettings, nil]
        optional :invoice_settings,
                 -> {
                   Orb::Account::BillingEntityUpdateParams::InvoiceSettings
                 },
                 nil?: true

        # @!attribute legal_name
        #   The legal name printed on invoices.
        #
        #   @return [String, nil]
        optional :legal_name, String, nil?: true

        # @!attribute name
        #   An internal name for the billing entity.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute payment_gateway_connections
        #   The full set of payment gateway connections the billing entity collects payments
        #   through. Omit it to keep the current ones. Naming another billing entity's
        #   connection gives this billing entity a connection of its own through the same
        #   Stripe account or Adyen merchant account.
        #
        #   @return [Array<Orb::Models::Account::BillingEntityUpdateParams::PaymentGatewayConnection>, nil]
        optional :payment_gateway_connections,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection]
                 },
                 nil?: true

        # @!attribute tax_registrations
        #   The full list of registrations. Omit it to keep the current ones.
        #
        #   @return [Array<Orb::Models::Account::BillingEntityUpdateParams::TaxRegistration>, nil]
        optional :tax_registrations,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntityUpdateParams::TaxRegistration]
                 },
                 nil?: true

        # @!method initialize(billing_entity_id:, address: nil, default_payment_gateway_connection_id: nil, invoice_settings: nil, legal_name: nil, name: nil, payment_gateway_connections: nil, tax_registrations: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Account::BillingEntityUpdateParams} for more details.
        #
        #   @param billing_entity_id [String]
        #
        #   @param address [Orb::Models::AddressInput, nil] Replaces the whole address. Omit it to keep the current one.
        #
        #   @param default_payment_gateway_connection_id [String, nil] The ID of the connection Orb charges when the customer is not mapped to any of t
        #
        #   @param invoice_settings [Orb::Models::Account::BillingEntityUpdateParams::InvoiceSettings, nil] The invoice settings to change. Omitted fields keep their value; null clears a f
        #
        #   @param legal_name [String, nil] The legal name printed on invoices.
        #
        #   @param name [String, nil] An internal name for the billing entity.
        #
        #   @param payment_gateway_connections [Array<Orb::Models::Account::BillingEntityUpdateParams::PaymentGatewayConnection>, nil] The full set of payment gateway connections the billing entity collects payments
        #
        #   @param tax_registrations [Array<Orb::Models::Account::BillingEntityUpdateParams::TaxRegistration>, nil] The full list of registrations. Omit it to keep the current ones.
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
          #   {Orb::Models::Account::BillingEntityUpdateParams::InvoiceSettings} for more
          #   details.
          #
          #   The invoice settings to change. Omitted fields keep their value; null clears a
          #   field so it inherits the account's setting.
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

        class PaymentGatewayConnection < Orb::Internal::Type::BaseModel
          # @!attribute payment_gateway_connection_id
          #   The ID of a payment gateway connection of the account.
          #
          #   @return [String]
          required :payment_gateway_connection_id, String

          # @!attribute payment_provider_type
          #   The connection's payment provider.
          #
          #   @return [Symbol, Orb::Models::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType]
          required :payment_provider_type,
                   enum: -> { Orb::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType }

          # @!method initialize(payment_gateway_connection_id:, payment_provider_type:)
          #   @param payment_gateway_connection_id [String] The ID of a payment gateway connection of the account.
          #
          #   @param payment_provider_type [Symbol, Orb::Models::Account::BillingEntityUpdateParams::PaymentGatewayConnection::PaymentProviderType] The connection's payment provider.

          # The connection's payment provider.
          #
          # @see Orb::Models::Account::BillingEntityUpdateParams::PaymentGatewayConnection#payment_provider_type
          module PaymentProviderType
            extend Orb::Internal::Type::Enum

            STRIPE = :stripe
            ADYEN = :adyen

            # @!method self.values
            #   @return [Array<Symbol>]
          end
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
          #   {Orb::Models::Account::BillingEntityUpdateParams::TaxRegistration} for more
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
