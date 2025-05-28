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

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CustomerCreateParams} for more details.
      #
      # This operation is used to create an Orb customer, who is party to the core
      # billing relationship. See [Customer](/core-concepts##customer) for an overview
      # of the customer resource.
      #
      # This endpoint is critical in the following Orb functionality:
      #
      # - Automated charges can be configured by setting `payment_provider` and
      #   `payment_provider_id` to automatically issue invoices
      # - [Customer ID Aliases](/events-and-metrics/customer-aliases) can be configured
      #   by setting `external_customer_id`
      # - [Timezone localization](/essentials/timezones) can be configured on a
      #   per-customer basis by setting the `timezone` parameter
      #
      # @overload create(email:, name:, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, timezone: nil, request_options: {})
      #
      # @param email [String] A valid customer email, to be used for notifications. When Orb triggers payment
      #
      # @param name [String] The full name of the customer
      #
      # @param accounting_sync_configuration [Orb::Models::CustomerCreateParams::AccountingSyncConfiguration, nil]
      #
      # @param additional_emails [Array<String>, nil] Additional email addresses for this customer. If populated, these email addresse
      #
      # @param auto_collection [Boolean, nil] Used to determine if invoices for this customer will automatically attempt to ch
      #
      # @param billing_address [Orb::Models::CustomerCreateParams::BillingAddress, nil]
      #
      # @param currency [String, nil] An ISO 4217 currency string used for the customer's invoices and balance. If not
      #
      # @param email_delivery [Boolean, nil]
      #
      # @param external_customer_id [String, nil] An optional user-defined ID for this customer resource, used throughout the syst
      #
      # @param hierarchy [Orb::Models::CustomerCreateParams::Hierarchy, nil] The hierarchical relationships for this customer.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param payment_provider [Symbol, Orb::Models::CustomerCreateParams::PaymentProvider, nil] This is used for creating charges or invoices in an external system via Orb. Whe
      #
      # @param payment_provider_id [String, nil] The ID of this customer in an external payments solution, such as Stripe. This i
      #
      # @param reporting_configuration [Orb::Models::CustomerCreateParams::ReportingConfiguration, nil]
      #
      # @param shipping_address [Orb::Models::CustomerCreateParams::ShippingAddress, nil]
      #
      # @param tax_configuration [Orb::Models::CustomerCreateParams::TaxConfiguration::Avalara, Orb::Models::CustomerCreateParams::TaxConfiguration::Taxjar, Orb::Models::CustomerCreateParams::TaxConfiguration::Sphere, nil]
      #
      # @param tax_id [Orb::Models::CustomerCreateParams::TaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      # @param timezone [String, nil] A timezone identifier from the IANA timezone database, such as `"America/Los_Ang
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerCreateParams
      def create(params)
        parsed, options = Orb::CustomerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customers",
          body: parsed,
          model: Orb::Customer,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CustomerUpdateParams} for more details.
      #
      # This endpoint can be used to update the `payment_provider`,
      # `payment_provider_id`, `name`, `email`, `email_delivery`, `tax_id`,
      # `auto_collection`, `metadata`, `shipping_address`, `billing_address`, and
      # `additional_emails` of an existing customer. Other fields on a customer are
      # currently immutable.
      #
      # @overload update(customer_id, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, request_options: {})
      #
      # @param customer_id [String]
      #
      # @param accounting_sync_configuration [Orb::Models::CustomerUpdateParams::AccountingSyncConfiguration, nil]
      #
      # @param additional_emails [Array<String>, nil] Additional email addresses for this customer. If populated, these email addresse
      #
      # @param auto_collection [Boolean, nil] Used to determine if invoices for this customer will automatically attempt to ch
      #
      # @param billing_address [Orb::Models::CustomerUpdateParams::BillingAddress, nil]
      #
      # @param currency [String, nil] An ISO 4217 currency string used for the customer's invoices and balance. If not
      #
      # @param email [String, nil] A valid customer email, to be used for invoicing and notifications.
      #
      # @param email_delivery [Boolean, nil]
      #
      # @param external_customer_id [String, nil] The external customer ID. This can only be set if empty and the customer has no
      #
      # @param hierarchy [Orb::Models::CustomerUpdateParams::Hierarchy, nil] The hierarchical relationships for this customer.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param name [String, nil] The full name of the customer
      #
      # @param payment_provider [Symbol, Orb::Models::CustomerUpdateParams::PaymentProvider, nil] This is used for creating charges or invoices in an external system via Orb. Whe
      #
      # @param payment_provider_id [String, nil] The ID of this customer in an external payments solution, such as Stripe. This i
      #
      # @param reporting_configuration [Orb::Models::CustomerUpdateParams::ReportingConfiguration, nil]
      #
      # @param shipping_address [Orb::Models::CustomerUpdateParams::ShippingAddress, nil]
      #
      # @param tax_configuration [Orb::Models::CustomerUpdateParams::TaxConfiguration::Avalara, Orb::Models::CustomerUpdateParams::TaxConfiguration::Taxjar, Orb::Models::CustomerUpdateParams::TaxConfiguration::Sphere, nil]
      #
      # @param tax_id [Orb::Models::CustomerUpdateParams::TaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerUpdateParams
      def update(customer_id, params = {})
        parsed, options = Orb::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["customers/%1$s", customer_id],
          body: parsed,
          model: Orb::Customer,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CustomerListParams} for more details.
      #
      # This endpoint returns a list of all customers for an account. The list of
      # customers is ordered starting from the most recently created customer. This
      # endpoint follows Orb's
      # [standardized pagination format](/api-reference/pagination).
      #
      # See [Customer](/core-concepts##customer) for an overview of the customer model.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      #
      # @param created_at_gte [Time, nil]
      #
      # @param created_at_lt [Time, nil]
      #
      # @param created_at_lte [Time, nil]
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Customer>]
      #
      # @see Orb::Models::CustomerListParams
      def list(params = {})
        parsed, options = Orb::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed.transform_keys(
            created_at_gt: "created_at[gt]",
            created_at_gte: "created_at[gte]",
            created_at_lt: "created_at[lt]",
            created_at_lte: "created_at[lte]"
          ),
          page: Orb::Internal::Page,
          model: Orb::Customer,
          options: options
        )
      end

      # This performs a deletion of this customer, its subscriptions, and its invoices,
      # provided the customer does not have any issued invoices. Customers with issued
      # invoices cannot be deleted. This operation is irreversible. Note that this is a
      # _soft_ deletion, but the data will be inaccessible through the API and Orb
      # dashboard.
      #
      # For a hard-deletion, please reach out to the Orb team directly.
      #
      # **Note**: This operation happens asynchronously and can be expected to take a
      # few minutes to propagate to related resources. However, querying for the
      # customer on subsequent GET requests while deletion is in process will reflect
      # its deletion.
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
      # `Customer` is in the process of being deleted, only the properties `id` and
      # `deleted: true` will be returned.
      #
      # See the [Customer resource](/core-concepts#customer) for a full discussion of
      # the Customer model.
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
          model: Orb::Customer,
          options: params[:request_options]
        )
      end

      # This endpoint is used to fetch customer details given an `external_customer_id`
      # (see [Customer ID Aliases](/events-and-metrics/customer-aliases)).
      #
      # Note that the resource and semantics of this endpoint exactly mirror
      # [Get Customer](fetch-customer).
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
          model: Orb::Customer,
          options: params[:request_options]
        )
      end

      # Sync Orb's payment methods for the customer with their gateway.
      #
      # This method can be called before taking an action that may cause the customer to
      # be charged, ensuring that the most up-to-date payment method is charged.
      #
      # **Note**: This functionality is currently only available for Stripe.
      #
      # @overload sync_payment_methods_from_gateway(customer_id, request_options: {})
      #
      # @param customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::CustomerSyncPaymentMethodsFromGatewayParams
      def sync_payment_methods_from_gateway(customer_id, params = {})
        @client.request(
          method: :post,
          path: ["customers/%1$s/sync_payment_methods_from_gateway", customer_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Sync Orb's payment methods for the customer with their gateway.
      #
      # This method can be called before taking an action that may cause the customer to
      # be charged, ensuring that the most up-to-date payment method is charged.
      #
      # **Note**: This functionality is currently only available for Stripe.
      #
      # @overload sync_payment_methods_from_gateway_by_external_customer_id(external_customer_id, request_options: {})
      #
      # @param external_customer_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams
      def sync_payment_methods_from_gateway_by_external_customer_id(external_customer_id, params = {})
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

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CustomerUpdateByExternalIDParams} for more details.
      #
      # This endpoint is used to update customer details given an `external_customer_id`
      # (see [Customer ID Aliases](/events-and-metrics/customer-aliases)). Note that the
      # resource and semantics of this endpoint exactly mirror
      # [Update Customer](update-customer).
      #
      # @overload update_by_external_id(id, accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param accounting_sync_configuration [Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration, nil]
      #
      # @param additional_emails [Array<String>, nil] Additional email addresses for this customer. If populated, these email addresse
      #
      # @param auto_collection [Boolean, nil] Used to determine if invoices for this customer will automatically attempt to ch
      #
      # @param billing_address [Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress, nil]
      #
      # @param currency [String, nil] An ISO 4217 currency string used for the customer's invoices and balance. If not
      #
      # @param email [String, nil] A valid customer email, to be used for invoicing and notifications.
      #
      # @param email_delivery [Boolean, nil]
      #
      # @param external_customer_id [String, nil] The external customer ID. This can only be set if empty and the customer has no
      #
      # @param hierarchy [Orb::Models::CustomerUpdateByExternalIDParams::Hierarchy, nil] The hierarchical relationships for this customer.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param name [String, nil] The full name of the customer
      #
      # @param payment_provider [Symbol, Orb::Models::CustomerUpdateByExternalIDParams::PaymentProvider, nil] This is used for creating charges or invoices in an external system via Orb. Whe
      #
      # @param payment_provider_id [String, nil] The ID of this customer in an external payments solution, such as Stripe. This i
      #
      # @param reporting_configuration [Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration, nil]
      #
      # @param shipping_address [Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress, nil]
      #
      # @param tax_configuration [Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::Sphere, nil]
      #
      # @param tax_id [Orb::Models::CustomerUpdateByExternalIDParams::TaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Customer]
      #
      # @see Orb::Models::CustomerUpdateByExternalIDParams
      def update_by_external_id(id, params = {})
        parsed, options = Orb::CustomerUpdateByExternalIDParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["customers/external_customer_id/%1$s", id],
          body: parsed,
          model: Orb::Customer,
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
