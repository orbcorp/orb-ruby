require "orb/model"
require "orb/models/customer"
require "orb/pagination"
require "orb/resources/customers/balance_transactions"
require "orb/resources/customers/costs"
require "orb/resources/customers/credits/credits"
require "orb/resources/customers/usage"
module Orb
  module Resources
    class CustomerPage < Page
      required :data, Orb::ArrayOf.new(Orb::Models::Customer)
    end

    class CustomersResource
      attr_reader :costs, :usage, :credits, :balance_transactions
      def initialize(client:)
        @client = client
        @costs = Orb::Resources::Customers::CostsResource.new(client: client)
        @usage = Orb::Resources::Customers::UsageResource.new(client: client)
        @credits =
          Orb::Resources::Customers::CreditsResource.new(client: client)
        @balance_transactions =
          Orb::Resources::Customers::BalanceTransactionsResource.new(
            client: client
          )
      end
      def create(
        email: Orb::NotGiven.instance,
        name: Orb::NotGiven.instance,
        accounting_sync_configuration: Orb::NotGiven.instance,
        additional_emails: Orb::NotGiven.instance,
        auto_collection: Orb::NotGiven.instance,
        billing_address: Orb::NotGiven.instance,
        currency: Orb::NotGiven.instance,
        email_delivery: Orb::NotGiven.instance,
        external_customer_id: Orb::NotGiven.instance,
        metadata: Orb::NotGiven.instance,
        payment_provider: Orb::NotGiven.instance,
        payment_provider_id: Orb::NotGiven.instance,
        reporting_configuration: Orb::NotGiven.instance,
        shipping_address: Orb::NotGiven.instance,
        tax_id: Orb::NotGiven.instance,
        timezone: Orb::NotGiven.instance
      )
        request = {
          method: :post,
          path: "/customers",
          body: {
            email: email,
            name: name,
            accounting_sync_configuration: accounting_sync_configuration,
            additional_emails: additional_emails,
            auto_collection: auto_collection,
            billing_address: billing_address,
            currency: currency,
            email_delivery: email_delivery,
            external_customer_id: external_customer_id,
            metadata: metadata,
            payment_provider: payment_provider,
            payment_provider_id: payment_provider_id,
            reporting_configuration: reporting_configuration,
            shipping_address: shipping_address,
            tax_id: tax_id,
            timezone: timezone
          },
          query: nil
        }

        @client.request(model: Orb::Models::Customer, **request)
      end
      def update(
        customer_id,
        accounting_sync_configuration: Orb::NotGiven.instance,
        additional_emails: Orb::NotGiven.instance,
        auto_collection: Orb::NotGiven.instance,
        billing_address: Orb::NotGiven.instance,
        currency: Orb::NotGiven.instance,
        email: Orb::NotGiven.instance,
        email_delivery: Orb::NotGiven.instance,
        metadata: Orb::NotGiven.instance,
        name: Orb::NotGiven.instance,
        payment_provider: Orb::NotGiven.instance,
        payment_provider_id: Orb::NotGiven.instance,
        reporting_configuration: Orb::NotGiven.instance,
        shipping_address: Orb::NotGiven.instance,
        tax_id: Orb::NotGiven.instance
      )
        request = {
          method: :put,
          path: "/customers/#{customer_id}",
          body: {
            accounting_sync_configuration: accounting_sync_configuration,
            additional_emails: additional_emails,
            auto_collection: auto_collection,
            billing_address: billing_address,
            currency: currency,
            email: email,
            email_delivery: email_delivery,
            metadata: metadata,
            name: name,
            payment_provider: payment_provider,
            payment_provider_id: payment_provider_id,
            reporting_configuration: reporting_configuration,
            shipping_address: shipping_address,
            tax_id: tax_id
          },
          query: nil
        }

        @client.request(model: Orb::Models::Customer, **request)
      end
      def list(
        created_at_gt: Orb::NotGiven.instance,
        created_at_gte: Orb::NotGiven.instance,
        created_at_lt: Orb::NotGiven.instance,
        created_at_lte: Orb::NotGiven.instance,
        cursor: Orb::NotGiven.instance,
        limit: Orb::NotGiven.instance
      )
        request = {
          method: :get,
          path: "/customers",
          query: {
            "created_at[gt]": created_at_gt,
            "created_at[gte]": created_at_gte,
            "created_at[lt]": created_at_lt,
            "created_at[lte]": created_at_lte,
            cursor: cursor,
            limit: limit
          }
        }

        @client.request(page: CustomerPage, **request)
      end
      def delete(customer_id)
        request = {
          method: :delete,
          path: "/customers/#{customer_id}",
          query: nil
        }

        @client.request(model: NilClass, **request)
      end
      def fetch(customer_id)
        request = {
          method: :get,
          path: "/customers/#{customer_id}",
          query: nil
        }

        @client.request(model: Orb::Models::Customer, **request)
      end
      def fetch_by_external_id(external_customer_id)
        request = {
          method: :get,
          path: "/customers/external_customer_id/#{external_customer_id}",
          query: nil
        }

        @client.request(model: Orb::Models::Customer, **request)
      end
      def update_by_external_id(
        id,
        accounting_sync_configuration: Orb::NotGiven.instance,
        additional_emails: Orb::NotGiven.instance,
        auto_collection: Orb::NotGiven.instance,
        billing_address: Orb::NotGiven.instance,
        currency: Orb::NotGiven.instance,
        email: Orb::NotGiven.instance,
        email_delivery: Orb::NotGiven.instance,
        metadata: Orb::NotGiven.instance,
        name: Orb::NotGiven.instance,
        payment_provider: Orb::NotGiven.instance,
        payment_provider_id: Orb::NotGiven.instance,
        reporting_configuration: Orb::NotGiven.instance,
        shipping_address: Orb::NotGiven.instance,
        tax_id: Orb::NotGiven.instance
      )
        request = {
          method: :put,
          path: "/customers/external_customer_id/#{id}",
          body: {
            accounting_sync_configuration: accounting_sync_configuration,
            additional_emails: additional_emails,
            auto_collection: auto_collection,
            billing_address: billing_address,
            currency: currency,
            email: email,
            email_delivery: email_delivery,
            metadata: metadata,
            name: name,
            payment_provider: payment_provider,
            payment_provider_id: payment_provider_id,
            reporting_configuration: reporting_configuration,
            shipping_address: shipping_address,
            tax_id: tax_id
          },
          query: nil
        }

        @client.request(model: Orb::Models::Customer, **request)
      end
    end
  end
end
