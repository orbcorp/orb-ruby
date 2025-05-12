# typed: strong

module Orb
  module Models
    class Customer < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Customer, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[String]) }
      attr_accessor :additional_emails

      sig { returns(T::Boolean) }
      attr_accessor :auto_collection

      # The customer's current balance in their currency.
      sig { returns(String) }
      attr_accessor :balance

      sig { returns(T.nilable(Orb::Customer::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address: T.nilable(Orb::Customer::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # A valid customer email, to be used for notifications. When Orb triggers payment
      # through a payment gateway, this email will be used for any automatically issued
      # receipts.
      sig { returns(String) }
      attr_accessor :email

      sig { returns(T::Boolean) }
      attr_accessor :email_delivery

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :exempt_from_automated_tax

      # An optional user-defined ID for this customer resource, used throughout the
      # system as an alias for this Customer. Use this field to identify a customer by
      # an existing identifier in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # The hierarchical relationships for this customer.
      sig { returns(Orb::Customer::Hierarchy) }
      attr_reader :hierarchy

      sig { params(hierarchy: Orb::Customer::Hierarchy::OrHash).void }
      attr_writer :hierarchy

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The full name of the customer
      sig { returns(String) }
      attr_accessor :name

      # This is used for creating charges or invoices in an external system via Orb.
      # When not in test mode, the connection must first be configured in the Orb
      # webapp.
      sig { returns(T.nilable(Orb::Customer::PaymentProvider::TaggedSymbol)) }
      attr_accessor :payment_provider

      # The ID of this customer in an external payments solution, such as Stripe. This
      # is used for creating charges or invoices in the external system via Orb.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig { returns(T.nilable(String)) }
      attr_accessor :portal_url

      sig { returns(T.nilable(Orb::Customer::ShippingAddress)) }
      attr_reader :shipping_address

      sig do
        params(
          shipping_address: T.nilable(Orb::Customer::ShippingAddress::OrHash)
        ).void
      end
      attr_writer :shipping_address

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
      sig { returns(T.nilable(Orb::Customer::TaxID)) }
      attr_reader :tax_id

      sig { params(tax_id: T.nilable(Orb::Customer::TaxID::OrHash)).void }
      attr_writer :tax_id

      # A timezone identifier from the IANA timezone database, such as
      # "America/Los_Angeles". This "defaults to your account's timezone if not set.
      # This cannot be changed after customer creation.
      sig { returns(String) }
      attr_accessor :timezone

      sig { returns(T.nilable(Orb::Customer::AccountingSyncConfiguration)) }
      attr_reader :accounting_sync_configuration

      sig do
        params(
          accounting_sync_configuration:
            T.nilable(Orb::Customer::AccountingSyncConfiguration::OrHash)
        ).void
      end
      attr_writer :accounting_sync_configuration

      sig { returns(T.nilable(Orb::Customer::ReportingConfiguration)) }
      attr_reader :reporting_configuration

      sig do
        params(
          reporting_configuration:
            T.nilable(Orb::Customer::ReportingConfiguration::OrHash)
        ).void
      end
      attr_writer :reporting_configuration

      # A customer is a buyer of your products, and the other party to the billing
      # relationship.
      #
      # In Orb, customers are assigned system generated identifiers automatically, but
      # it's often desirable to have these match existing identifiers in your system. To
      # avoid having to denormalize Orb ID information, you can pass in an
      # `external_customer_id` with your own identifier. See
      # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      # information about how these aliases work in Orb.
      #
      # In addition to having an identifier in your system, a customer may exist in a
      # payment provider solution like Stripe. Use the `payment_provider_id` and the
      # `payment_provider` enum field to express this mapping.
      #
      # A customer also has a timezone (from the standard
      # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      # your account's timezone. See [Timezone localization](/essentials/timezones) for
      # information on what this timezone parameter influences within Orb.
      sig do
        params(
          id: String,
          additional_emails: T::Array[String],
          auto_collection: T::Boolean,
          balance: String,
          billing_address: T.nilable(Orb::Customer::BillingAddress::OrHash),
          created_at: Time,
          currency: T.nilable(String),
          email: String,
          email_delivery: T::Boolean,
          exempt_from_automated_tax: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: Orb::Customer::Hierarchy::OrHash,
          metadata: T::Hash[Symbol, String],
          name: String,
          payment_provider: T.nilable(Orb::Customer::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          portal_url: T.nilable(String),
          shipping_address: T.nilable(Orb::Customer::ShippingAddress::OrHash),
          tax_id: T.nilable(Orb::Customer::TaxID::OrHash),
          timezone: String,
          accounting_sync_configuration:
            T.nilable(Orb::Customer::AccountingSyncConfiguration::OrHash),
          reporting_configuration:
            T.nilable(Orb::Customer::ReportingConfiguration::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        additional_emails:,
        auto_collection:,
        # The customer's current balance in their currency.
        balance:,
        billing_address:,
        created_at:,
        currency:,
        # A valid customer email, to be used for notifications. When Orb triggers payment
        # through a payment gateway, this email will be used for any automatically issued
        # receipts.
        email:,
        email_delivery:,
        exempt_from_automated_tax:,
        # An optional user-defined ID for this customer resource, used throughout the
        # system as an alias for this Customer. Use this field to identify a customer by
        # an existing identifier in your system.
        external_customer_id:,
        # The hierarchical relationships for this customer.
        hierarchy:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        # The full name of the customer
        name:,
        # This is used for creating charges or invoices in an external system via Orb.
        # When not in test mode, the connection must first be configured in the Orb
        # webapp.
        payment_provider:,
        # The ID of this customer in an external payments solution, such as Stripe. This
        # is used for creating charges or invoices in the external system via Orb.
        payment_provider_id:,
        portal_url:,
        shipping_address:,
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
        tax_id:,
        # A timezone identifier from the IANA timezone database, such as
        # "America/Los_Angeles". This "defaults to your account's timezone if not set.
        # This cannot be changed after customer creation.
        timezone:,
        accounting_sync_configuration: nil,
        reporting_configuration: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            additional_emails: T::Array[String],
            auto_collection: T::Boolean,
            balance: String,
            billing_address: T.nilable(Orb::Customer::BillingAddress),
            created_at: Time,
            currency: T.nilable(String),
            email: String,
            email_delivery: T::Boolean,
            exempt_from_automated_tax: T.nilable(T::Boolean),
            external_customer_id: T.nilable(String),
            hierarchy: Orb::Customer::Hierarchy,
            metadata: T::Hash[Symbol, String],
            name: String,
            payment_provider:
              T.nilable(Orb::Customer::PaymentProvider::TaggedSymbol),
            payment_provider_id: T.nilable(String),
            portal_url: T.nilable(String),
            shipping_address: T.nilable(Orb::Customer::ShippingAddress),
            tax_id: T.nilable(Orb::Customer::TaxID),
            timezone: String,
            accounting_sync_configuration:
              T.nilable(Orb::Customer::AccountingSyncConfiguration),
            reporting_configuration:
              T.nilable(Orb::Customer::ReportingConfiguration)
          }
        )
      end
      def to_hash
      end

      class BillingAddress < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Customer::BillingAddress, Orb::Internal::AnyHash)
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
        def self.new(city:, country:, line1:, line2:, postal_code:, state:)
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
            T.any(Orb::Customer::Hierarchy, Orb::Internal::AnyHash)
          end

        sig { returns(T::Array[Orb::Customer::Hierarchy::Child]) }
        attr_accessor :children

        sig { returns(T.nilable(Orb::Customer::Hierarchy::Parent)) }
        attr_reader :parent

        sig do
          params(
            parent: T.nilable(Orb::Customer::Hierarchy::Parent::OrHash)
          ).void
        end
        attr_writer :parent

        # The hierarchical relationships for this customer.
        sig do
          params(
            children: T::Array[Orb::Customer::Hierarchy::Child::OrHash],
            parent: T.nilable(Orb::Customer::Hierarchy::Parent::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(children:, parent:)
        end

        sig do
          override.returns(
            {
              children: T::Array[Orb::Customer::Hierarchy::Child],
              parent: T.nilable(Orb::Customer::Hierarchy::Parent)
            }
          )
        end
        def to_hash
        end

        class Child < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Customer::Hierarchy::Child, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :external_customer_id

          sig do
            params(id: String, external_customer_id: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(id:, external_customer_id:)
          end

          sig do
            override.returns(
              { id: String, external_customer_id: T.nilable(String) }
            )
          end
          def to_hash
          end
        end

        class Parent < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Customer::Hierarchy::Parent, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :external_customer_id

          sig do
            params(id: String, external_customer_id: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(id:, external_customer_id:)
          end

          sig do
            override.returns(
              { id: String, external_customer_id: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      # This is used for creating charges or invoices in an external system via Orb.
      # When not in test mode, the connection must first be configured in the Orb
      # webapp.
      module PaymentProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::Customer::PaymentProvider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUICKBOOKS =
          T.let(:quickbooks, Orb::Customer::PaymentProvider::TaggedSymbol)
        BILL_COM =
          T.let(:"bill.com", Orb::Customer::PaymentProvider::TaggedSymbol)
        STRIPE_CHARGE =
          T.let(:stripe_charge, Orb::Customer::PaymentProvider::TaggedSymbol)
        STRIPE_INVOICE =
          T.let(:stripe_invoice, Orb::Customer::PaymentProvider::TaggedSymbol)
        NETSUITE =
          T.let(:netsuite, Orb::Customer::PaymentProvider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::Customer::PaymentProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ShippingAddress < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Customer::ShippingAddress, Orb::Internal::AnyHash)
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
        def self.new(city:, country:, line1:, line2:, postal_code:, state:)
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

      class TaxID < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Customer::TaxID, Orb::Internal::AnyHash) }

        sig { returns(Orb::Customer::TaxID::Country::TaggedSymbol) }
        attr_accessor :country

        sig { returns(Orb::Customer::TaxID::Type::TaggedSymbol) }
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
            country: Orb::Customer::TaxID::Country::OrSymbol,
            type: Orb::Customer::TaxID::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(country:, type:, value:)
        end

        sig do
          override.returns(
            {
              country: Orb::Customer::TaxID::Country::TaggedSymbol,
              type: Orb::Customer::TaxID::Type::TaggedSymbol,
              value: String
            }
          )
        end
        def to_hash
        end

        module Country
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Customer::TaxID::Country) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD = T.let(:AD, Orb::Customer::TaxID::Country::TaggedSymbol)
          AE = T.let(:AE, Orb::Customer::TaxID::Country::TaggedSymbol)
          AR = T.let(:AR, Orb::Customer::TaxID::Country::TaggedSymbol)
          AT = T.let(:AT, Orb::Customer::TaxID::Country::TaggedSymbol)
          AU = T.let(:AU, Orb::Customer::TaxID::Country::TaggedSymbol)
          BE = T.let(:BE, Orb::Customer::TaxID::Country::TaggedSymbol)
          BG = T.let(:BG, Orb::Customer::TaxID::Country::TaggedSymbol)
          BH = T.let(:BH, Orb::Customer::TaxID::Country::TaggedSymbol)
          BO = T.let(:BO, Orb::Customer::TaxID::Country::TaggedSymbol)
          BR = T.let(:BR, Orb::Customer::TaxID::Country::TaggedSymbol)
          CA = T.let(:CA, Orb::Customer::TaxID::Country::TaggedSymbol)
          CH = T.let(:CH, Orb::Customer::TaxID::Country::TaggedSymbol)
          CL = T.let(:CL, Orb::Customer::TaxID::Country::TaggedSymbol)
          CN = T.let(:CN, Orb::Customer::TaxID::Country::TaggedSymbol)
          CO = T.let(:CO, Orb::Customer::TaxID::Country::TaggedSymbol)
          CR = T.let(:CR, Orb::Customer::TaxID::Country::TaggedSymbol)
          CY = T.let(:CY, Orb::Customer::TaxID::Country::TaggedSymbol)
          CZ = T.let(:CZ, Orb::Customer::TaxID::Country::TaggedSymbol)
          DE = T.let(:DE, Orb::Customer::TaxID::Country::TaggedSymbol)
          DK = T.let(:DK, Orb::Customer::TaxID::Country::TaggedSymbol)
          EE = T.let(:EE, Orb::Customer::TaxID::Country::TaggedSymbol)
          DO = T.let(:DO, Orb::Customer::TaxID::Country::TaggedSymbol)
          EC = T.let(:EC, Orb::Customer::TaxID::Country::TaggedSymbol)
          EG = T.let(:EG, Orb::Customer::TaxID::Country::TaggedSymbol)
          ES = T.let(:ES, Orb::Customer::TaxID::Country::TaggedSymbol)
          EU = T.let(:EU, Orb::Customer::TaxID::Country::TaggedSymbol)
          FI = T.let(:FI, Orb::Customer::TaxID::Country::TaggedSymbol)
          FR = T.let(:FR, Orb::Customer::TaxID::Country::TaggedSymbol)
          GB = T.let(:GB, Orb::Customer::TaxID::Country::TaggedSymbol)
          GE = T.let(:GE, Orb::Customer::TaxID::Country::TaggedSymbol)
          GR = T.let(:GR, Orb::Customer::TaxID::Country::TaggedSymbol)
          HK = T.let(:HK, Orb::Customer::TaxID::Country::TaggedSymbol)
          HR = T.let(:HR, Orb::Customer::TaxID::Country::TaggedSymbol)
          HU = T.let(:HU, Orb::Customer::TaxID::Country::TaggedSymbol)
          ID = T.let(:ID, Orb::Customer::TaxID::Country::TaggedSymbol)
          IE = T.let(:IE, Orb::Customer::TaxID::Country::TaggedSymbol)
          IL = T.let(:IL, Orb::Customer::TaxID::Country::TaggedSymbol)
          IN = T.let(:IN, Orb::Customer::TaxID::Country::TaggedSymbol)
          IS = T.let(:IS, Orb::Customer::TaxID::Country::TaggedSymbol)
          IT = T.let(:IT, Orb::Customer::TaxID::Country::TaggedSymbol)
          JP = T.let(:JP, Orb::Customer::TaxID::Country::TaggedSymbol)
          KE = T.let(:KE, Orb::Customer::TaxID::Country::TaggedSymbol)
          KR = T.let(:KR, Orb::Customer::TaxID::Country::TaggedSymbol)
          KZ = T.let(:KZ, Orb::Customer::TaxID::Country::TaggedSymbol)
          LI = T.let(:LI, Orb::Customer::TaxID::Country::TaggedSymbol)
          LT = T.let(:LT, Orb::Customer::TaxID::Country::TaggedSymbol)
          LU = T.let(:LU, Orb::Customer::TaxID::Country::TaggedSymbol)
          LV = T.let(:LV, Orb::Customer::TaxID::Country::TaggedSymbol)
          MT = T.let(:MT, Orb::Customer::TaxID::Country::TaggedSymbol)
          MX = T.let(:MX, Orb::Customer::TaxID::Country::TaggedSymbol)
          MY = T.let(:MY, Orb::Customer::TaxID::Country::TaggedSymbol)
          NG = T.let(:NG, Orb::Customer::TaxID::Country::TaggedSymbol)
          NL = T.let(:NL, Orb::Customer::TaxID::Country::TaggedSymbol)
          NO = T.let(:NO, Orb::Customer::TaxID::Country::TaggedSymbol)
          NZ = T.let(:NZ, Orb::Customer::TaxID::Country::TaggedSymbol)
          OM = T.let(:OM, Orb::Customer::TaxID::Country::TaggedSymbol)
          PE = T.let(:PE, Orb::Customer::TaxID::Country::TaggedSymbol)
          PH = T.let(:PH, Orb::Customer::TaxID::Country::TaggedSymbol)
          PL = T.let(:PL, Orb::Customer::TaxID::Country::TaggedSymbol)
          PT = T.let(:PT, Orb::Customer::TaxID::Country::TaggedSymbol)
          RO = T.let(:RO, Orb::Customer::TaxID::Country::TaggedSymbol)
          RS = T.let(:RS, Orb::Customer::TaxID::Country::TaggedSymbol)
          RU = T.let(:RU, Orb::Customer::TaxID::Country::TaggedSymbol)
          SA = T.let(:SA, Orb::Customer::TaxID::Country::TaggedSymbol)
          SE = T.let(:SE, Orb::Customer::TaxID::Country::TaggedSymbol)
          SG = T.let(:SG, Orb::Customer::TaxID::Country::TaggedSymbol)
          SI = T.let(:SI, Orb::Customer::TaxID::Country::TaggedSymbol)
          SK = T.let(:SK, Orb::Customer::TaxID::Country::TaggedSymbol)
          SV = T.let(:SV, Orb::Customer::TaxID::Country::TaggedSymbol)
          TH = T.let(:TH, Orb::Customer::TaxID::Country::TaggedSymbol)
          TR = T.let(:TR, Orb::Customer::TaxID::Country::TaggedSymbol)
          TW = T.let(:TW, Orb::Customer::TaxID::Country::TaggedSymbol)
          UA = T.let(:UA, Orb::Customer::TaxID::Country::TaggedSymbol)
          US = T.let(:US, Orb::Customer::TaxID::Country::TaggedSymbol)
          UY = T.let(:UY, Orb::Customer::TaxID::Country::TaggedSymbol)
          VE = T.let(:VE, Orb::Customer::TaxID::Country::TaggedSymbol)
          VN = T.let(:VN, Orb::Customer::TaxID::Country::TaggedSymbol)
          ZA = T.let(:ZA, Orb::Customer::TaxID::Country::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Customer::TaxID::Country::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Customer::TaxID::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_NRT = T.let(:ad_nrt, Orb::Customer::TaxID::Type::TaggedSymbol)
          AE_TRN = T.let(:ae_trn, Orb::Customer::TaxID::Type::TaggedSymbol)
          AR_CUIT = T.let(:ar_cuit, Orb::Customer::TaxID::Type::TaggedSymbol)
          EU_VAT = T.let(:eu_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          AU_ABN = T.let(:au_abn, Orb::Customer::TaxID::Type::TaggedSymbol)
          AU_ARN = T.let(:au_arn, Orb::Customer::TaxID::Type::TaggedSymbol)
          BG_UIC = T.let(:bg_uic, Orb::Customer::TaxID::Type::TaggedSymbol)
          BH_VAT = T.let(:bh_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          BO_TIN = T.let(:bo_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          BR_CNPJ = T.let(:br_cnpj, Orb::Customer::TaxID::Type::TaggedSymbol)
          BR_CPF = T.let(:br_cpf, Orb::Customer::TaxID::Type::TaggedSymbol)
          CA_BN = T.let(:ca_bn, Orb::Customer::TaxID::Type::TaggedSymbol)
          CA_GST_HST =
            T.let(:ca_gst_hst, Orb::Customer::TaxID::Type::TaggedSymbol)
          CA_PST_BC =
            T.let(:ca_pst_bc, Orb::Customer::TaxID::Type::TaggedSymbol)
          CA_PST_MB =
            T.let(:ca_pst_mb, Orb::Customer::TaxID::Type::TaggedSymbol)
          CA_PST_SK =
            T.let(:ca_pst_sk, Orb::Customer::TaxID::Type::TaggedSymbol)
          CA_QST = T.let(:ca_qst, Orb::Customer::TaxID::Type::TaggedSymbol)
          CH_VAT = T.let(:ch_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          CL_TIN = T.let(:cl_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          CN_TIN = T.let(:cn_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          CO_NIT = T.let(:co_nit, Orb::Customer::TaxID::Type::TaggedSymbol)
          CR_TIN = T.let(:cr_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          DO_RCN = T.let(:do_rcn, Orb::Customer::TaxID::Type::TaggedSymbol)
          EC_RUC = T.let(:ec_ruc, Orb::Customer::TaxID::Type::TaggedSymbol)
          EG_TIN = T.let(:eg_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          ES_CIF = T.let(:es_cif, Orb::Customer::TaxID::Type::TaggedSymbol)
          EU_OSS_VAT =
            T.let(:eu_oss_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          GB_VAT = T.let(:gb_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          GE_VAT = T.let(:ge_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          HK_BR = T.let(:hk_br, Orb::Customer::TaxID::Type::TaggedSymbol)
          HU_TIN = T.let(:hu_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          ID_NPWP = T.let(:id_npwp, Orb::Customer::TaxID::Type::TaggedSymbol)
          IL_VAT = T.let(:il_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          IN_GST = T.let(:in_gst, Orb::Customer::TaxID::Type::TaggedSymbol)
          IS_VAT = T.let(:is_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          JP_CN = T.let(:jp_cn, Orb::Customer::TaxID::Type::TaggedSymbol)
          JP_RN = T.let(:jp_rn, Orb::Customer::TaxID::Type::TaggedSymbol)
          JP_TRN = T.let(:jp_trn, Orb::Customer::TaxID::Type::TaggedSymbol)
          KE_PIN = T.let(:ke_pin, Orb::Customer::TaxID::Type::TaggedSymbol)
          KR_BRN = T.let(:kr_brn, Orb::Customer::TaxID::Type::TaggedSymbol)
          KZ_BIN = T.let(:kz_bin, Orb::Customer::TaxID::Type::TaggedSymbol)
          LI_UID = T.let(:li_uid, Orb::Customer::TaxID::Type::TaggedSymbol)
          MX_RFC = T.let(:mx_rfc, Orb::Customer::TaxID::Type::TaggedSymbol)
          MY_FRP = T.let(:my_frp, Orb::Customer::TaxID::Type::TaggedSymbol)
          MY_ITN = T.let(:my_itn, Orb::Customer::TaxID::Type::TaggedSymbol)
          MY_SST = T.let(:my_sst, Orb::Customer::TaxID::Type::TaggedSymbol)
          NG_TIN = T.let(:ng_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          NO_VAT = T.let(:no_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          NO_VOEC = T.let(:no_voec, Orb::Customer::TaxID::Type::TaggedSymbol)
          NZ_GST = T.let(:nz_gst, Orb::Customer::TaxID::Type::TaggedSymbol)
          OM_VAT = T.let(:om_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          PE_RUC = T.let(:pe_ruc, Orb::Customer::TaxID::Type::TaggedSymbol)
          PH_TIN = T.let(:ph_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          RO_TIN = T.let(:ro_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          RS_PIB = T.let(:rs_pib, Orb::Customer::TaxID::Type::TaggedSymbol)
          RU_INN = T.let(:ru_inn, Orb::Customer::TaxID::Type::TaggedSymbol)
          RU_KPP = T.let(:ru_kpp, Orb::Customer::TaxID::Type::TaggedSymbol)
          SA_VAT = T.let(:sa_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          SG_GST = T.let(:sg_gst, Orb::Customer::TaxID::Type::TaggedSymbol)
          SG_UEN = T.let(:sg_uen, Orb::Customer::TaxID::Type::TaggedSymbol)
          SI_TIN = T.let(:si_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          SV_NIT = T.let(:sv_nit, Orb::Customer::TaxID::Type::TaggedSymbol)
          TH_VAT = T.let(:th_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          TR_TIN = T.let(:tr_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          TW_VAT = T.let(:tw_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          UA_VAT = T.let(:ua_vat, Orb::Customer::TaxID::Type::TaggedSymbol)
          US_EIN = T.let(:us_ein, Orb::Customer::TaxID::Type::TaggedSymbol)
          UY_RUC = T.let(:uy_ruc, Orb::Customer::TaxID::Type::TaggedSymbol)
          VE_RIF = T.let(:ve_rif, Orb::Customer::TaxID::Type::TaggedSymbol)
          VN_TIN = T.let(:vn_tin, Orb::Customer::TaxID::Type::TaggedSymbol)
          ZA_VAT = T.let(:za_vat, Orb::Customer::TaxID::Type::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Customer::TaxID::Type::TaggedSymbol])
          end
          def self.values
          end
        end
      end

      class AccountingSyncConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Customer::AccountingSyncConfiguration,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Orb::Customer::AccountingSyncConfiguration::AccountingProvider
            ]
          )
        end
        attr_accessor :accounting_providers

        sig { returns(T::Boolean) }
        attr_accessor :excluded

        sig do
          params(
            accounting_providers:
              T::Array[
                Orb::Customer::AccountingSyncConfiguration::AccountingProvider::OrHash
              ],
            excluded: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(accounting_providers:, excluded:)
        end

        sig do
          override.returns(
            {
              accounting_providers:
                T::Array[
                  Orb::Customer::AccountingSyncConfiguration::AccountingProvider
                ],
              excluded: T::Boolean
            }
          )
        end
        def to_hash
        end

        class AccountingProvider < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Customer::AccountingSyncConfiguration::AccountingProvider,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :external_provider_id

          sig do
            returns(
              Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
            )
          end
          attr_accessor :provider_type

          sig do
            params(
              external_provider_id: T.nilable(String),
              provider_type:
                Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(external_provider_id:, provider_type:)
          end

          sig do
            override.returns(
              {
                external_provider_id: T.nilable(String),
                provider_type:
                  Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module ProviderType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUICKBOOKS =
              T.let(
                :quickbooks,
                Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class ReportingConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Customer::ReportingConfiguration, Orb::Internal::AnyHash)
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
    end
  end
end
