# typed: strong

module Orb
  module Models
    class CustomerUpdateByExternalIDParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CustomerUpdateByExternalIDParams, Orb::Internal::AnyHash)
        end

      sig do
        returns(
          T.nilable(
            Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration
          )
        )
      end
      attr_reader :accounting_sync_configuration

      sig do
        params(
          accounting_sync_configuration:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::OrHash
            )
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

      sig do
        returns(
          T.nilable(Orb::CustomerUpdateByExternalIDParams::BillingAddress)
        )
      end
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::BillingAddress::OrHash
            )
        ).void
      end
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

      # The external customer ID. This can only be set if empty and the customer has no
      # past or current subscriptions.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # The hierarchical relationships for this customer.
      sig do
        returns(T.nilable(Orb::CustomerUpdateByExternalIDParams::Hierarchy))
      end
      attr_reader :hierarchy

      sig do
        params(
          hierarchy:
            T.nilable(Orb::CustomerUpdateByExternalIDParams::Hierarchy::OrHash)
        ).void
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
        returns(
          T.nilable(
            Orb::CustomerUpdateByExternalIDParams::PaymentProvider::OrSymbol
          )
        )
      end
      attr_accessor :payment_provider

      # The ID of this customer in an external payments solution, such as Stripe. This
      # is used for creating charges or invoices in the external system via Orb.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig do
        returns(
          T.nilable(
            Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration
          )
        )
      end
      attr_reader :reporting_configuration

      sig do
        params(
          reporting_configuration:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration::OrHash
            )
        ).void
      end
      attr_writer :reporting_configuration

      sig do
        returns(
          T.nilable(Orb::CustomerUpdateByExternalIDParams::ShippingAddress)
        )
      end
      attr_reader :shipping_address

      sig do
        params(
          shipping_address:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::ShippingAddress::OrHash
            )
        ).void
      end
      attr_writer :shipping_address

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara,
              Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar
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
      sig { returns(T.nilable(Orb::CustomerUpdateByExternalIDParams::TaxID)) }
      attr_reader :tax_id

      sig do
        params(
          tax_id:
            T.nilable(Orb::CustomerUpdateByExternalIDParams::TaxID::OrHash)
        ).void
      end
      attr_writer :tax_id

      sig do
        params(
          accounting_sync_configuration:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::OrHash
            ),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::BillingAddress::OrHash
            ),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy:
            T.nilable(Orb::CustomerUpdateByExternalIDParams::Hierarchy::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::PaymentProvider::OrSymbol
            ),
          payment_provider_id: T.nilable(String),
          reporting_configuration:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration::OrHash
            ),
          shipping_address:
            T.nilable(
              Orb::CustomerUpdateByExternalIDParams::ShippingAddress::OrHash
            ),
          tax_configuration:
            T.nilable(
              T.any(
                Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara::OrHash,
                Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar::OrHash
              )
            ),
          tax_id:
            T.nilable(Orb::CustomerUpdateByExternalIDParams::TaxID::OrHash),
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
      )
      end

      sig do
        override.returns(
          {
            accounting_sync_configuration:
              T.nilable(
                Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration
              ),
            additional_emails: T.nilable(T::Array[String]),
            auto_collection: T.nilable(T::Boolean),
            billing_address:
              T.nilable(Orb::CustomerUpdateByExternalIDParams::BillingAddress),
            currency: T.nilable(String),
            email: T.nilable(String),
            email_delivery: T.nilable(T::Boolean),
            external_customer_id: T.nilable(String),
            hierarchy:
              T.nilable(Orb::CustomerUpdateByExternalIDParams::Hierarchy),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            name: T.nilable(String),
            payment_provider:
              T.nilable(
                Orb::CustomerUpdateByExternalIDParams::PaymentProvider::OrSymbol
              ),
            payment_provider_id: T.nilable(String),
            reporting_configuration:
              T.nilable(
                Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration
              ),
            shipping_address:
              T.nilable(Orb::CustomerUpdateByExternalIDParams::ShippingAddress),
            tax_configuration:
              T.nilable(
                T.any(
                  Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara,
                  Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar
                )
              ),
            tax_id: T.nilable(Orb::CustomerUpdateByExternalIDParams::TaxID),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AccountingSyncConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider
              ]
            )
          )
        end
        attr_accessor :accounting_providers

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :excluded

        sig do
          params(
            accounting_providers:
              T.nilable(
                T::Array[
                  Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider::OrHash
                ]
              ),
            excluded: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(accounting_providers: nil, excluded: nil)
        end

        sig do
          override.returns(
            {
              accounting_providers:
                T.nilable(
                  T::Array[
                    Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider
                  ]
                ),
              excluded: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        class AccountingProvider < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :external_provider_id

          sig { returns(String) }
          attr_accessor :provider_type

          sig do
            params(external_provider_id: String, provider_type: String).returns(
              T.attached_class
            )
          end
          def self.new(external_provider_id:, provider_type:)
          end

          sig do
            override.returns(
              { external_provider_id: String, provider_type: String }
            )
          end
          def to_hash
          end
        end
      end

      class BillingAddress < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::BillingAddress,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :city

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :state

        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Hierarchy < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::Hierarchy,
              Orb::Internal::AnyHash
            )
          end

        # A list of child customer IDs to add to the hierarchy. The desired child
        # customers must not already be part of another hierarchy.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :child_customer_ids

        sig { params(child_customer_ids: T::Array[String]).void }
        attr_writer :child_customer_ids

        # The ID of the parent customer in the hierarchy. The desired parent customer must
        # not be a child of another customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :parent_customer_id

        # The hierarchical relationships for this customer.
        sig do
          params(
            child_customer_ids: T::Array[String],
            parent_customer_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of child customer IDs to add to the hierarchy. The desired child
          # customers must not already be part of another hierarchy.
          child_customer_ids: nil,
          # The ID of the parent customer in the hierarchy. The desired parent customer must
          # not be a child of another customer.
          parent_customer_id: nil
        )
        end

        sig do
          override.returns(
            {
              child_customer_ids: T::Array[String],
              parent_customer_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
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
            T.all(
              Symbol,
              Orb::CustomerUpdateByExternalIDParams::PaymentProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUICKBOOKS =
          T.let(
            :quickbooks,
            Orb::CustomerUpdateByExternalIDParams::PaymentProvider::TaggedSymbol
          )
        BILL_COM =
          T.let(
            :"bill.com",
            Orb::CustomerUpdateByExternalIDParams::PaymentProvider::TaggedSymbol
          )
        STRIPE_CHARGE =
          T.let(
            :stripe_charge,
            Orb::CustomerUpdateByExternalIDParams::PaymentProvider::TaggedSymbol
          )
        STRIPE_INVOICE =
          T.let(
            :stripe_invoice,
            Orb::CustomerUpdateByExternalIDParams::PaymentProvider::TaggedSymbol
          )
        NETSUITE =
          T.let(
            :netsuite,
            Orb::CustomerUpdateByExternalIDParams::PaymentProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CustomerUpdateByExternalIDParams::PaymentProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ReportingConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :exempt

        sig { params(exempt: T::Boolean).returns(T.attached_class) }
        def self.new(exempt:)
        end

        sig { override.returns({ exempt: T::Boolean }) }
        def to_hash
        end
      end

      class ShippingAddress < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::ShippingAddress,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :city

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :state

        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      module TaxConfiguration
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara,
              Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar
            )
          end

        class Avalara < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt

          sig { returns(Symbol) }
          attr_accessor :tax_provider

          sig { returns(T.nilable(String)) }
          attr_accessor :tax_exemption_code

          sig do
            params(
              tax_exempt: T::Boolean,
              tax_exemption_code: T.nilable(String),
              tax_provider: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            tax_exempt:,
            tax_exemption_code: nil,
            tax_provider: :avalara
          )
          end

          sig do
            override.returns(
              {
                tax_exempt: T::Boolean,
                tax_provider: Symbol,
                tax_exemption_code: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Taxjar < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt

          sig { returns(Symbol) }
          attr_accessor :tax_provider

          sig do
            params(tax_exempt: T::Boolean, tax_provider: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(tax_exempt:, tax_provider: :taxjar)
          end

          sig do
            override.returns({ tax_exempt: T::Boolean, tax_provider: Symbol })
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Variants
            ]
          )
        end
        def self.variants
        end
      end

      class TaxID < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerUpdateByExternalIDParams::TaxID,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            Orb::CustomerUpdateByExternalIDParams::TaxID::Country::OrSymbol
          )
        end
        attr_accessor :country

        sig do
          returns(Orb::CustomerUpdateByExternalIDParams::TaxID::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

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
        sig do
          params(
            country:
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::OrSymbol,
            type: Orb::CustomerUpdateByExternalIDParams::TaxID::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(country:, type:, value:)
        end

        sig do
          override.returns(
            {
              country:
                Orb::CustomerUpdateByExternalIDParams::TaxID::Country::OrSymbol,
              type:
                Orb::CustomerUpdateByExternalIDParams::TaxID::Type::OrSymbol,
              value: String
            }
          )
        end
        def to_hash
        end

        module Country
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::CustomerUpdateByExternalIDParams::TaxID::Country
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD =
            T.let(
              :AD,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          AE =
            T.let(
              :AE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          AR =
            T.let(
              :AR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          AT =
            T.let(
              :AT,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          AU =
            T.let(
              :AU,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          BE =
            T.let(
              :BE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          BG =
            T.let(
              :BG,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          BH =
            T.let(
              :BH,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          BO =
            T.let(
              :BO,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          BR =
            T.let(
              :BR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CA =
            T.let(
              :CA,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CH =
            T.let(
              :CH,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CL =
            T.let(
              :CL,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CN =
            T.let(
              :CN,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CO =
            T.let(
              :CO,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CR =
            T.let(
              :CR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CY =
            T.let(
              :CY,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          CZ =
            T.let(
              :CZ,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          DK =
            T.let(
              :DK,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          EE =
            T.let(
              :EE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          DO =
            T.let(
              :DO,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          EC =
            T.let(
              :EC,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          EG =
            T.let(
              :EG,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          EU =
            T.let(
              :EU,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          GB =
            T.let(
              :GB,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          GE =
            T.let(
              :GE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          GR =
            T.let(
              :GR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          HK =
            T.let(
              :HK,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          HR =
            T.let(
              :HR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          HU =
            T.let(
              :HU,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          ID =
            T.let(
              :ID,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          IE =
            T.let(
              :IE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          IL =
            T.let(
              :IL,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          IN =
            T.let(
              :IN,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          IS =
            T.let(
              :IS,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          JP =
            T.let(
              :JP,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          KE =
            T.let(
              :KE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          KR =
            T.let(
              :KR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          KZ =
            T.let(
              :KZ,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          LI =
            T.let(
              :LI,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          LT =
            T.let(
              :LT,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          LU =
            T.let(
              :LU,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          LV =
            T.let(
              :LV,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          MT =
            T.let(
              :MT,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          MX =
            T.let(
              :MX,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          MY =
            T.let(
              :MY,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          NG =
            T.let(
              :NG,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          NZ =
            T.let(
              :NZ,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          OM =
            T.let(
              :OM,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          PE =
            T.let(
              :PE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          PH =
            T.let(
              :PH,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          PT =
            T.let(
              :PT,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          RO =
            T.let(
              :RO,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          RS =
            T.let(
              :RS,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          RU =
            T.let(
              :RU,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          SA =
            T.let(
              :SA,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          SE =
            T.let(
              :SE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          SG =
            T.let(
              :SG,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          SI =
            T.let(
              :SI,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          SK =
            T.let(
              :SK,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          TH =
            T.let(
              :TH,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          TR =
            T.let(
              :TR,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          TW =
            T.let(
              :TW,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          UA =
            T.let(
              :UA,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          UY =
            T.let(
              :UY,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          VE =
            T.let(
              :VE,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          VN =
            T.let(
              :VN,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )
          ZA =
            T.let(
              :ZA,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CustomerUpdateByExternalIDParams::TaxID::Country::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::CustomerUpdateByExternalIDParams::TaxID::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_NRT =
            T.let(
              :ad_nrt,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          AE_TRN =
            T.let(
              :ae_trn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          AR_CUIT =
            T.let(
              :ar_cuit,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          EU_VAT =
            T.let(
              :eu_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          AU_ABN =
            T.let(
              :au_abn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          AU_ARN =
            T.let(
              :au_arn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          BG_UIC =
            T.let(
              :bg_uic,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          BH_VAT =
            T.let(
              :bh_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          BO_TIN =
            T.let(
              :bo_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          BR_CNPJ =
            T.let(
              :br_cnpj,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          BR_CPF =
            T.let(
              :br_cpf,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CA_BN =
            T.let(
              :ca_bn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CA_GST_HST =
            T.let(
              :ca_gst_hst,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_BC =
            T.let(
              :ca_pst_bc,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_MB =
            T.let(
              :ca_pst_mb,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_SK =
            T.let(
              :ca_pst_sk,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CA_QST =
            T.let(
              :ca_qst,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CH_VAT =
            T.let(
              :ch_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CL_TIN =
            T.let(
              :cl_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CN_TIN =
            T.let(
              :cn_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CO_NIT =
            T.let(
              :co_nit,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          CR_TIN =
            T.let(
              :cr_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          DO_RCN =
            T.let(
              :do_rcn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          EC_RUC =
            T.let(
              :ec_ruc,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          EG_TIN =
            T.let(
              :eg_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          ES_CIF =
            T.let(
              :es_cif,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          EU_OSS_VAT =
            T.let(
              :eu_oss_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          GB_VAT =
            T.let(
              :gb_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          GE_VAT =
            T.let(
              :ge_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          HK_BR =
            T.let(
              :hk_br,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          HU_TIN =
            T.let(
              :hu_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          ID_NPWP =
            T.let(
              :id_npwp,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          IL_VAT =
            T.let(
              :il_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          IN_GST =
            T.let(
              :in_gst,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          IS_VAT =
            T.let(
              :is_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          JP_CN =
            T.let(
              :jp_cn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          JP_RN =
            T.let(
              :jp_rn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          JP_TRN =
            T.let(
              :jp_trn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          KE_PIN =
            T.let(
              :ke_pin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          KR_BRN =
            T.let(
              :kr_brn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          KZ_BIN =
            T.let(
              :kz_bin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          LI_UID =
            T.let(
              :li_uid,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          MX_RFC =
            T.let(
              :mx_rfc,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          MY_FRP =
            T.let(
              :my_frp,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          MY_ITN =
            T.let(
              :my_itn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          MY_SST =
            T.let(
              :my_sst,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          NG_TIN =
            T.let(
              :ng_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          NO_VAT =
            T.let(
              :no_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          NO_VOEC =
            T.let(
              :no_voec,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          NZ_GST =
            T.let(
              :nz_gst,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          OM_VAT =
            T.let(
              :om_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          PE_RUC =
            T.let(
              :pe_ruc,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          PH_TIN =
            T.let(
              :ph_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          RO_TIN =
            T.let(
              :ro_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          RS_PIB =
            T.let(
              :rs_pib,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          RU_INN =
            T.let(
              :ru_inn,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          RU_KPP =
            T.let(
              :ru_kpp,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          SA_VAT =
            T.let(
              :sa_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          SG_GST =
            T.let(
              :sg_gst,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          SG_UEN =
            T.let(
              :sg_uen,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          SI_TIN =
            T.let(
              :si_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          SV_NIT =
            T.let(
              :sv_nit,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          TH_VAT =
            T.let(
              :th_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          TR_TIN =
            T.let(
              :tr_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          TW_VAT =
            T.let(
              :tw_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          UA_VAT =
            T.let(
              :ua_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          US_EIN =
            T.let(
              :us_ein,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          UY_RUC =
            T.let(
              :uy_ruc,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          VE_RIF =
            T.let(
              :ve_rif,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          VN_TIN =
            T.let(
              :vn_tin,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )
          ZA_VAT =
            T.let(
              :za_vat,
              Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CustomerUpdateByExternalIDParams::TaxID::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
