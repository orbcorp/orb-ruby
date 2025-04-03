# frozen_string_literal: true

module Orb
  module Resources
    class Customers
      # @return [Orb::Resources::Customers::Costs]
      attr_reader :costs

      # @return [Orb::Resources::Customers::Credits]
      attr_reader :credits

      # @return [Orb::Resources::Customers::BalanceTransactions]
      attr_reader :balance_transactions

      # This operation is used to create an Orb customer, who is party to the core
      #   billing relationship. See [Customer](/core-concepts##customer) for an overview
      #   of the customer resource.
      #
      #   This endpoint is critical in the following Orb functionality:
      #
      #   - Automated charges can be configured by setting `payment_provider` and
      #     `payment_provider_id` to automatically issue invoices
      #   - [Customer ID Aliases](/events-and-metrics/customer-aliases) can be configured
      #     by setting `external_customer_id`
      #   - [Timezone localization](/essentials/timezones) can be configured on a
      #     per-customer basis by setting the `timezone` parameter
      #
      # @overload create(email:, name:, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, timezone: nil, request_options: {})
      #
      # @param email [String]
      # @param name [String]
      # @param accounting_sync_configuration [Orb::Models::CustomerCreateParams::AccountingSyncConfiguration, nil]
      # @param additional_emails [Array<String>, nil]
      # @param auto_collection [Boolean, nil]
      # @param billing_address [Orb::Models::CustomerCreateParams::BillingAddress, nil]
      # @param currency [String, nil]
      # @param email_delivery [Boolean, nil]
      # @param external_customer_id [String, nil]
      # @param hierarchy [Orb::Models::CustomerCreateParams::Hierarchy, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param payment_provider [Symbol, Orb::Models::CustomerCreateParams::PaymentProvider, nil]
      # @param payment_provider_id [String, nil]
      # @param reporting_configuration [Orb::Models::CustomerCreateParams::ReportingConfiguration, nil]
      # @param shipping_address [Orb::Models::CustomerCreateParams::ShippingAddress, nil]
      # @param tax_configuration [Orb::Models::CustomerCreateParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerCreateParams::TaxConfiguration::NewTaxJarConfiguration, nil]
      # @param tax_id [Orb::Models::CustomerCreateParams::TaxID, nil]
      # @param timezone [String, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerCreateParams
      def create(params)
        parsed, options = Orb::Models::CustomerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customers",
          body: parsed,
          model: Orb::Models::Customer,
          options: options
        )
      end

      # This endpoint can be used to update the `payment_provider`,
      #   `payment_provider_id`, `name`, `email`, `email_delivery`, `tax_id`,
      #   `auto_collection`, `metadata`, `shipping_address`, `billing_address`, and
      #   `additional_emails` of an existing customer. Other fields on a customer are
      #   currently immutable.
      #
      # @overload update(customer_id, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, request_options: {})
      #
      # @param customer_id [String]
      # @param accounting_sync_configuration [Orb::Models::CustomerUpdateParams::AccountingSyncConfiguration, nil]
      # @param additional_emails [Array<String>, nil]
      # @param auto_collection [Boolean, nil]
      # @param billing_address [Orb::Models::CustomerUpdateParams::BillingAddress, nil]
      # @param currency [String, nil]
      # @param email [String, nil]
      # @param email_delivery [Boolean, nil]
      # @param external_customer_id [String, nil]
      # @param hierarchy [Orb::Models::CustomerUpdateParams::Hierarchy, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param name [String, nil]
      # @param payment_provider [Symbol, Orb::Models::CustomerUpdateParams::PaymentProvider, nil]
      # @param payment_provider_id [String, nil]
      # @param reporting_configuration [Orb::Models::CustomerUpdateParams::ReportingConfiguration, nil]
      # @param shipping_address [Orb::Models::CustomerUpdateParams::ShippingAddress, nil]
      # @param tax_configuration [Orb::Models::CustomerUpdateParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateParams::TaxConfiguration::NewTaxJarConfiguration, nil]
      # @param tax_id [Orb::Models::CustomerUpdateParams::TaxID, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerUpdateParams
      def update(customer_id, params = {})
        parsed, options = Orb::Models::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["customers/%1$s", customer_id],
          body: parsed,
          model: Orb::Models::Customer,
          options: options
        )
      end

      # This endpoint returns a list of all customers for an account. The list of
      #   customers is ordered starting from the most recently created customer. This
      #   endpoint follows Orb's
      #   [standardized pagination format](/api-reference/pagination).
      #
      #   See [Customer](/core-concepts##customer) for an overview of the customer model.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      # @param created_at_gte [Time, nil]
      # @param created_at_lt [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param cursor [String, nil]
      # @param limit [Integer]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Customer>]
      #
      # @see Orb::Models::CustomerListParams
      def list(params = {})
        parsed, options = Orb::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Models::Customer,
          options: options
        )
      end

      # This performs a deletion of this customer, its subscriptions, and its invoices,
      #   provided the customer does not have any issued invoices. Customers with issued
      #   invoices cannot be deleted. This operation is irreversible. Note that this is a
      #   _soft_ deletion, but the data will be inaccessible through the API and Orb
      #   dashboard.
      #
      #   For a hard-deletion, please reach out to the Orb team directly.
      #
      #   **Note**: This operation happens asynchronously and can be expected to take a
      #   few minutes to propagate to related resources. However, querying for the
      #   customer on subsequent GET requests while deletion is in process will reflect
      #   its deletion with a `deleted: true` property. Once the customer deletion has
      #   been fully processed, the customer will not be returned in the API.
      #
      #   On successful processing, this returns an empty dictionary (`{}`) in the API.
      #
      # @overload delete(customer_id, request_options: {})
      #
      # @param customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::CustomerDeleteParams
      def delete(customer_id, params = {})
        @client.request(
          method: :delete,
          path: ["customers/%1$s", customer_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to fetch customer details given an identifier. If the
      #   `Customer` is in the process of being deleted, only the properties `id` and
      #   `deleted: true` will be returned.
      #
      #   See the [Customer resource](/core-concepts#customer) for a full discussion of
      #   the Customer model.
      #
      # @overload fetch(customer_id, request_options: {})
      #
      # @param customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerFetchParams
      def fetch(customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/%1$s", customer_id],
          model: Orb::Models::Customer,
          options: params[:request_options]
        )
      end

      # This endpoint is used to fetch customer details given an `external_customer_id`
      #   (see [Customer ID Aliases](/events-and-metrics/customer-aliases)).
      #
      #   Note that the resource and semantics of this endpoint exactly mirror
      #   [Get Customer](fetch-customer).
      #
      # @overload fetch_by_external_id(external_customer_id, request_options: {})
      #
      # @param external_customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerFetchByExternalIDParams
      def fetch_by_external_id(external_customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/external_customer_id/%1$s", external_customer_id],
          model: Orb::Models::Customer,
          options: params[:request_options]
        )
      end

      # Sync Orb's payment methods for the customer with their gateway.
      #
      #   This method can be called before taking an action that may cause the customer to
      #   be charged, ensuring that the most up-to-date payment method is charged.
      #
      #   **Note**: This functionality is currently only available for Stripe.
      #
      # @overload sync_payment_methods_from_gateway(external_customer_id, request_options: {})
      #
      # @param external_customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::CustomerSyncPaymentMethodsFromGatewayParams
      def sync_payment_methods_from_gateway(external_customer_id, params = {})
        @client.request(
          method: :post,
          path: [
            "customers/external_customer_id/%1$s/sync_payment_methods_from_gateway",
            external_customer_id
          ],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Sync Orb's payment methods for the customer with their gateway.
      #
      #   This method can be called before taking an action that may cause the customer to
      #   be charged, ensuring that the most up-to-date payment method is charged.
      #
      #   **Note**: This functionality is currently only available for Stripe.
      #
      # @overload sync_payment_methods_from_gateway_by_external_customer_id(customer_id, request_options: {})
      #
      # @param customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams
      def sync_payment_methods_from_gateway_by_external_customer_id(customer_id, params = {})
        @client.request(
          method: :post,
          path: ["customers/%1$s/sync_payment_methods_from_gateway", customer_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to update customer details given an `external_customer_id`
      #   (see [Customer ID Aliases](/events-and-metrics/customer-aliases)). Note that the
      #   resource and semantics of this endpoint exactly mirror
      #   [Update Customer](update-customer).
      #
      # @overload update_by_external_id(id, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, request_options: {})
      #
      # @param id [String]
      # @param accounting_sync_configuration [Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration, nil]
      # @param additional_emails [Array<String>, nil]
      # @param auto_collection [Boolean, nil]
      # @param billing_address [Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress, nil]
      # @param currency [String, nil]
      # @param email [String, nil]
      # @param email_delivery [Boolean, nil]
      # @param external_customer_id [String, nil]
      # @param hierarchy [Orb::Models::CustomerUpdateByExternalIDParams::Hierarchy, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param name [String, nil]
      # @param payment_provider [Symbol, Orb::Models::CustomerUpdateByExternalIDParams::PaymentProvider, nil]
      # @param payment_provider_id [String, nil]
      # @param reporting_configuration [Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration, nil]
      # @param shipping_address [Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress, nil]
      # @param tax_configuration [Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration, nil]
      # @param tax_id [Orb::Models::CustomerUpdateByExternalIDParams::TaxID, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerUpdateByExternalIDParams
      def update_by_external_id(id, params = {})
        parsed, options = Orb::Models::CustomerUpdateByExternalIDParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["customers/external_customer_id/%1$s", id],
          body: parsed,
          model: Orb::Models::Customer,
          options: options
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @costs = Orb::Resources::Customers::Costs.new(client: client)
        @credits = Orb::Resources::Customers::Credits.new(client: client)
        @balance_transactions = Orb::Resources::Customers::BalanceTransactions.new(client: client)
      end
    end
  end
end
