# typed: strong

module Orb
  module Resources
    class Customers
      sig { returns(Orb::Resources::Customers::Costs) }
      def costs
      end

      sig { returns(Orb::Resources::Customers::Credits) }
      def credits
      end

      sig { returns(Orb::Resources::Customers::BalanceTransactions) }
      def balance_transactions
      end

      sig do
        params(
          email: String,
          name: String,
          accounting_sync_configuration: T.nilable(Orb::Models::CustomerCreateParams::AccountingSyncConfiguration),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(Orb::Models::CustomerCreateParams::BillingAddress),
          currency: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(Orb::Models::CustomerCreateParams::ReportingConfiguration),
          shipping_address: T.nilable(Orb::Models::CustomerCreateParams::ShippingAddress),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerCreateParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerCreateParams::TaxConfiguration::NewTaxJarConfiguration
            )
          ),
          tax_id: T.nilable(Orb::Models::CustomerCreateParams::TaxID),
          timezone: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Customer)
      end
      def create(
        email:,
        name:,
        accounting_sync_configuration: nil,
        additional_emails: nil,
        auto_collection: nil,
        billing_address: nil,
        currency: nil,
        email_delivery: nil,
        external_customer_id: nil,
        metadata: nil,
        payment_provider: nil,
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        tax_id: nil,
        timezone: nil,
        request_options: {}
      )
      end

      sig do
        params(
          customer_id: String,
          accounting_sync_configuration: T.nilable(Orb::Models::CustomerUpdateParams::AccountingSyncConfiguration),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(Orb::Models::CustomerUpdateParams::BillingAddress),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(Orb::Models::CustomerUpdateParams::ReportingConfiguration),
          shipping_address: T.nilable(Orb::Models::CustomerUpdateParams::ShippingAddress),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerUpdateParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateParams::TaxConfiguration::NewTaxJarConfiguration
            )
          ),
          tax_id: T.nilable(Orb::Models::CustomerUpdateParams::TaxID),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Customer)
      end
      def update(
        customer_id,
        accounting_sync_configuration: nil,
        additional_emails: nil,
        auto_collection: nil,
        billing_address: nil,
        currency: nil,
        email: nil,
        email_delivery: nil,
        external_customer_id: nil,
        metadata: nil,
        name: nil,
        payment_provider: nil,
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Page[Orb::Models::Customer])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        params(
          customer_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def delete(customer_id, request_options: {})
      end

      sig do
        params(
          customer_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Customer)
      end
      def fetch(customer_id, request_options: {})
      end

      sig do
        params(
          external_customer_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Customer)
      end
      def fetch_by_external_id(external_customer_id, request_options: {})
      end

      sig do
        params(
          external_customer_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def sync_payment_methods_from_gateway(external_customer_id, request_options: {})
      end

      sig do
        params(
          customer_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).void
      end
      def sync_payment_methods_from_gateway_by_external_customer_id(customer_id, request_options: {})
      end

      sig do
        params(
          id: String,
          accounting_sync_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration),
          shipping_address: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration
            )
          ),
          tax_id: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::TaxID),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Customer)
      end
      def update_by_external_id(
        id,
        accounting_sync_configuration: nil,
        additional_emails: nil,
        auto_collection: nil,
        billing_address: nil,
        currency: nil,
        email: nil,
        email_delivery: nil,
        external_customer_id: nil,
        metadata: nil,
        name: nil,
        payment_provider: nil,
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
