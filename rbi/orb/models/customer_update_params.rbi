# typed: strong

module Orb
  module Models
    class CustomerUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CustomerUpdateParams, Orb::Internal::AnyHash)
        end

      sig { returns(T.nilable(Orb::NewAccountingSyncConfiguration)) }
      attr_reader :accounting_sync_configuration

      sig do
        params(
          accounting_sync_configuration:
            T.nilable(Orb::NewAccountingSyncConfiguration::OrHash)
        ).void
      end
      attr_writer :accounting_sync_configuration

      # Additional email addresses for this customer. If populated, these email
      # addresses will be CC'd for customer communications.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :additional_emails

      # Used to determine if invoices for this customer will automatically attempt to
      # charge a saved payment method, if available. This parameter defaults to `True`
      # when a payment provider is provided on customer creation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(Orb::AddressInput)) }
      attr_reader :billing_address

      sig { params(billing_address: T.nilable(Orb::AddressInput::OrHash)).void }
      attr_writer :billing_address

      # An ISO 4217 currency string used for the customer's invoices and balance. If not
      # set at creation time, will be set at subscription creation time.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # A valid customer email, to be used for invoicing and notifications.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :email_delivery

      # The external customer ID. This can only be set if the customer has no existing
      # external customer ID. Since this action may change usage quantities for all
      # existing subscriptions, it is disallowed if the customer has issued invoices
      # with usage line items and subject to the same restrictions as backdated
      # subscription creation.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # The hierarchical relationships for this customer.
      sig { returns(T.nilable(Orb::CustomerHierarchyConfig)) }
      attr_reader :hierarchy

      sig do
        params(hierarchy: T.nilable(Orb::CustomerHierarchyConfig::OrHash)).void
      end
      attr_writer :hierarchy

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # The full name of the customer
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # This is used for creating charges or invoices in an external system via Orb.
      # When not in test mode:
      #
      # - the connection must first be configured in the Orb webapp.
      # - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
      #   `bill.com`, `netsuite`), any product mappings must first be configured with
      #   the Orb team.
      sig do
        returns(T.nilable(Orb::CustomerUpdateParams::PaymentProvider::OrSymbol))
      end
      attr_accessor :payment_provider

      # The ID of this customer in an external payments solution, such as Stripe. This
      # is used for creating charges or invoices in the external system via Orb.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig { returns(T.nilable(Orb::NewReportingConfiguration)) }
      attr_reader :reporting_configuration

      sig do
        params(
          reporting_configuration:
            T.nilable(Orb::NewReportingConfiguration::OrHash)
        ).void
      end
      attr_writer :reporting_configuration

      sig { returns(T.nilable(Orb::AddressInput)) }
      attr_reader :shipping_address

      sig do
        params(shipping_address: T.nilable(Orb::AddressInput::OrHash)).void
      end
      attr_writer :shipping_address

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::NewAvalaraTaxConfiguration,
              Orb::NewTaxJarConfiguration,
              Orb::NewSphereConfiguration
            )
          )
        )
      end
      attr_accessor :tax_configuration

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
      sig { returns(T.nilable(Orb::CustomerTaxID)) }
      attr_reader :tax_id

      sig { params(tax_id: T.nilable(Orb::CustomerTaxID::OrHash)).void }
      attr_writer :tax_id

      sig do
        params(
          accounting_sync_configuration:
            T.nilable(Orb::NewAccountingSyncConfiguration::OrHash),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(Orb::AddressInput::OrHash),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.nilable(Orb::CustomerHierarchyConfig::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider:
            T.nilable(Orb::CustomerUpdateParams::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration:
            T.nilable(Orb::NewReportingConfiguration::OrHash),
          shipping_address: T.nilable(Orb::AddressInput::OrHash),
          tax_configuration:
            T.nilable(
              T.any(
                Orb::NewAvalaraTaxConfiguration::OrHash,
                Orb::NewTaxJarConfiguration::OrHash,
                Orb::NewSphereConfiguration::OrHash
              )
            ),
          tax_id: T.nilable(Orb::CustomerTaxID::OrHash),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # The external customer ID. This can only be set if the customer has no existing
        # external customer ID. Since this action may change usage quantities for all
        # existing subscriptions, it is disallowed if the customer has issued invoices
        # with usage line items and subject to the same restrictions as backdated
        # subscription creation.
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
      )
      end

      sig do
        override.returns(
          {
            accounting_sync_configuration:
              T.nilable(Orb::NewAccountingSyncConfiguration),
            additional_emails: T.nilable(T::Array[String]),
            auto_collection: T.nilable(T::Boolean),
            billing_address: T.nilable(Orb::AddressInput),
            currency: T.nilable(String),
            email: T.nilable(String),
            email_delivery: T.nilable(T::Boolean),
            external_customer_id: T.nilable(String),
            hierarchy: T.nilable(Orb::CustomerHierarchyConfig),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            name: T.nilable(String),
            payment_provider:
              T.nilable(Orb::CustomerUpdateParams::PaymentProvider::OrSymbol),
            payment_provider_id: T.nilable(String),
            reporting_configuration: T.nilable(Orb::NewReportingConfiguration),
            shipping_address: T.nilable(Orb::AddressInput),
            tax_configuration:
              T.nilable(
                T.any(
                  Orb::NewAvalaraTaxConfiguration,
                  Orb::NewTaxJarConfiguration,
                  Orb::NewSphereConfiguration
                )
              ),
            tax_id: T.nilable(Orb::CustomerTaxID),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # This is used for creating charges or invoices in an external system via Orb.
      # When not in test mode:
      #
      # - the connection must first be configured in the Orb webapp.
      # - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
      #   `bill.com`, `netsuite`), any product mappings must first be configured with
      #   the Orb team.
      module PaymentProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CustomerUpdateParams::PaymentProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUICKBOOKS =
          T.let(
            :quickbooks,
            Orb::CustomerUpdateParams::PaymentProvider::TaggedSymbol
          )
        BILL_COM =
          T.let(
            :"bill.com",
            Orb::CustomerUpdateParams::PaymentProvider::TaggedSymbol
          )
        STRIPE_CHARGE =
          T.let(
            :stripe_charge,
            Orb::CustomerUpdateParams::PaymentProvider::TaggedSymbol
          )
        STRIPE_INVOICE =
          T.let(
            :stripe_invoice,
            Orb::CustomerUpdateParams::PaymentProvider::TaggedSymbol
          )
        NETSUITE =
          T.let(
            :netsuite,
            Orb::CustomerUpdateParams::PaymentProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::CustomerUpdateParams::PaymentProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module TaxConfiguration
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::NewAvalaraTaxConfiguration,
              Orb::NewTaxJarConfiguration,
              Orb::NewSphereConfiguration
            )
          end

        sig do
          override.returns(
            T::Array[Orb::CustomerUpdateParams::TaxConfiguration::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
