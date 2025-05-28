# typed: strong

module Orb
  module Models
    class CustomerCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CustomerCreateParams, Orb::Internal::AnyHash)
        end

      # A valid customer email, to be used for notifications. When Orb triggers payment
      # through a payment gateway, this email will be used for any automatically issued
      # receipts.
      sig { returns(String) }
      attr_accessor :email

      # The full name of the customer
      sig { returns(String) }
      attr_accessor :name

      sig do
        returns(
          T.nilable(Orb::CustomerCreateParams::AccountingSyncConfiguration)
        )
      end
      attr_reader :accounting_sync_configuration

      sig do
        params(
          accounting_sync_configuration:
            T.nilable(
              Orb::CustomerCreateParams::AccountingSyncConfiguration::OrHash
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

      sig { returns(T.nilable(Orb::CustomerCreateParams::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(Orb::CustomerCreateParams::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # An ISO 4217 currency string used for the customer's invoices and balance. If not
      # set at creation time, will be set at subscription creation time.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :email_delivery

      # An optional user-defined ID for this customer resource, used throughout the
      # system as an alias for this Customer. Use this field to identify a customer by
      # an existing identifier in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # The hierarchical relationships for this customer.
      sig { returns(T.nilable(Orb::CustomerCreateParams::Hierarchy)) }
      attr_reader :hierarchy

      sig do
        params(
          hierarchy: T.nilable(Orb::CustomerCreateParams::Hierarchy::OrHash)
        ).void
      end
      attr_writer :hierarchy

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # This is used for creating charges or invoices in an external system via Orb.
      # When not in test mode, the connection must first be configured in the Orb
      # webapp.
      sig do
        returns(T.nilable(Orb::CustomerCreateParams::PaymentProvider::OrSymbol))
      end
      attr_accessor :payment_provider

      # The ID of this customer in an external payments solution, such as Stripe. This
      # is used for creating charges or invoices in the external system via Orb.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig do
        returns(T.nilable(Orb::CustomerCreateParams::ReportingConfiguration))
      end
      attr_reader :reporting_configuration

      sig do
        params(
          reporting_configuration:
            T.nilable(Orb::CustomerCreateParams::ReportingConfiguration::OrHash)
        ).void
      end
      attr_writer :reporting_configuration

      sig { returns(T.nilable(Orb::CustomerCreateParams::ShippingAddress)) }
      attr_reader :shipping_address

      sig do
        params(
          shipping_address:
            T.nilable(Orb::CustomerCreateParams::ShippingAddress::OrHash)
        ).void
      end
      attr_writer :shipping_address

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::CustomerCreateParams::TaxConfiguration::Avalara,
              Orb::CustomerCreateParams::TaxConfiguration::Taxjar,
              Orb::CustomerCreateParams::TaxConfiguration::Sphere
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
      sig { returns(T.nilable(Orb::CustomerCreateParams::TaxID)) }
      attr_reader :tax_id

      sig do
        params(tax_id: T.nilable(Orb::CustomerCreateParams::TaxID::OrHash)).void
      end
      attr_writer :tax_id

      # A timezone identifier from the IANA timezone database, such as
      # `"America/Los_Angeles"`. This defaults to your account's timezone if not set.
      # This cannot be changed after customer creation.
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      sig do
        params(
          email: String,
          name: String,
          accounting_sync_configuration:
            T.nilable(
              Orb::CustomerCreateParams::AccountingSyncConfiguration::OrHash
            ),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address:
            T.nilable(Orb::CustomerCreateParams::BillingAddress::OrHash),
          currency: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.nilable(Orb::CustomerCreateParams::Hierarchy::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          payment_provider:
            T.nilable(Orb::CustomerCreateParams::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration:
            T.nilable(
              Orb::CustomerCreateParams::ReportingConfiguration::OrHash
            ),
          shipping_address:
            T.nilable(Orb::CustomerCreateParams::ShippingAddress::OrHash),
          tax_configuration:
            T.nilable(
              T.any(
                Orb::CustomerCreateParams::TaxConfiguration::Avalara::OrHash,
                Orb::CustomerCreateParams::TaxConfiguration::Taxjar::OrHash,
                Orb::CustomerCreateParams::TaxConfiguration::Sphere::OrHash
              )
            ),
          tax_id: T.nilable(Orb::CustomerCreateParams::TaxID::OrHash),
          timezone: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override.returns(
          {
            email: String,
            name: String,
            accounting_sync_configuration:
              T.nilable(Orb::CustomerCreateParams::AccountingSyncConfiguration),
            additional_emails: T.nilable(T::Array[String]),
            auto_collection: T.nilable(T::Boolean),
            billing_address:
              T.nilable(Orb::CustomerCreateParams::BillingAddress),
            currency: T.nilable(String),
            email_delivery: T.nilable(T::Boolean),
            external_customer_id: T.nilable(String),
            hierarchy: T.nilable(Orb::CustomerCreateParams::Hierarchy),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            payment_provider:
              T.nilable(Orb::CustomerCreateParams::PaymentProvider::OrSymbol),
            payment_provider_id: T.nilable(String),
            reporting_configuration:
              T.nilable(Orb::CustomerCreateParams::ReportingConfiguration),
            shipping_address:
              T.nilable(Orb::CustomerCreateParams::ShippingAddress),
            tax_configuration:
              T.nilable(
                T.any(
                  Orb::CustomerCreateParams::TaxConfiguration::Avalara,
                  Orb::CustomerCreateParams::TaxConfiguration::Taxjar,
                  Orb::CustomerCreateParams::TaxConfiguration::Sphere
                )
              ),
            tax_id: T.nilable(Orb::CustomerCreateParams::TaxID),
            timezone: T.nilable(String),
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
              Orb::CustomerCreateParams::AccountingSyncConfiguration,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::CustomerCreateParams::AccountingSyncConfiguration::AccountingProvider
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
                  Orb::CustomerCreateParams::AccountingSyncConfiguration::AccountingProvider::OrHash
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
                    Orb::CustomerCreateParams::AccountingSyncConfiguration::AccountingProvider
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
                Orb::CustomerCreateParams::AccountingSyncConfiguration::AccountingProvider,
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
              Orb::CustomerCreateParams::BillingAddress,
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
            T.any(Orb::CustomerCreateParams::Hierarchy, Orb::Internal::AnyHash)
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
      # When not in test mode, the connection must first be configured in the Orb
      # webapp.
      module PaymentProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CustomerCreateParams::PaymentProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUICKBOOKS =
          T.let(
            :quickbooks,
            Orb::CustomerCreateParams::PaymentProvider::TaggedSymbol
          )
        BILL_COM =
          T.let(
            :"bill.com",
            Orb::CustomerCreateParams::PaymentProvider::TaggedSymbol
          )
        STRIPE_CHARGE =
          T.let(
            :stripe_charge,
            Orb::CustomerCreateParams::PaymentProvider::TaggedSymbol
          )
        STRIPE_INVOICE =
          T.let(
            :stripe_invoice,
            Orb::CustomerCreateParams::PaymentProvider::TaggedSymbol
          )
        NETSUITE =
          T.let(
            :netsuite,
            Orb::CustomerCreateParams::PaymentProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::CustomerCreateParams::PaymentProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ReportingConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerCreateParams::ReportingConfiguration,
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
              Orb::CustomerCreateParams::ShippingAddress,
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
              Orb::CustomerCreateParams::TaxConfiguration::Avalara,
              Orb::CustomerCreateParams::TaxConfiguration::Taxjar,
              Orb::CustomerCreateParams::TaxConfiguration::Sphere
            )
          end

        class Avalara < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerCreateParams::TaxConfiguration::Avalara,
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
                Orb::CustomerCreateParams::TaxConfiguration::Taxjar,
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

        class Sphere < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerCreateParams::TaxConfiguration::Sphere,
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
          def self.new(tax_exempt:, tax_provider: :sphere)
          end

          sig do
            override.returns({ tax_exempt: T::Boolean, tax_provider: Symbol })
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Orb::CustomerCreateParams::TaxConfiguration::Variants]
          )
        end
        def self.variants
        end
      end

      class TaxID < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::CustomerCreateParams::TaxID, Orb::Internal::AnyHash)
          end

        sig { returns(Orb::CustomerCreateParams::TaxID::Country::OrSymbol) }
        attr_accessor :country

        sig { returns(Orb::CustomerCreateParams::TaxID::Type::OrSymbol) }
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
            country: Orb::CustomerCreateParams::TaxID::Country::OrSymbol,
            type: Orb::CustomerCreateParams::TaxID::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(country:, type:, value:)
        end

        sig do
          override.returns(
            {
              country: Orb::CustomerCreateParams::TaxID::Country::OrSymbol,
              type: Orb::CustomerCreateParams::TaxID::Type::OrSymbol,
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
              T.all(Symbol, Orb::CustomerCreateParams::TaxID::Country)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD =
            T.let(:AD, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          AE =
            T.let(:AE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          AR =
            T.let(:AR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          AT =
            T.let(:AT, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          AU =
            T.let(:AU, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          BE =
            T.let(:BE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          BG =
            T.let(:BG, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          BH =
            T.let(:BH, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          BO =
            T.let(:BO, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          BR =
            T.let(:BR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CA =
            T.let(:CA, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CH =
            T.let(:CH, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CL =
            T.let(:CL, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CN =
            T.let(:CN, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CO =
            T.let(:CO, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CR =
            T.let(:CR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CY =
            T.let(:CY, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          CZ =
            T.let(:CZ, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          DE =
            T.let(:DE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          DK =
            T.let(:DK, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          EE =
            T.let(:EE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          DO =
            T.let(:DO, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          EC =
            T.let(:EC, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          EG =
            T.let(:EG, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          ES =
            T.let(:ES, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          EU =
            T.let(:EU, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          FI =
            T.let(:FI, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          FR =
            T.let(:FR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          GB =
            T.let(:GB, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          GE =
            T.let(:GE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          GR =
            T.let(:GR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          HK =
            T.let(:HK, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          HR =
            T.let(:HR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          HU =
            T.let(:HU, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          ID =
            T.let(:ID, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          IE =
            T.let(:IE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          IL =
            T.let(:IL, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          IN =
            T.let(:IN, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          IS =
            T.let(:IS, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          IT =
            T.let(:IT, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          JP =
            T.let(:JP, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          KE =
            T.let(:KE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          KR =
            T.let(:KR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          KZ =
            T.let(:KZ, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          LI =
            T.let(:LI, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          LT =
            T.let(:LT, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          LU =
            T.let(:LU, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          LV =
            T.let(:LV, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          MT =
            T.let(:MT, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          MX =
            T.let(:MX, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          MY =
            T.let(:MY, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          NG =
            T.let(:NG, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          NL =
            T.let(:NL, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          NO =
            T.let(:NO, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          NZ =
            T.let(:NZ, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          OM =
            T.let(:OM, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          PE =
            T.let(:PE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          PH =
            T.let(:PH, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          PL =
            T.let(:PL, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          PT =
            T.let(:PT, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          RO =
            T.let(:RO, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          RS =
            T.let(:RS, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          RU =
            T.let(:RU, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          SA =
            T.let(:SA, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          SE =
            T.let(:SE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          SG =
            T.let(:SG, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          SI =
            T.let(:SI, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          SK =
            T.let(:SK, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          SV =
            T.let(:SV, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          TH =
            T.let(:TH, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          TR =
            T.let(:TR, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          TW =
            T.let(:TW, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          UA =
            T.let(:UA, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          US =
            T.let(:US, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          UY =
            T.let(:UY, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          VE =
            T.let(:VE, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          VN =
            T.let(:VN, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)
          ZA =
            T.let(:ZA, Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::CustomerCreateParams::TaxID::Country::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::CustomerCreateParams::TaxID::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_NRT =
            T.let(:ad_nrt, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          AE_TRN =
            T.let(:ae_trn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          AR_CUIT =
            T.let(
              :ar_cuit,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          EU_VAT =
            T.let(:eu_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          AU_ABN =
            T.let(:au_abn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          AU_ARN =
            T.let(:au_arn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          BG_UIC =
            T.let(:bg_uic, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          BH_VAT =
            T.let(:bh_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          BO_TIN =
            T.let(:bo_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          BR_CNPJ =
            T.let(
              :br_cnpj,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          BR_CPF =
            T.let(:br_cpf, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CA_BN =
            T.let(:ca_bn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CA_GST_HST =
            T.let(
              :ca_gst_hst,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_BC =
            T.let(
              :ca_pst_bc,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_MB =
            T.let(
              :ca_pst_mb,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_SK =
            T.let(
              :ca_pst_sk,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          CA_QST =
            T.let(:ca_qst, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CH_VAT =
            T.let(:ch_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CL_TIN =
            T.let(:cl_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CN_TIN =
            T.let(:cn_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CO_NIT =
            T.let(:co_nit, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          CR_TIN =
            T.let(:cr_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          DO_RCN =
            T.let(:do_rcn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          EC_RUC =
            T.let(:ec_ruc, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          EG_TIN =
            T.let(:eg_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          ES_CIF =
            T.let(:es_cif, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          EU_OSS_VAT =
            T.let(
              :eu_oss_vat,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          GB_VAT =
            T.let(:gb_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          GE_VAT =
            T.let(:ge_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          HK_BR =
            T.let(:hk_br, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          HU_TIN =
            T.let(:hu_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          ID_NPWP =
            T.let(
              :id_npwp,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          IL_VAT =
            T.let(:il_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          IN_GST =
            T.let(:in_gst, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          IS_VAT =
            T.let(:is_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          JP_CN =
            T.let(:jp_cn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          JP_RN =
            T.let(:jp_rn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          JP_TRN =
            T.let(:jp_trn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          KE_PIN =
            T.let(:ke_pin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          KR_BRN =
            T.let(:kr_brn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          KZ_BIN =
            T.let(:kz_bin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          LI_UID =
            T.let(:li_uid, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          MX_RFC =
            T.let(:mx_rfc, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          MY_FRP =
            T.let(:my_frp, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          MY_ITN =
            T.let(:my_itn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          MY_SST =
            T.let(:my_sst, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          NG_TIN =
            T.let(:ng_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          NO_VAT =
            T.let(:no_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          NO_VOEC =
            T.let(
              :no_voec,
              Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol
            )
          NZ_GST =
            T.let(:nz_gst, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          OM_VAT =
            T.let(:om_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          PE_RUC =
            T.let(:pe_ruc, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          PH_TIN =
            T.let(:ph_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          RO_TIN =
            T.let(:ro_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          RS_PIB =
            T.let(:rs_pib, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          RU_INN =
            T.let(:ru_inn, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          RU_KPP =
            T.let(:ru_kpp, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          SA_VAT =
            T.let(:sa_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          SG_GST =
            T.let(:sg_gst, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          SG_UEN =
            T.let(:sg_uen, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          SI_TIN =
            T.let(:si_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          SV_NIT =
            T.let(:sv_nit, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          TH_VAT =
            T.let(:th_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          TR_TIN =
            T.let(:tr_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          TW_VAT =
            T.let(:tw_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          UA_VAT =
            T.let(:ua_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          US_EIN =
            T.let(:us_ein, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          UY_RUC =
            T.let(:uy_ruc, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          VE_RIF =
            T.let(:ve_rif, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          VN_TIN =
            T.let(:vn_tin, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)
          ZA_VAT =
            T.let(:za_vat, Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::CustomerCreateParams::TaxID::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
