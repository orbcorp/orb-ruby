# typed: strong

module Orb
  module Resources
    class Customers
      sig { returns(Orb::Resources::Customers::Costs) }
      attr_reader :costs

      sig { returns(Orb::Resources::Customers::Credits) }
      attr_reader :credits

      sig { returns(Orb::Resources::Customers::BalanceTransactions) }
      attr_reader :balance_transactions

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
          tax_configuration: T.nilable(Orb::Models::CustomerCreateParams::TaxConfiguration::Variants),
          tax_id: T.nilable(Orb::Models::CustomerCreateParams::TaxID),
          timezone: T.nilable(String),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Customer)
      end
      def create(
        email:,
        name:,
        accounting_sync_configuration:,
        additional_emails:,
        auto_collection:,
        billing_address:,
        currency:,
        email_delivery:,
        external_customer_id:,
        metadata:,
        payment_provider:,
        payment_provider_id:,
        reporting_configuration:,
        shipping_address:,
        tax_configuration:,
        tax_id:,
        timezone:,
        request_options: {}
      ); end

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
          tax_configuration: T.nilable(Orb::Models::CustomerUpdateParams::TaxConfiguration::Variants),
          tax_id: T.nilable(Orb::Models::CustomerUpdateParams::TaxID),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Customer)
      end
      def update(
        customer_id,
        accounting_sync_configuration:,
        additional_emails:,
        auto_collection:,
        billing_address:,
        currency:,
        email:,
        email_delivery:,
        external_customer_id:,
        metadata:,
        name:,
        payment_provider:,
        payment_provider_id:,
        reporting_configuration:,
        shipping_address:,
        tax_configuration:,
        tax_id:,
        request_options: {}
      ); end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOpts
        ).returns(Orb::Page[Orb::Models::Customer])
      end
      def list(
        created_at_gt:,
        created_at_gte:,
        created_at_lt:,
        created_at_lte:,
        cursor:,
        limit:,
        request_options: {}
      )
      end

      sig { params(customer_id: String, request_options: Orb::RequestOpts).void }
      def delete(customer_id, request_options: {}); end

      sig { params(customer_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Customer) }
      def fetch(customer_id, request_options: {}); end

      sig do
        params(external_customer_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Customer)
      end
      def fetch_by_external_id(external_customer_id, request_options: {}); end

      sig { params(external_customer_id: String, request_options: Orb::RequestOpts).void }
      def sync_payment_methods_from_gateway(external_customer_id, request_options: {}); end

      sig { params(customer_id: String, request_options: Orb::RequestOpts).void }
      def sync_payment_methods_from_gateway_by_external_customer_id(customer_id, request_options: {}); end

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
          tax_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::Variants),
          tax_id: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::TaxID),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Customer)
      end
      def update_by_external_id(
        id,
        accounting_sync_configuration:,
        additional_emails:,
        auto_collection:,
        billing_address:,
        currency:,
        email:,
        email_delivery:,
        external_customer_id:,
        metadata:,
        name:,
        payment_provider:,
        payment_provider_id:,
        reporting_configuration:,
        shipping_address:,
        tax_configuration:,
        tax_id:,
        request_options: {}
      ); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
