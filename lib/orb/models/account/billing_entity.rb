# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::BillingEntities#create
      class BillingEntity < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The Orb-assigned unique identifier for the billing entity.
        #
        #   @return [String]
        required :id, String

        # @!attribute address
        #   The address printed on invoices.
        #
        #   @return [Orb::Models::Address, nil]
        required :address, -> { Orb::Address }, nil?: true

        # @!attribute created_at
        #   The time the billing entity was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute default_payment_gateway_connection_id
        #   The ID of the connection Orb charges when the customer is not mapped to any of
        #   the billing entity's connections.
        #
        #   @return [String, nil]
        required :default_payment_gateway_connection_id, String, nil?: true

        # @!attribute external_billing_entity_id
        #   An optional user-defined ID for this billing entity, unique within the account.
        #   This cannot be changed after creation.
        #
        #   @return [String, nil]
        required :external_billing_entity_id, String, nil?: true

        # @!attribute invoice_settings
        #   The billing entity's own invoice settings. Each null field inherits the
        #   account's setting.
        #
        #   @return [Orb::Models::Account::BillingEntity::InvoiceSettings]
        required :invoice_settings, -> { Orb::Account::BillingEntity::InvoiceSettings }

        # @!attribute is_default
        #   Whether this is the account's default billing entity.
        #
        #   @return [Boolean]
        required :is_default, Orb::Internal::Type::Boolean

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

        # @!attribute payment_gateway_connections
        #   The payment gateway connections the billing entity collects payments through.
        #
        #   @return [Array<Orb::Models::Account::BillingEntity::PaymentGatewayConnection>]
        required :payment_gateway_connections,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection] }

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::Account::BillingEntity::Status]
        required :status, enum: -> { Orb::Account::BillingEntity::Status }

        # @!attribute tax_registrations
        #
        #   @return [Array<Orb::Models::Account::BillingEntity::TaxRegistration>]
        required :tax_registrations,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration] }

        # @!method initialize(id:, address:, created_at:, default_payment_gateway_connection_id:, external_billing_entity_id:, invoice_settings:, is_default:, legal_name:, name:, payment_gateway_connections:, status:, tax_registrations:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Account::BillingEntity} for more details.
        #
        #   A billing entity is a legal entity an account invoices from, with its own legal
        #   name, address and tax registrations.
        #
        #   @param id [String] The Orb-assigned unique identifier for the billing entity.
        #
        #   @param address [Orb::Models::Address, nil] The address printed on invoices.
        #
        #   @param created_at [Time] The time the billing entity was created.
        #
        #   @param default_payment_gateway_connection_id [String, nil] The ID of the connection Orb charges when the customer is not mapped to any of t
        #
        #   @param external_billing_entity_id [String, nil] An optional user-defined ID for this billing entity, unique within the account.
        #
        #   @param invoice_settings [Orb::Models::Account::BillingEntity::InvoiceSettings] The billing entity's own invoice settings. Each null field inherits the account'
        #
        #   @param is_default [Boolean] Whether this is the account's default billing entity.
        #
        #   @param legal_name [String] The legal name printed on invoices.
        #
        #   @param name [String] An internal name for the billing entity.
        #
        #   @param payment_gateway_connections [Array<Orb::Models::Account::BillingEntity::PaymentGatewayConnection>] The payment gateway connections the billing entity collects payments through.
        #
        #   @param status [Symbol, Orb::Models::Account::BillingEntity::Status]
        #
        #   @param tax_registrations [Array<Orb::Models::Account::BillingEntity::TaxRegistration>]

        # @see Orb::Models::Account::BillingEntity#invoice_settings
        class InvoiceSettings < Orb::Internal::Type::BaseModel
          # @!attribute auto_collection
          #   Whether Orb charges the customer's payment method automatically.
          #
          #   @return [Boolean, nil]
          required :auto_collection, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute automatic_tax_enabled
          #   Whether Orb calculates tax through the tax provider.
          #
          #   @return [Boolean, nil]
          required :automatic_tax_enabled, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute email_delivery
          #   Whether Orb emails invoices to customers.
          #
          #   @return [Boolean, nil]
          required :email_delivery, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute manual_issuance
          #   Whether invoices stay in draft until issued by hand.
          #
          #   @return [Boolean, nil]
          required :manual_issuance, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute memo
          #   The memo printed on the entity's invoices.
          #
          #   @return [String, nil]
          required :memo, String, nil?: true

          # @!attribute net_terms
          #   The number of days until payment is due, counting the start date as day 1, so
          #   net 30 from October 1 is due October 30. The account's
          #   [due date calculation method](/invoicing/payments#configuring-net-terms-and-collection-behavior)
          #   sets whether the start date is the invoice date or the issuance date.
          #
          #   @return [Integer, nil]
          required :net_terms, Integer, nil?: true

          # @!method initialize(auto_collection:, automatic_tax_enabled:, email_delivery:, manual_issuance:, memo:, net_terms:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Account::BillingEntity::InvoiceSettings} for more details.
          #
          #   The billing entity's own invoice settings. Each null field inherits the
          #   account's setting.
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
          # @!attribute is_default
          #   Whether this is the billing entity's default payment gateway connection.
          #
          #   @return [Boolean]
          required :is_default, Orb::Internal::Type::Boolean

          # @!attribute payment_gateway_connection_id
          #   The ID of the billing entity's payment gateway connection.
          #
          #   @return [String]
          required :payment_gateway_connection_id, String

          # @!attribute payment_provider_type
          #   The connection's payment provider.
          #
          #   @return [Symbol, Orb::Models::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType]
          required :payment_provider_type,
                   enum: -> { Orb::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType }

          # @!method initialize(is_default:, payment_gateway_connection_id:, payment_provider_type:)
          #   @param is_default [Boolean] Whether this is the billing entity's default payment gateway connection.
          #
          #   @param payment_gateway_connection_id [String] The ID of the billing entity's payment gateway connection.
          #
          #   @param payment_provider_type [Symbol, Orb::Models::Account::BillingEntity::PaymentGatewayConnection::PaymentProviderType] The connection's payment provider.

          # The connection's payment provider.
          #
          # @see Orb::Models::Account::BillingEntity::PaymentGatewayConnection#payment_provider_type
          module PaymentProviderType
            extend Orb::Internal::Type::Enum

            STRIPE = :stripe
            ADYEN = :adyen

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Account::BillingEntity#status
        module Status
          extend Orb::Internal::Type::Enum

          ACTIVE = :active
          ARCHIVED = :archived

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class TaxRegistration < Orb::Internal::Type::BaseModel
          # @!attribute applies_to
          #   The jurisdiction the registration applies to. If null, it applies to every
          #   customer.
          #
          #   @return [String, nil]
          required :applies_to, String, nil?: true

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

          # @!method initialize(applies_to:, code:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Account::BillingEntity::TaxRegistration} for more details.
          #
          #   @param applies_to [String, nil] The jurisdiction the registration applies to. If null, it applies to every custo
          #
          #   @param code [String] The tax registration type, for example `DE VAT`.
          #
          #   @param value [String] The registration number.
        end
      end
    end
  end
end
