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
      sig do
        params(
          email: String,
          name: String,
          accounting_sync_configuration: T.nilable(T.any(Orb::Models::CustomerCreateParams::AccountingSyncConfiguration, Orb::Internal::AnyHash)),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(T.any(Orb::Models::CustomerCreateParams::BillingAddress, Orb::Internal::AnyHash)),
          currency: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.nilable(T.any(Orb::Models::CustomerCreateParams::Hierarchy, Orb::Internal::AnyHash)),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          payment_provider: T.nilable(Orb::Models::CustomerCreateParams::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(T.any(Orb::Models::CustomerCreateParams::ReportingConfiguration, Orb::Internal::AnyHash)),
          shipping_address: T.nilable(T.any(Orb::Models::CustomerCreateParams::ShippingAddress, Orb::Internal::AnyHash)),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerCreateParams::TaxConfiguration::Avalara,
              Orb::Internal::AnyHash,
              Orb::Models::CustomerCreateParams::TaxConfiguration::Taxjar
            )
          ),
          tax_id: T.nilable(T.any(Orb::Models::CustomerCreateParams::TaxID, Orb::Internal::AnyHash)),
          timezone: T.nilable(String),
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Models::Customer)
      end
      def create(
        # A valid customer email, to be used for notifications. When Orb triggers payment
        # through a payment gateway, this email will be used for any automatically issued
        # receipts.
        email:,
        # The full name of the customer
        name:,
        accounting_sync_configuration: nil,
        # Additional email addresses for this customer. If populated, these email
        # addresses will be CC'd for customer communications.
        additional_emails: nil,
        # Used to determine if invoices for this customer will automatically attempt to
        # charge a saved payment method, if available. This parameter defaults to `True`
        # when a payment provider is provided on customer creation.
        auto_collection: nil,
        billing_address: nil,
        # An ISO 4217 currency string used for the customer's invoices and balance. If not
        # set at creation time, will be set at subscription creation time.
        currency: nil,
        email_delivery: nil,
        # An optional user-defined ID for this customer resource, used throughout the
        # system as an alias for this Customer. Use this field to identify a customer by
        # an existing identifier in your system.
        external_customer_id: nil,
        # The hierarchical relationships for this customer.
        hierarchy: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # This is used for creating charges or invoices in an external system via Orb.
        # When not in test mode, the connection must first be configured in the Orb
        # webapp.
        payment_provider: nil,
        # The ID of this customer in an external payments solution, such as Stripe. This
        # is used for creating charges or invoices in the external system via Orb.
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        # Tax IDs are commonly required to be displayed on customer invoices, which are
        # added to the headers of invoices.
        #
        # ### Supported Tax ID Countries and Types
        #
        # | Country              | Type         | Description                                                                                             |
        # | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
        # | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
        # | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
        # | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
        # | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
        # | Austria              | `eu_vat`     | European VAT Number                                                                                     |
        # | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
        # | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
        # | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
        # | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
        # | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
        # | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
        # | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
        # | Canada               | `ca_bn`      | Canadian BN                                                                                             |
        # | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
        # | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
        # | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
        # | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
        # | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
        # | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
        # | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
        # | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
        # | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
        # | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
        # | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
        # | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
        # | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
        # | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
        # | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
        # | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
        # | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
        # | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
        # | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
        # | Finland              | `eu_vat`     | European VAT Number                                                                                     |
        # | France               | `eu_vat`     | European VAT Number                                                                                     |
        # | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
        # | Germany              | `eu_vat`     | European VAT Number                                                                                     |
        # | Greece               | `eu_vat`     | European VAT Number                                                                                     |
        # | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
        # | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
        # | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
        # | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
        # | India                | `in_gst`     | Indian GST Number                                                                                       |
        # | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
        # | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
        # | Israel               | `il_vat`     | Israel VAT                                                                                              |
        # | Italy                | `eu_vat`     | European VAT Number                                                                                     |
        # | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
        # | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
        # | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
        # | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
        # | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
        # | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
        # | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
        # | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
        # | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
        # | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
        # | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
        # | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
        # | Malta                | `eu_vat `    | European VAT Number                                                                                     |
        # | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
        # | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
        # | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
        # | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
        # | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
        # | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
        # | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
        # | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        # | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
        # | Poland               | `eu_vat`     | European VAT Number                                                                                     |
        # | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania              | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
        # | Russia               | `ru_inn`     | Russian INN                                                                                             |
        # | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
        # | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
        # | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
        # | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
        # | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
        # | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
        # | South Africa         | `za_vat`     | South African VAT Number                                                                                |
        # | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
        # | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
        # | Spain                | `eu_vat`     | European VAT Number                                                                                     |
        # | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
        # | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
        # | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
        # | Thailand             | `th_vat`     | Thai VAT                                                                                                |
        # | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
        # | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
        # | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
        # | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
        # | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
        # | United States        | `us_ein`     | United States EIN                                                                                       |
        # | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
        # | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
        # | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
        tax_id: nil,
        # A timezone identifier from the IANA timezone database, such as
        # `"America/Los_Angeles"`. This defaults to your account's timezone if not set.
        # This cannot be changed after customer creation.
        timezone: nil,
        request_options: {}
      ); end
      # This endpoint can be used to update the `payment_provider`,
      # `payment_provider_id`, `name`, `email`, `email_delivery`, `tax_id`,
      # `auto_collection`, `metadata`, `shipping_address`, `billing_address`, and
      # `additional_emails` of an existing customer. Other fields on a customer are
      # currently immutable.
      sig do
        params(
          customer_id: String,
          accounting_sync_configuration: T.nilable(T.any(Orb::Models::CustomerUpdateParams::AccountingSyncConfiguration, Orb::Internal::AnyHash)),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(T.any(Orb::Models::CustomerUpdateParams::BillingAddress, Orb::Internal::AnyHash)),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.nilable(T.any(Orb::Models::CustomerUpdateParams::Hierarchy, Orb::Internal::AnyHash)),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider: T.nilable(Orb::Models::CustomerUpdateParams::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(T.any(Orb::Models::CustomerUpdateParams::ReportingConfiguration, Orb::Internal::AnyHash)),
          shipping_address: T.nilable(T.any(Orb::Models::CustomerUpdateParams::ShippingAddress, Orb::Internal::AnyHash)),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerUpdateParams::TaxConfiguration::Avalara,
              Orb::Internal::AnyHash,
              Orb::Models::CustomerUpdateParams::TaxConfiguration::Taxjar
            )
          ),
          tax_id: T.nilable(T.any(Orb::Models::CustomerUpdateParams::TaxID, Orb::Internal::AnyHash)),
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Models::Customer)
      end
      def update(
        customer_id,
        accounting_sync_configuration: nil,
        # Additional email addresses for this customer. If populated, these email
        # addresses will be CC'd for customer communications.
        additional_emails: nil,
        # Used to determine if invoices for this customer will automatically attempt to
        # charge a saved payment method, if available. This parameter defaults to `True`
        # when a payment provider is provided on customer creation.
        auto_collection: nil,
        billing_address: nil,
        # An ISO 4217 currency string used for the customer's invoices and balance. If not
        # set at creation time, will be set at subscription creation time.
        currency: nil,
        # A valid customer email, to be used for invoicing and notifications.
        email: nil,
        email_delivery: nil,
        # The external customer ID. This can only be set if empty and the customer has no
        # past or current subscriptions.
        external_customer_id: nil,
        # The hierarchical relationships for this customer.
        hierarchy: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The full name of the customer
        name: nil,
        # This is used for creating charges or invoices in an external system via Orb.
        # When not in test mode:
        #
        # - the connection must first be configured in the Orb webapp.
        # - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
        #   `bill.com`, `netsuite`), any product mappings must first be configured with
        #   the Orb team.
        payment_provider: nil,
        # The ID of this customer in an external payments solution, such as Stripe. This
        # is used for creating charges or invoices in the external system via Orb.
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        # Tax IDs are commonly required to be displayed on customer invoices, which are
        # added to the headers of invoices.
        #
        # ### Supported Tax ID Countries and Types
        #
        # | Country              | Type         | Description                                                                                             |
        # | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
        # | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
        # | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
        # | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
        # | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
        # | Austria              | `eu_vat`     | European VAT Number                                                                                     |
        # | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
        # | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
        # | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
        # | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
        # | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
        # | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
        # | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
        # | Canada               | `ca_bn`      | Canadian BN                                                                                             |
        # | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
        # | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
        # | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
        # | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
        # | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
        # | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
        # | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
        # | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
        # | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
        # | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
        # | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
        # | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
        # | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
        # | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
        # | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
        # | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
        # | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
        # | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
        # | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
        # | Finland              | `eu_vat`     | European VAT Number                                                                                     |
        # | France               | `eu_vat`     | European VAT Number                                                                                     |
        # | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
        # | Germany              | `eu_vat`     | European VAT Number                                                                                     |
        # | Greece               | `eu_vat`     | European VAT Number                                                                                     |
        # | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
        # | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
        # | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
        # | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
        # | India                | `in_gst`     | Indian GST Number                                                                                       |
        # | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
        # | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
        # | Israel               | `il_vat`     | Israel VAT                                                                                              |
        # | Italy                | `eu_vat`     | European VAT Number                                                                                     |
        # | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
        # | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
        # | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
        # | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
        # | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
        # | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
        # | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
        # | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
        # | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
        # | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
        # | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
        # | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
        # | Malta                | `eu_vat `    | European VAT Number                                                                                     |
        # | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
        # | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
        # | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
        # | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
        # | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
        # | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
        # | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
        # | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        # | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
        # | Poland               | `eu_vat`     | European VAT Number                                                                                     |
        # | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania              | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
        # | Russia               | `ru_inn`     | Russian INN                                                                                             |
        # | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
        # | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
        # | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
        # | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
        # | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
        # | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
        # | South Africa         | `za_vat`     | South African VAT Number                                                                                |
        # | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
        # | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
        # | Spain                | `eu_vat`     | European VAT Number                                                                                     |
        # | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
        # | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
        # | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
        # | Thailand             | `th_vat`     | Thai VAT                                                                                                |
        # | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
        # | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
        # | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
        # | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
        # | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
        # | United States        | `us_ein`     | United States EIN                                                                                       |
        # | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
        # | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
        # | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
        tax_id: nil,
        request_options: {}
      ); end
      # This endpoint returns a list of all customers for an account. The list of
      # customers is ordered starting from the most recently created customer. This
      # endpoint follows Orb's
      # [standardized pagination format](/api-reference/pagination).
      #
      # See [Customer](/core-concepts##customer) for an overview of the customer model.
      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Internal::Page[Orb::Models::Customer])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        request_options: {}
      ); end
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
      # its deletion with a `deleted: true` property. Once the customer deletion has
      # been fully processed, the customer will not be returned in the API.
      #
      # On successful processing, this returns an empty dictionary (`{}`) in the API.
      sig { params(customer_id: String, request_options: Orb::RequestOpts).void }
      def delete(customer_id, request_options: {}); end

      # This endpoint is used to fetch customer details given an identifier. If the
      # `Customer` is in the process of being deleted, only the properties `id` and
      # `deleted: true` will be returned.
      #
      # See the [Customer resource](/core-concepts#customer) for a full discussion of
      # the Customer model.
      sig { params(customer_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Customer) }
      def fetch(customer_id, request_options: {}); end

      # This endpoint is used to fetch customer details given an `external_customer_id`
      # (see [Customer ID Aliases](/events-and-metrics/customer-aliases)).
      #
      # Note that the resource and semantics of this endpoint exactly mirror
      # [Get Customer](fetch-customer).
      sig { params(external_customer_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Customer) }
      def fetch_by_external_id(external_customer_id, request_options: {}); end

      # Sync Orb's payment methods for the customer with their gateway.
      #
      # This method can be called before taking an action that may cause the customer to
      # be charged, ensuring that the most up-to-date payment method is charged.
      #
      # **Note**: This functionality is currently only available for Stripe.
      sig { params(customer_id: String, request_options: Orb::RequestOpts).void }
      def sync_payment_methods_from_gateway(customer_id, request_options: {}); end

      # Sync Orb's payment methods for the customer with their gateway.
      #
      # This method can be called before taking an action that may cause the customer to
      # be charged, ensuring that the most up-to-date payment method is charged.
      #
      # **Note**: This functionality is currently only available for Stripe.
      sig { params(external_customer_id: String, request_options: Orb::RequestOpts).void }
      def sync_payment_methods_from_gateway_by_external_customer_id(
        external_customer_id,
        request_options: {}
      )
      end

      # This endpoint is used to update customer details given an `external_customer_id`
      # (see [Customer ID Aliases](/events-and-metrics/customer-aliases)). Note that the
      # resource and semantics of this endpoint exactly mirror
      # [Update Customer](update-customer).
      sig do
        params(
          id: String,
          accounting_sync_configuration: T.nilable(
            T.any(Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration, Orb::Internal::AnyHash)
          ),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(T.any(Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress, Orb::Internal::AnyHash)),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.nilable(T.any(Orb::Models::CustomerUpdateByExternalIDParams::Hierarchy, Orb::Internal::AnyHash)),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(
            T.any(Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration, Orb::Internal::AnyHash)
          ),
          shipping_address: T.nilable(T.any(Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress, Orb::Internal::AnyHash)),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara,
              Orb::Internal::AnyHash,
              Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar
            )
          ),
          tax_id: T.nilable(T.any(Orb::Models::CustomerUpdateByExternalIDParams::TaxID, Orb::Internal::AnyHash)),
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Models::Customer)
      end
      def update_by_external_id(
        id,
        accounting_sync_configuration: nil,
        # Additional email addresses for this customer. If populated, these email
        # addresses will be CC'd for customer communications.
        additional_emails: nil,
        # Used to determine if invoices for this customer will automatically attempt to
        # charge a saved payment method, if available. This parameter defaults to `True`
        # when a payment provider is provided on customer creation.
        auto_collection: nil,
        billing_address: nil,
        # An ISO 4217 currency string used for the customer's invoices and balance. If not
        # set at creation time, will be set at subscription creation time.
        currency: nil,
        # A valid customer email, to be used for invoicing and notifications.
        email: nil,
        email_delivery: nil,
        # The external customer ID. This can only be set if empty and the customer has no
        # past or current subscriptions.
        external_customer_id: nil,
        # The hierarchical relationships for this customer.
        hierarchy: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The full name of the customer
        name: nil,
        # This is used for creating charges or invoices in an external system via Orb.
        # When not in test mode:
        #
        # - the connection must first be configured in the Orb webapp.
        # - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
        #   `bill.com`, `netsuite`), any product mappings must first be configured with
        #   the Orb team.
        payment_provider: nil,
        # The ID of this customer in an external payments solution, such as Stripe. This
        # is used for creating charges or invoices in the external system via Orb.
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        # Tax IDs are commonly required to be displayed on customer invoices, which are
        # added to the headers of invoices.
        #
        # ### Supported Tax ID Countries and Types
        #
        # | Country              | Type         | Description                                                                                             |
        # | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
        # | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
        # | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
        # | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
        # | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
        # | Austria              | `eu_vat`     | European VAT Number                                                                                     |
        # | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
        # | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
        # | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
        # | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
        # | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
        # | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
        # | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
        # | Canada               | `ca_bn`      | Canadian BN                                                                                             |
        # | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
        # | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
        # | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
        # | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
        # | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
        # | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
        # | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
        # | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
        # | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
        # | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
        # | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
        # | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
        # | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
        # | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
        # | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
        # | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
        # | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
        # | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
        # | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
        # | Finland              | `eu_vat`     | European VAT Number                                                                                     |
        # | France               | `eu_vat`     | European VAT Number                                                                                     |
        # | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
        # | Germany              | `eu_vat`     | European VAT Number                                                                                     |
        # | Greece               | `eu_vat`     | European VAT Number                                                                                     |
        # | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
        # | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
        # | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
        # | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
        # | India                | `in_gst`     | Indian GST Number                                                                                       |
        # | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
        # | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
        # | Israel               | `il_vat`     | Israel VAT                                                                                              |
        # | Italy                | `eu_vat`     | European VAT Number                                                                                     |
        # | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
        # | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
        # | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
        # | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
        # | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
        # | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
        # | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
        # | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
        # | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
        # | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
        # | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
        # | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
        # | Malta                | `eu_vat `    | European VAT Number                                                                                     |
        # | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
        # | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
        # | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
        # | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
        # | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
        # | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
        # | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
        # | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        # | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
        # | Poland               | `eu_vat`     | European VAT Number                                                                                     |
        # | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania              | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
        # | Russia               | `ru_inn`     | Russian INN                                                                                             |
        # | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
        # | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
        # | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
        # | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
        # | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
        # | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
        # | South Africa         | `za_vat`     | South African VAT Number                                                                                |
        # | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
        # | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
        # | Spain                | `eu_vat`     | European VAT Number                                                                                     |
        # | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
        # | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
        # | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
        # | Thailand             | `th_vat`     | Thai VAT                                                                                                |
        # | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
        # | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
        # | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
        # | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
        # | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
        # | United States        | `us_ein`     | United States EIN                                                                                       |
        # | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
        # | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
        # | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
        tax_id: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
