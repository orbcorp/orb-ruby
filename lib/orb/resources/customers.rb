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
      # @param params [Orb::Models::CustomerCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email A valid customer email, to be used for notifications. When Orb triggers payment
      #     through a payment gateway, this email will be used for any automatically issued
      #     receipts.
      #
      #   @option params [String] :name The full name of the customer
      #
      #   @option params [Orb::Models::CustomerCreateParams::AccountingSyncConfiguration, nil] :accounting_sync_configuration
      #
      #   @option params [Array<String>, nil] :additional_emails Additional email addresses for this customer. If populated, these email
      #     addresses will be CC'd for customer communications.
      #
      #   @option params [Boolean, nil] :auto_collection Used to determine if invoices for this customer will automatically attempt to
      #     charge a saved payment method, if available. This parameter defaults to `True`
      #     when a payment provider is provided on customer creation.
      #
      #   @option params [Orb::Models::CustomerCreateParams::BillingAddress, nil] :billing_address
      #
      #   @option params [String, nil] :currency An ISO 4217 currency string used for the customer's invoices and balance. If not
      #     set at creation time, will be set at subscription creation time.
      #
      #   @option params [Boolean, nil] :email_delivery
      #
      #   @option params [String, nil] :external_customer_id An optional user-defined ID for this customer resource, used throughout the
      #     system as an alias for this Customer. Use this field to identify a customer by
      #     an existing identifier in your system.
      #
      #   @option params [Orb::Models::CustomerCreateParams::Hierarchy, nil] :hierarchy The hierarchical relationships for this customer.
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Symbol, Orb::Models::CustomerCreateParams::PaymentProvider, nil] :payment_provider This is used for creating charges or invoices in an external system via Orb.
      #     When not in test mode, the connection must first be configured in the Orb
      #     webapp.
      #
      #   @option params [String, nil] :payment_provider_id The ID of this customer in an external payments solution, such as Stripe. This
      #     is used for creating charges or invoices in the external system via Orb.
      #
      #   @option params [Orb::Models::CustomerCreateParams::ReportingConfiguration, nil] :reporting_configuration
      #
      #   @option params [Orb::Models::CustomerCreateParams::ShippingAddress, nil] :shipping_address
      #
      #   @option params [Orb::Models::CustomerCreateParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerCreateParams::TaxConfiguration::NewTaxJarConfiguration, nil] :tax_configuration
      #
      #   @option params [Orb::Models::CustomerCreateParams::TaxID, nil] :tax_id Tax IDs are commonly required to be displayed on customer invoices, which are
      #     added to the headers of invoices.
      #
      #     ### Supported Tax ID Countries and Types
      #
      #     | Country              | Type         | Description                                                                                             |
      #     | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #     | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #     | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #     | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #     | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #     | Austria              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #     | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #     | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #     | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #     | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #     | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Canada               | `ca_bn`      | Canadian BN                                                                                             |
      #     | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #     | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #     | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #     | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #     | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #     | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
      #     | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
      #     | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
      #     | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #     | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
      #     | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
      #     | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #     | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #     | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #     | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #     | Finland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | France               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
      #     | Germany              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Greece               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
      #     | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #     | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
      #     | India                | `in_gst`     | Indian GST Number                                                                                       |
      #     | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #     | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Israel               | `il_vat`     | Israel VAT                                                                                              |
      #     | Italy                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #     | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #     | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #     | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #     | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #     | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #     | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
      #     | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
      #     | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
      #     | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
      #     | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
      #     | Malta                | `eu_vat `    | European VAT Number                                                                                     |
      #     | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #     | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
      #     | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
      #     | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #     | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
      #     | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #     | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
      #     | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #     | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
      #     | Poland               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #     | Russia               | `ru_inn`     | Russian INN                                                                                             |
      #     | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
      #     | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #     | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
      #     | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
      #     | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
      #     | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #     | South Africa         | `za_vat`     | South African VAT Number                                                                                |
      #     | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
      #     | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #     | Spain                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #     | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
      #     | Thailand             | `th_vat`     | Thai VAT                                                                                                |
      #     | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #     | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
      #     | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #     | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #     | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #     | United States        | `us_ein`     | United States EIN                                                                                       |
      #     | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #     | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #     | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      #
      #   @option params [String, nil] :timezone A timezone identifier from the IANA timezone database, such as
      #     `"America/Los_Angeles"`. This defaults to your account's timezone if not set.
      #     This cannot be changed after customer creation.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Customer]
      #
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
      # @param customer_id [String]
      #
      # @param params [Orb::Models::CustomerUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::Models::CustomerUpdateParams::AccountingSyncConfiguration, nil] :accounting_sync_configuration
      #
      #   @option params [Array<String>, nil] :additional_emails Additional email addresses for this customer. If populated, these email
      #     addresses will be CC'd for customer communications.
      #
      #   @option params [Boolean, nil] :auto_collection Used to determine if invoices for this customer will automatically attempt to
      #     charge a saved payment method, if available. This parameter defaults to `True`
      #     when a payment provider is provided on customer creation.
      #
      #   @option params [Orb::Models::CustomerUpdateParams::BillingAddress, nil] :billing_address
      #
      #   @option params [String, nil] :currency An ISO 4217 currency string used for the customer's invoices and balance. If not
      #     set at creation time, will be set at subscription creation time.
      #
      #   @option params [String, nil] :email A valid customer email, to be used for invoicing and notifications.
      #
      #   @option params [Boolean, nil] :email_delivery
      #
      #   @option params [String, nil] :external_customer_id The external customer ID. This can only be set if empty and the customer has no
      #     past or current subscriptions.
      #
      #   @option params [Orb::Models::CustomerUpdateParams::Hierarchy, nil] :hierarchy The hierarchical relationships for this customer.
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [String, nil] :name The full name of the customer
      #
      #   @option params [Symbol, Orb::Models::CustomerUpdateParams::PaymentProvider, nil] :payment_provider This is used for creating charges or invoices in an external system via Orb.
      #     When not in test mode:
      #
      #     - the connection must first be configured in the Orb webapp.
      #     - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
      #       `bill.com`, `netsuite`), any product mappings must first be configured with
      #       the Orb team.
      #
      #   @option params [String, nil] :payment_provider_id The ID of this customer in an external payments solution, such as Stripe. This
      #     is used for creating charges or invoices in the external system via Orb.
      #
      #   @option params [Orb::Models::CustomerUpdateParams::ReportingConfiguration, nil] :reporting_configuration
      #
      #   @option params [Orb::Models::CustomerUpdateParams::ShippingAddress, nil] :shipping_address
      #
      #   @option params [Orb::Models::CustomerUpdateParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateParams::TaxConfiguration::NewTaxJarConfiguration, nil] :tax_configuration
      #
      #   @option params [Orb::Models::CustomerUpdateParams::TaxID, nil] :tax_id Tax IDs are commonly required to be displayed on customer invoices, which are
      #     added to the headers of invoices.
      #
      #     ### Supported Tax ID Countries and Types
      #
      #     | Country              | Type         | Description                                                                                             |
      #     | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #     | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #     | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #     | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #     | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #     | Austria              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #     | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #     | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #     | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #     | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #     | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Canada               | `ca_bn`      | Canadian BN                                                                                             |
      #     | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #     | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #     | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #     | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #     | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #     | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
      #     | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
      #     | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
      #     | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #     | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
      #     | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
      #     | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #     | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #     | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #     | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #     | Finland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | France               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
      #     | Germany              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Greece               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
      #     | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #     | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
      #     | India                | `in_gst`     | Indian GST Number                                                                                       |
      #     | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #     | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Israel               | `il_vat`     | Israel VAT                                                                                              |
      #     | Italy                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #     | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #     | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #     | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #     | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #     | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #     | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
      #     | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
      #     | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
      #     | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
      #     | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
      #     | Malta                | `eu_vat `    | European VAT Number                                                                                     |
      #     | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #     | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
      #     | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
      #     | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #     | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
      #     | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #     | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
      #     | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #     | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
      #     | Poland               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #     | Russia               | `ru_inn`     | Russian INN                                                                                             |
      #     | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
      #     | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #     | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
      #     | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
      #     | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
      #     | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #     | South Africa         | `za_vat`     | South African VAT Number                                                                                |
      #     | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
      #     | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #     | Spain                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #     | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
      #     | Thailand             | `th_vat`     | Thai VAT                                                                                                |
      #     | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #     | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
      #     | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #     | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #     | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #     | United States        | `us_ein`     | United States EIN                                                                                       |
      #     | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #     | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #     | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Customer]
      #
      def update(customer_id, params = {})
        parsed, options = Orb::Models::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["customers/%0s", customer_id],
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
      # @param params [Orb::Models::CustomerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gt
      #
      #   @option params [Time, nil] :created_at_gte
      #
      #   @option params [Time, nil] :created_at_lt
      #
      #   @option params [Time, nil] :created_at_lte
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::Customer>]
      #
      def list(params = {})
        parsed, options = Orb::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          page: Orb::Page,
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
      # @param customer_id [String]
      #
      # @param params [Orb::Models::CustomerDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      #
      def delete(customer_id, params = {})
        @client.request(
          method: :delete,
          path: ["customers/%0s", customer_id],
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
      # @param customer_id [String]
      #
      # @param params [Orb::Models::CustomerFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Customer]
      #
      def fetch(customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/%0s", customer_id],
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
      # @param external_customer_id [String]
      #
      # @param params [Orb::Models::CustomerFetchByExternalIDParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Customer]
      #
      def fetch_by_external_id(external_customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/external_customer_id/%0s", external_customer_id],
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
      # @param external_customer_id [String]
      #
      # @param params [Orb::Models::CustomerSyncPaymentMethodsFromGatewayParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      #
      def sync_payment_methods_from_gateway(external_customer_id, params = {})
        @client.request(
          method: :post,
          path: [
            "customers/external_customer_id/%0s/sync_payment_methods_from_gateway",
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
      # @param customer_id [String]
      #
      # @param params [Orb::Models::CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      #
      def sync_payment_methods_from_gateway_by_external_customer_id(customer_id, params = {})
        @client.request(
          method: :post,
          path: ["customers/%0s/sync_payment_methods_from_gateway", customer_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint is used to update customer details given an `external_customer_id`
      #   (see [Customer ID Aliases](/events-and-metrics/customer-aliases)). Note that the
      #   resource and semantics of this endpoint exactly mirror
      #   [Update Customer](update-customer).
      #
      # @param id [String]
      #
      # @param params [Orb::Models::CustomerUpdateByExternalIDParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration, nil] :accounting_sync_configuration
      #
      #   @option params [Array<String>, nil] :additional_emails Additional email addresses for this customer. If populated, these email
      #     addresses will be CC'd for customer communications.
      #
      #   @option params [Boolean, nil] :auto_collection Used to determine if invoices for this customer will automatically attempt to
      #     charge a saved payment method, if available. This parameter defaults to `True`
      #     when a payment provider is provided on customer creation.
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress, nil] :billing_address
      #
      #   @option params [String, nil] :currency An ISO 4217 currency string used for the customer's invoices and balance. If not
      #     set at creation time, will be set at subscription creation time.
      #
      #   @option params [String, nil] :email A valid customer email, to be used for invoicing and notifications.
      #
      #   @option params [Boolean, nil] :email_delivery
      #
      #   @option params [String, nil] :external_customer_id The external customer ID. This can only be set if empty and the customer has no
      #     past or current subscriptions.
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::Hierarchy, nil] :hierarchy The hierarchical relationships for this customer.
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [String, nil] :name The full name of the customer
      #
      #   @option params [Symbol, Orb::Models::CustomerUpdateByExternalIDParams::PaymentProvider, nil] :payment_provider This is used for creating charges or invoices in an external system via Orb.
      #     When not in test mode:
      #
      #     - the connection must first be configured in the Orb webapp.
      #     - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
      #       `bill.com`, `netsuite`), any product mappings must first be configured with
      #       the Orb team.
      #
      #   @option params [String, nil] :payment_provider_id The ID of this customer in an external payments solution, such as Stripe. This
      #     is used for creating charges or invoices in the external system via Orb.
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration, nil] :reporting_configuration
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress, nil] :shipping_address
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration, nil] :tax_configuration
      #
      #   @option params [Orb::Models::CustomerUpdateByExternalIDParams::TaxID, nil] :tax_id Tax IDs are commonly required to be displayed on customer invoices, which are
      #     added to the headers of invoices.
      #
      #     ### Supported Tax ID Countries and Types
      #
      #     | Country              | Type         | Description                                                                                             |
      #     | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #     | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #     | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #     | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #     | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #     | Austria              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #     | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #     | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #     | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #     | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #     | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Canada               | `ca_bn`      | Canadian BN                                                                                             |
      #     | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #     | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #     | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #     | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #     | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #     | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
      #     | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
      #     | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
      #     | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #     | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
      #     | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
      #     | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #     | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #     | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #     | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #     | Finland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | France               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
      #     | Germany              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Greece               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
      #     | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #     | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
      #     | India                | `in_gst`     | Indian GST Number                                                                                       |
      #     | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #     | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Israel               | `il_vat`     | Israel VAT                                                                                              |
      #     | Italy                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #     | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #     | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #     | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #     | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #     | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #     | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
      #     | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
      #     | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
      #     | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
      #     | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
      #     | Malta                | `eu_vat `    | European VAT Number                                                                                     |
      #     | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #     | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
      #     | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
      #     | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #     | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
      #     | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #     | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
      #     | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #     | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
      #     | Poland               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #     | Russia               | `ru_inn`     | Russian INN                                                                                             |
      #     | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
      #     | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #     | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
      #     | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
      #     | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
      #     | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #     | South Africa         | `za_vat`     | South African VAT Number                                                                                |
      #     | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
      #     | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #     | Spain                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #     | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
      #     | Thailand             | `th_vat`     | Thai VAT                                                                                                |
      #     | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #     | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
      #     | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #     | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #     | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #     | United States        | `us_ein`     | United States EIN                                                                                       |
      #     | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #     | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #     | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Customer]
      #
      def update_by_external_id(id, params = {})
        parsed, options = Orb::Models::CustomerUpdateByExternalIDParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["customers/external_customer_id/%0s", id],
          body: parsed,
          model: Orb::Models::Customer,
          options: options
        )
      end

      # @param client [Orb::Client]
      #
      def initialize(client:)
        @client = client
        @costs = Orb::Resources::Customers::Costs.new(client: client)
        @credits = Orb::Resources::Customers::Credits.new(client: client)
        @balance_transactions = Orb::Resources::Customers::BalanceTransactions.new(client: client)
      end
    end
  end
end
