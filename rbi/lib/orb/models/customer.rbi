# typed: strong

module Orb
  module Models
    class Customer < Orb::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[String]) }
      attr_accessor :additional_emails

      sig { returns(T::Boolean) }
      attr_accessor :auto_collection

      # The customer's current balance in their currency.
      sig { returns(String) }
      attr_accessor :balance

      sig { returns(T.nilable(Orb::Models::Customer::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(billing_address: T.nilable(T.any(Orb::Models::Customer::BillingAddress, Orb::Internal::AnyHash)))
          .void
      end
      attr_writer :billing_address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # A valid customer email, to be used for notifications. When Orb triggers payment
      #   through a payment gateway, this email will be used for any automatically issued
      #   receipts.
      sig { returns(String) }
      attr_accessor :email

      sig { returns(T::Boolean) }
      attr_accessor :email_delivery

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :exempt_from_automated_tax

      # An optional user-defined ID for this customer resource, used throughout the
      #   system as an alias for this Customer. Use this field to identify a customer by
      #   an existing identifier in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      # The hierarchical relationships for this customer.
      sig { returns(Orb::Models::Customer::Hierarchy) }
      attr_reader :hierarchy

      sig { params(hierarchy: T.any(Orb::Models::Customer::Hierarchy, Orb::Internal::AnyHash)).void }
      attr_writer :hierarchy

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The full name of the customer
      sig { returns(String) }
      attr_accessor :name

      # This is used for creating charges or invoices in an external system via Orb.
      #   When not in test mode, the connection must first be configured in the Orb
      #   webapp.
      sig { returns(T.nilable(Orb::Models::Customer::PaymentProvider::TaggedSymbol)) }
      attr_accessor :payment_provider

      # The ID of this customer in an external payments solution, such as Stripe. This
      #   is used for creating charges or invoices in the external system via Orb.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig { returns(T.nilable(String)) }
      attr_accessor :portal_url

      sig { returns(T.nilable(Orb::Models::Customer::ShippingAddress)) }
      attr_reader :shipping_address

      sig do
        params(shipping_address: T.nilable(T.any(Orb::Models::Customer::ShippingAddress, Orb::Internal::AnyHash)))
          .void
      end
      attr_writer :shipping_address

      # Tax IDs are commonly required to be displayed on customer invoices, which are
      #   added to the headers of invoices.
      #
      #   ### Supported Tax ID Countries and Types
      #
      #   | Country              | Type         | Description                                                                                             |
      #   | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #   | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #   | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #   | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #   | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #   | Austria              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #   | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #   | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #   | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #   | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #   | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
      #   | Canada               | `ca_bn`      | Canadian BN                                                                                             |
      #   | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #   | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #   | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #   | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #   | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #   | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
      #   | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
      #   | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
      #   | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #   | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
      #   | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
      #   | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #   | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #   | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #   | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
      #   | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #   | Finland              | `eu_vat`     | European VAT Number                                                                                     |
      #   | France               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
      #   | Germany              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Greece               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
      #   | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #   | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
      #   | India                | `in_gst`     | Indian GST Number                                                                                       |
      #   | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #   | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Israel               | `il_vat`     | Israel VAT                                                                                              |
      #   | Italy                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #   | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #   | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #   | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #   | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #   | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #   | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
      #   | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
      #   | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
      #   | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
      #   | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
      #   | Malta                | `eu_vat `    | European VAT Number                                                                                     |
      #   | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #   | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
      #   | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
      #   | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #   | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
      #   | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #   | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
      #   | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #   | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
      #   | Poland               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
      #   | Romania              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #   | Russia               | `ru_inn`     | Russian INN                                                                                             |
      #   | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
      #   | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #   | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
      #   | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
      #   | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
      #   | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
      #   | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
      #   | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #   | South Africa         | `za_vat`     | South African VAT Number                                                                                |
      #   | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
      #   | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #   | Spain                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #   | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
      #   | Thailand             | `th_vat`     | Thai VAT                                                                                                |
      #   | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #   | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
      #   | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #   | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #   | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #   | United States        | `us_ein`     | United States EIN                                                                                       |
      #   | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #   | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #   | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      sig { returns(T.nilable(Orb::Models::Customer::TaxID)) }
      attr_reader :tax_id

      sig { params(tax_id: T.nilable(T.any(Orb::Models::Customer::TaxID, Orb::Internal::AnyHash))).void }
      attr_writer :tax_id

      # A timezone identifier from the IANA timezone database, such as
      #   "America/Los_Angeles". This "defaults to your account's timezone if not set.
      #   This cannot be changed after customer creation.
      sig { returns(String) }
      attr_accessor :timezone

      sig { returns(T.nilable(Orb::Models::Customer::AccountingSyncConfiguration)) }
      attr_reader :accounting_sync_configuration

      sig do
        params(
          accounting_sync_configuration: T.nilable(T.any(Orb::Models::Customer::AccountingSyncConfiguration, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :accounting_sync_configuration

      sig { returns(T.nilable(Orb::Models::Customer::ReportingConfiguration)) }
      attr_reader :reporting_configuration

      sig do
        params(
          reporting_configuration: T.nilable(T.any(Orb::Models::Customer::ReportingConfiguration, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :reporting_configuration

      # A customer is a buyer of your products, and the other party to the billing
      #   relationship.
      #
      #   In Orb, customers are assigned system generated identifiers automatically, but
      #   it's often desirable to have these match existing identifiers in your system. To
      #   avoid having to denormalize Orb ID information, you can pass in an
      #   `external_customer_id` with your own identifier. See
      #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      #   information about how these aliases work in Orb.
      #
      #   In addition to having an identifier in your system, a customer may exist in a
      #   payment provider solution like Stripe. Use the `payment_provider_id` and the
      #   `payment_provider` enum field to express this mapping.
      #
      #   A customer also has a timezone (from the standard
      #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      #   your account's timezone. See [Timezone localization](/essentials/timezones) for
      #   information on what this timezone parameter influences within Orb.
      sig do
        params(
          id: String,
          additional_emails: T::Array[String],
          auto_collection: T::Boolean,
          balance: String,
          billing_address: T.nilable(T.any(Orb::Models::Customer::BillingAddress, Orb::Internal::AnyHash)),
          created_at: Time,
          currency: T.nilable(String),
          email: String,
          email_delivery: T::Boolean,
          exempt_from_automated_tax: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          hierarchy: T.any(Orb::Models::Customer::Hierarchy, Orb::Internal::AnyHash),
          metadata: T::Hash[Symbol, String],
          name: String,
          payment_provider: T.nilable(Orb::Models::Customer::PaymentProvider::OrSymbol),
          payment_provider_id: T.nilable(String),
          portal_url: T.nilable(String),
          shipping_address: T.nilable(T.any(Orb::Models::Customer::ShippingAddress, Orb::Internal::AnyHash)),
          tax_id: T.nilable(T.any(Orb::Models::Customer::TaxID, Orb::Internal::AnyHash)),
          timezone: String,
          accounting_sync_configuration: T.nilable(T.any(Orb::Models::Customer::AccountingSyncConfiguration, Orb::Internal::AnyHash)),
          reporting_configuration: T.nilable(T.any(Orb::Models::Customer::ReportingConfiguration, Orb::Internal::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        additional_emails:,
        auto_collection:,
        balance:,
        billing_address:,
        created_at:,
        currency:,
        email:,
        email_delivery:,
        exempt_from_automated_tax:,
        external_customer_id:,
        hierarchy:,
        metadata:,
        name:,
        payment_provider:,
        payment_provider_id:,
        portal_url:,
        shipping_address:,
        tax_id:,
        timezone:,
        accounting_sync_configuration: nil,
        reporting_configuration: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              additional_emails: T::Array[String],
              auto_collection: T::Boolean,
              balance: String,
              billing_address: T.nilable(Orb::Models::Customer::BillingAddress),
              created_at: Time,
              currency: T.nilable(String),
              email: String,
              email_delivery: T::Boolean,
              exempt_from_automated_tax: T.nilable(T::Boolean),
              external_customer_id: T.nilable(String),
              hierarchy: Orb::Models::Customer::Hierarchy,
              metadata: T::Hash[Symbol, String],
              name: String,
              payment_provider: T.nilable(Orb::Models::Customer::PaymentProvider::TaggedSymbol),
              payment_provider_id: T.nilable(String),
              portal_url: T.nilable(String),
              shipping_address: T.nilable(Orb::Models::Customer::ShippingAddress),
              tax_id: T.nilable(Orb::Models::Customer::TaxID),
              timezone: String,
              accounting_sync_configuration: T.nilable(Orb::Models::Customer::AccountingSyncConfiguration),
              reporting_configuration: T.nilable(Orb::Models::Customer::ReportingConfiguration)
            }
          )
      end
      def to_hash
      end

      class BillingAddress < Orb::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
        end
        def self.new(city:, country:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override
            .returns(
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
        sig { returns(T::Array[Orb::Models::Customer::Hierarchy::Child]) }
        attr_accessor :children

        sig { returns(T.nilable(Orb::Models::Customer::Hierarchy::Parent)) }
        attr_reader :parent

        sig { params(parent: T.nilable(T.any(Orb::Models::Customer::Hierarchy::Parent, Orb::Internal::AnyHash))).void }
        attr_writer :parent

        # The hierarchical relationships for this customer.
        sig do
          params(
            children: T::Array[T.any(Orb::Models::Customer::Hierarchy::Child, Orb::Internal::AnyHash)],
            parent: T.nilable(T.any(Orb::Models::Customer::Hierarchy::Parent, Orb::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(children:, parent:)
        end

        sig do
          override
            .returns(
              {
                children: T::Array[Orb::Models::Customer::Hierarchy::Child],
                parent: T.nilable(Orb::Models::Customer::Hierarchy::Parent)
              }
            )
        end
        def to_hash
        end

        class Child < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :external_customer_id

          sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
          def self.new(id:, external_customer_id:)
          end

          sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
          def to_hash
          end
        end

        class Parent < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :external_customer_id

          sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
          def self.new(id:, external_customer_id:)
          end

          sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
          def to_hash
          end
        end
      end

      # This is used for creating charges or invoices in an external system via Orb.
      #   When not in test mode, the connection must first be configured in the Orb
      #   webapp.
      module PaymentProvider
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Customer::PaymentProvider) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Customer::PaymentProvider::TaggedSymbol) }

        QUICKBOOKS = T.let(:quickbooks, Orb::Models::Customer::PaymentProvider::TaggedSymbol)
        BILL_COM = T.let(:"bill.com", Orb::Models::Customer::PaymentProvider::TaggedSymbol)
        STRIPE_CHARGE = T.let(:stripe_charge, Orb::Models::Customer::PaymentProvider::TaggedSymbol)
        STRIPE_INVOICE = T.let(:stripe_invoice, Orb::Models::Customer::PaymentProvider::TaggedSymbol)
        NETSUITE = T.let(:netsuite, Orb::Models::Customer::PaymentProvider::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::Customer::PaymentProvider::TaggedSymbol]) }
        def self.values
        end
      end

      class ShippingAddress < Orb::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
        end
        def self.new(city:, country:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override
            .returns(
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
        sig { returns(Orb::Models::Customer::TaxID::Country::TaggedSymbol) }
        attr_accessor :country

        sig { returns(Orb::Models::Customer::TaxID::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        # Tax IDs are commonly required to be displayed on customer invoices, which are
        #   added to the headers of invoices.
        #
        #   ### Supported Tax ID Countries and Types
        #
        #   | Country              | Type         | Description                                                                                             |
        #   | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
        #   | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
        #   | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
        #   | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
        #   | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
        #   | Austria              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
        #   | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
        #   | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
        #   | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
        #   | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
        #   | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
        #   | Canada               | `ca_bn`      | Canadian BN                                                                                             |
        #   | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
        #   | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
        #   | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
        #   | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
        #   | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
        #   | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
        #   | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
        #   | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
        #   | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
        #   | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
        #   | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
        #   | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
        #   | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
        #   | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
        #   | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
        #   | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
        #   | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
        #   | Finland              | `eu_vat`     | European VAT Number                                                                                     |
        #   | France               | `eu_vat`     | European VAT Number                                                                                     |
        #   | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
        #   | Germany              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Greece               | `eu_vat`     | European VAT Number                                                                                     |
        #   | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
        #   | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
        #   | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
        #   | India                | `in_gst`     | Indian GST Number                                                                                       |
        #   | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
        #   | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Israel               | `il_vat`     | Israel VAT                                                                                              |
        #   | Italy                | `eu_vat`     | European VAT Number                                                                                     |
        #   | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
        #   | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
        #   | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
        #   | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
        #   | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
        #   | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
        #   | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
        #   | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
        #   | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
        #   | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
        #   | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
        #   | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
        #   | Malta                | `eu_vat `    | European VAT Number                                                                                     |
        #   | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
        #   | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
        #   | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
        #   | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
        #   | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
        #   | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
        #   | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
        #   | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        #   | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
        #   | Poland               | `eu_vat`     | European VAT Number                                                                                     |
        #   | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
        #   | Romania              | `eu_vat`     | European VAT Number                                                                                     |
        #   | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
        #   | Russia               | `ru_inn`     | Russian INN                                                                                             |
        #   | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
        #   | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
        #   | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
        #   | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
        #   | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
        #   | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
        #   | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
        #   | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
        #   | South Africa         | `za_vat`     | South African VAT Number                                                                                |
        #   | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
        #   | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
        #   | Spain                | `eu_vat`     | European VAT Number                                                                                     |
        #   | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
        #   | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
        #   | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
        #   | Thailand             | `th_vat`     | Thai VAT                                                                                                |
        #   | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
        #   | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
        #   | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
        #   | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
        #   | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
        #   | United States        | `us_ein`     | United States EIN                                                                                       |
        #   | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
        #   | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
        #   | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
        sig do
          params(
            country: Orb::Models::Customer::TaxID::Country::OrSymbol,
            type: Orb::Models::Customer::TaxID::Type::OrSymbol,
            value: String
          )
            .returns(T.attached_class)
        end
        def self.new(country:, type:, value:)
        end

        sig do
          override
            .returns(
              {
                country: Orb::Models::Customer::TaxID::Country::TaggedSymbol,
                type: Orb::Models::Customer::TaxID::Type::TaggedSymbol,
                value: String
              }
            )
        end
        def to_hash
        end

        module Country
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Customer::TaxID::Country) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Customer::TaxID::Country::TaggedSymbol) }

          AD = T.let(:AD, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          AE = T.let(:AE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          AR = T.let(:AR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          AT = T.let(:AT, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          AU = T.let(:AU, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          BE = T.let(:BE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          BG = T.let(:BG, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          BH = T.let(:BH, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          BO = T.let(:BO, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          BR = T.let(:BR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CA = T.let(:CA, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CH = T.let(:CH, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CL = T.let(:CL, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CN = T.let(:CN, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CO = T.let(:CO, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CR = T.let(:CR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CY = T.let(:CY, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          CZ = T.let(:CZ, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          DE = T.let(:DE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          DK = T.let(:DK, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          EE = T.let(:EE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          DO = T.let(:DO, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          EC = T.let(:EC, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          EG = T.let(:EG, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          ES = T.let(:ES, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          EU = T.let(:EU, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          FI = T.let(:FI, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          FR = T.let(:FR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          GB = T.let(:GB, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          GE = T.let(:GE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          GR = T.let(:GR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          HK = T.let(:HK, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          HR = T.let(:HR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          HU = T.let(:HU, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          ID = T.let(:ID, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          IE = T.let(:IE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          IL = T.let(:IL, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          IN = T.let(:IN, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          IS = T.let(:IS, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          IT = T.let(:IT, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          JP = T.let(:JP, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          KE = T.let(:KE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          KR = T.let(:KR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          KZ = T.let(:KZ, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          LI = T.let(:LI, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          LT = T.let(:LT, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          LU = T.let(:LU, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          LV = T.let(:LV, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          MT = T.let(:MT, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          MX = T.let(:MX, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          MY = T.let(:MY, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          NG = T.let(:NG, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          NL = T.let(:NL, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          NO = T.let(:NO, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          NZ = T.let(:NZ, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          OM = T.let(:OM, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          PE = T.let(:PE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          PH = T.let(:PH, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          PL = T.let(:PL, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          PT = T.let(:PT, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          RO = T.let(:RO, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          RS = T.let(:RS, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          RU = T.let(:RU, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          SA = T.let(:SA, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          SE = T.let(:SE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          SG = T.let(:SG, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          SI = T.let(:SI, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          SK = T.let(:SK, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          SV = T.let(:SV, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          TH = T.let(:TH, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          TR = T.let(:TR, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          TW = T.let(:TW, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          UA = T.let(:UA, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          US = T.let(:US, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          UY = T.let(:UY, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          VE = T.let(:VE, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          VN = T.let(:VN, Orb::Models::Customer::TaxID::Country::TaggedSymbol)
          ZA = T.let(:ZA, Orb::Models::Customer::TaxID::Country::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customer::TaxID::Country::TaggedSymbol]) }
          def self.values
          end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Customer::TaxID::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Customer::TaxID::Type::TaggedSymbol) }

          AD_NRT = T.let(:ad_nrt, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          AE_TRN = T.let(:ae_trn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          AR_CUIT = T.let(:ar_cuit, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          EU_VAT = T.let(:eu_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          AU_ABN = T.let(:au_abn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          AU_ARN = T.let(:au_arn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          BG_UIC = T.let(:bg_uic, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          BH_VAT = T.let(:bh_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          BO_TIN = T.let(:bo_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          BR_CNPJ = T.let(:br_cnpj, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          BR_CPF = T.let(:br_cpf, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CA_BN = T.let(:ca_bn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CA_GST_HST = T.let(:ca_gst_hst, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CA_PST_BC = T.let(:ca_pst_bc, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CA_PST_MB = T.let(:ca_pst_mb, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CA_PST_SK = T.let(:ca_pst_sk, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CA_QST = T.let(:ca_qst, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CH_VAT = T.let(:ch_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CL_TIN = T.let(:cl_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CN_TIN = T.let(:cn_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CO_NIT = T.let(:co_nit, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          CR_TIN = T.let(:cr_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          DO_RCN = T.let(:do_rcn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          EC_RUC = T.let(:ec_ruc, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          EG_TIN = T.let(:eg_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          ES_CIF = T.let(:es_cif, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          EU_OSS_VAT = T.let(:eu_oss_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          GB_VAT = T.let(:gb_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          GE_VAT = T.let(:ge_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          HK_BR = T.let(:hk_br, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          HU_TIN = T.let(:hu_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          ID_NPWP = T.let(:id_npwp, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          IL_VAT = T.let(:il_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          IN_GST = T.let(:in_gst, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          IS_VAT = T.let(:is_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          JP_CN = T.let(:jp_cn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          JP_RN = T.let(:jp_rn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          JP_TRN = T.let(:jp_trn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          KE_PIN = T.let(:ke_pin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          KR_BRN = T.let(:kr_brn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          KZ_BIN = T.let(:kz_bin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          LI_UID = T.let(:li_uid, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          MX_RFC = T.let(:mx_rfc, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          MY_FRP = T.let(:my_frp, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          MY_ITN = T.let(:my_itn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          MY_SST = T.let(:my_sst, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          NG_TIN = T.let(:ng_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          NO_VAT = T.let(:no_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          NO_VOEC = T.let(:no_voec, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          NZ_GST = T.let(:nz_gst, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          OM_VAT = T.let(:om_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          PE_RUC = T.let(:pe_ruc, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          PH_TIN = T.let(:ph_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          RO_TIN = T.let(:ro_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          RS_PIB = T.let(:rs_pib, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          RU_INN = T.let(:ru_inn, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          RU_KPP = T.let(:ru_kpp, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          SA_VAT = T.let(:sa_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          SG_GST = T.let(:sg_gst, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          SG_UEN = T.let(:sg_uen, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          SI_TIN = T.let(:si_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          SV_NIT = T.let(:sv_nit, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          TH_VAT = T.let(:th_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          TR_TIN = T.let(:tr_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          TW_VAT = T.let(:tw_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          UA_VAT = T.let(:ua_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          US_EIN = T.let(:us_ein, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          UY_RUC = T.let(:uy_ruc, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          VE_RIF = T.let(:ve_rif, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          VN_TIN = T.let(:vn_tin, Orb::Models::Customer::TaxID::Type::TaggedSymbol)
          ZA_VAT = T.let(:za_vat, Orb::Models::Customer::TaxID::Type::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customer::TaxID::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end

      class AccountingSyncConfiguration < Orb::Internal::Type::BaseModel
        sig { returns(T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider]) }
        attr_accessor :accounting_providers

        sig { returns(T::Boolean) }
        attr_accessor :excluded

        sig do
          params(
            accounting_providers: T::Array[T.any(Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider, Orb::Internal::AnyHash)],
            excluded: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(accounting_providers:, excluded:)
        end

        sig do
          override
            .returns(
              {
                accounting_providers: T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider],
                excluded: T::Boolean
              }
            )
        end
        def to_hash
        end

        class AccountingProvider < Orb::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :external_provider_id

          sig do
            returns(
              Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
            )
          end
          attr_accessor :provider_type

          sig do
            params(
              external_provider_id: T.nilable(String),
              provider_type: Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(external_provider_id:, provider_type:)
          end

          sig do
            override
              .returns(
                {
                  external_provider_id: T.nilable(String),
                  provider_type: Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module ProviderType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
                )
              end

            QUICKBOOKS =
              T.let(
                :quickbooks,
                Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end
      end

      class ReportingConfiguration < Orb::Internal::Type::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :exempt

        sig { params(exempt: T::Boolean).returns(T.attached_class) }
        def self.new(exempt:)
        end

        sig { override.returns({exempt: T::Boolean}) }
        def to_hash
        end
      end
    end
  end
end
