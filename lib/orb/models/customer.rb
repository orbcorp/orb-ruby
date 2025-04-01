# frozen_string_literal: true

module Orb
  module Models
    class Customer < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute additional_emails
      #
      #   @return [Array<String>]
      required :additional_emails, Orb::ArrayOf[String]

      # @!attribute auto_collection
      #
      #   @return [Boolean]
      required :auto_collection, Orb::BooleanModel

      # @!attribute balance
      #   The customer's current balance in their currency.
      #
      #   @return [String]
      required :balance, String

      # @!attribute billing_address
      #
      #   @return [Orb::Models::Customer::BillingAddress, nil]
      required :billing_address, -> { Orb::Models::Customer::BillingAddress }, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [String, nil]
      required :currency, String, nil?: true

      # @!attribute email
      #   A valid customer email, to be used for notifications. When Orb triggers payment
      #     through a payment gateway, this email will be used for any automatically issued
      #     receipts.
      #
      #   @return [String]
      required :email, String

      # @!attribute email_delivery
      #
      #   @return [Boolean]
      required :email_delivery, Orb::BooleanModel

      # @!attribute exempt_from_automated_tax
      #
      #   @return [Boolean, nil]
      required :exempt_from_automated_tax, Orb::BooleanModel, nil?: true

      # @!attribute external_customer_id
      #   An optional user-defined ID for this customer resource, used throughout the
      #     system as an alias for this Customer. Use this field to identify a customer by
      #     an existing identifier in your system.
      #
      #   @return [String, nil]
      required :external_customer_id, String, nil?: true

      # @!attribute hierarchy
      #   The hierarchical relationships for this customer.
      #
      #   @return [Orb::Models::Customer::Hierarchy]
      required :hierarchy, -> { Orb::Models::Customer::Hierarchy }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #     to an empty dictionary. Individual keys can be removed by setting the value to
      #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #     `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::HashOf[String]

      # @!attribute name
      #   The full name of the customer
      #
      #   @return [String]
      required :name, String

      # @!attribute payment_provider
      #   This is used for creating charges or invoices in an external system via Orb.
      #     When not in test mode, the connection must first be configured in the Orb
      #     webapp.
      #
      #   @return [Symbol, Orb::Models::Customer::PaymentProvider, nil]
      required :payment_provider, enum: -> { Orb::Models::Customer::PaymentProvider }, nil?: true

      # @!attribute payment_provider_id
      #   The ID of this customer in an external payments solution, such as Stripe. This
      #     is used for creating charges or invoices in the external system via Orb.
      #
      #   @return [String, nil]
      required :payment_provider_id, String, nil?: true

      # @!attribute portal_url
      #
      #   @return [String, nil]
      required :portal_url, String, nil?: true

      # @!attribute shipping_address
      #
      #   @return [Orb::Models::Customer::ShippingAddress, nil]
      required :shipping_address, -> { Orb::Models::Customer::ShippingAddress }, nil?: true

      # @!attribute tax_id
      #   Tax IDs are commonly required to be displayed on customer invoices, which are
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
      #   @return [Orb::Models::Customer::TaxID, nil]
      required :tax_id, -> { Orb::Models::Customer::TaxID }, nil?: true

      # @!attribute timezone
      #   A timezone identifier from the IANA timezone database, such as
      #     "America/Los_Angeles". This "defaults to your account's timezone if not set.
      #     This cannot be changed after customer creation.
      #
      #   @return [String]
      required :timezone, String

      # @!attribute accounting_sync_configuration
      #
      #   @return [Orb::Models::Customer::AccountingSyncConfiguration, nil]
      optional :accounting_sync_configuration,
               -> { Orb::Models::Customer::AccountingSyncConfiguration },
               nil?: true

      # @!attribute reporting_configuration
      #
      #   @return [Orb::Models::Customer::ReportingConfiguration, nil]
      optional :reporting_configuration, -> { Orb::Models::Customer::ReportingConfiguration }, nil?: true

      # @!parse
      #   # A customer is a buyer of your products, and the other party to the billing
      #   #   relationship.
      #   #
      #   #   In Orb, customers are assigned system generated identifiers automatically, but
      #   #   it's often desirable to have these match existing identifiers in your system. To
      #   #   avoid having to denormalize Orb ID information, you can pass in an
      #   #   `external_customer_id` with your own identifier. See
      #   #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      #   #   information about how these aliases work in Orb.
      #   #
      #   #   In addition to having an identifier in your system, a customer may exist in a
      #   #   payment provider solution like Stripe. Use the `payment_provider_id` and the
      #   #   `payment_provider` enum field to express this mapping.
      #   #
      #   #   A customer also has a timezone (from the standard
      #   #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      #   #   your account's timezone. See [Timezone localization](/essentials/timezones) for
      #   #   information on what this timezone parameter influences within Orb.
      #   #
      #   # @param id [String]
      #   # @param additional_emails [Array<String>]
      #   # @param auto_collection [Boolean]
      #   # @param balance [String]
      #   # @param billing_address [Orb::Models::Customer::BillingAddress, nil]
      #   # @param created_at [Time]
      #   # @param currency [String, nil]
      #   # @param email [String]
      #   # @param email_delivery [Boolean]
      #   # @param exempt_from_automated_tax [Boolean, nil]
      #   # @param external_customer_id [String, nil]
      #   # @param hierarchy [Orb::Models::Customer::Hierarchy]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param payment_provider [Symbol, Orb::Models::Customer::PaymentProvider, nil]
      #   # @param payment_provider_id [String, nil]
      #   # @param portal_url [String, nil]
      #   # @param shipping_address [Orb::Models::Customer::ShippingAddress, nil]
      #   # @param tax_id [Orb::Models::Customer::TaxID, nil]
      #   # @param timezone [String]
      #   # @param accounting_sync_configuration [Orb::Models::Customer::AccountingSyncConfiguration, nil]
      #   # @param reporting_configuration [Orb::Models::Customer::ReportingConfiguration, nil]
      #   #
      #   def initialize(
      #     id:,
      #     additional_emails:,
      #     auto_collection:,
      #     balance:,
      #     billing_address:,
      #     created_at:,
      #     currency:,
      #     email:,
      #     email_delivery:,
      #     exempt_from_automated_tax:,
      #     external_customer_id:,
      #     hierarchy:,
      #     metadata:,
      #     name:,
      #     payment_provider:,
      #     payment_provider_id:,
      #     portal_url:,
      #     shipping_address:,
      #     tax_id:,
      #     timezone:,
      #     accounting_sync_configuration: nil,
      #     reporting_configuration: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @see Orb::Models::Customer#billing_address
      class BillingAddress < Orb::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute postal_code
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!parse
        #   # @param city [String, nil]
        #   # @param country [String, nil]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param postal_code [String, nil]
        #   # @param state [String, nil]
        #   #
        #   def initialize(city:, country:, line1:, line2:, postal_code:, state:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @see Orb::Models::Customer#hierarchy
      class Hierarchy < Orb::BaseModel
        # @!attribute children
        #
        #   @return [Array<Orb::Models::Customer::Hierarchy::Child>]
        required :children, -> { Orb::ArrayOf[Orb::Models::Customer::Hierarchy::Child] }

        # @!attribute parent
        #
        #   @return [Orb::Models::Customer::Hierarchy::Parent, nil]
        required :parent, -> { Orb::Models::Customer::Hierarchy::Parent }, nil?: true

        # @!parse
        #   # The hierarchical relationships for this customer.
        #   #
        #   # @param children [Array<Orb::Models::Customer::Hierarchy::Child>]
        #   # @param parent [Orb::Models::Customer::Hierarchy::Parent, nil]
        #   #
        #   def initialize(children:, parent:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class Child < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute external_customer_id
          #
          #   @return [String, nil]
          required :external_customer_id, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param external_customer_id [String, nil]
          #   #
          #   def initialize(id:, external_customer_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @see Orb::Models::Customer::Hierarchy#parent
        class Parent < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute external_customer_id
          #
          #   @return [String, nil]
          required :external_customer_id, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param external_customer_id [String, nil]
          #   #
          #   def initialize(id:, external_customer_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # This is used for creating charges or invoices in an external system via Orb.
      #   When not in test mode, the connection must first be configured in the Orb
      #   webapp.
      #
      # @see Orb::Models::Customer#payment_provider
      module PaymentProvider
        extend Orb::Enum

        QUICKBOOKS = :quickbooks
        BILL_COM = :"bill.com"
        STRIPE_CHARGE = :stripe_charge
        STRIPE_INVOICE = :stripe_invoice
        NETSUITE = :netsuite

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Orb::Models::Customer#shipping_address
      class ShippingAddress < Orb::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute postal_code
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!parse
        #   # @param city [String, nil]
        #   # @param country [String, nil]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param postal_code [String, nil]
        #   # @param state [String, nil]
        #   #
        #   def initialize(city:, country:, line1:, line2:, postal_code:, state:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @see Orb::Models::Customer#tax_id
      class TaxID < Orb::BaseModel
        # @!attribute country
        #
        #   @return [Symbol, Orb::Models::Customer::TaxID::Country]
        required :country, enum: -> { Orb::Models::Customer::TaxID::Country }

        # @!attribute type
        #
        #   @return [Symbol, Orb::Models::Customer::TaxID::Type]
        required :type, enum: -> { Orb::Models::Customer::TaxID::Type }

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # Tax IDs are commonly required to be displayed on customer invoices, which are
        #   #   added to the headers of invoices.
        #   #
        #   #   ### Supported Tax ID Countries and Types
        #   #
        #   #   | Country              | Type         | Description                                                                                             |
        #   #   | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
        #   #   | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
        #   #   | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
        #   #   | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
        #   #   | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
        #   #   | Austria              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
        #   #   | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
        #   #   | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
        #   #   | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
        #   #   | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
        #   #   | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Canada               | `ca_bn`      | Canadian BN                                                                                             |
        #   #   | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
        #   #   | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
        #   #   | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
        #   #   | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
        #   #   | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
        #   #   | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
        #   #   | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
        #   #   | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
        #   #   | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
        #   #   | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
        #   #   | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
        #   #   | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
        #   #   | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
        #   #   | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
        #   #   | Finland              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | France               | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
        #   #   | Germany              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Greece               | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
        #   #   | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
        #   #   | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
        #   #   | India                | `in_gst`     | Indian GST Number                                                                                       |
        #   #   | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
        #   #   | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Israel               | `il_vat`     | Israel VAT                                                                                              |
        #   #   | Italy                | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
        #   #   | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
        #   #   | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
        #   #   | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
        #   #   | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
        #   #   | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
        #   #   | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
        #   #   | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
        #   #   | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
        #   #   | Malta                | `eu_vat `    | European VAT Number                                                                                     |
        #   #   | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
        #   #   | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
        #   #   | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
        #   #   | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
        #   #   | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
        #   #   | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
        #   #   | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        #   #   | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
        #   #   | Poland               | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Romania              | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
        #   #   | Russia               | `ru_inn`     | Russian INN                                                                                             |
        #   #   | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
        #   #   | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
        #   #   | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
        #   #   | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
        #   #   | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
        #   #   | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
        #   #   | South Africa         | `za_vat`     | South African VAT Number                                                                                |
        #   #   | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
        #   #   | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
        #   #   | Spain                | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
        #   #   | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
        #   #   | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
        #   #   | Thailand             | `th_vat`     | Thai VAT                                                                                                |
        #   #   | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
        #   #   | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
        #   #   | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
        #   #   | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
        #   #   | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
        #   #   | United States        | `us_ein`     | United States EIN                                                                                       |
        #   #   | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
        #   #   | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
        #   #   | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
        #   #
        #   # @param country [Symbol, Orb::Models::Customer::TaxID::Country]
        #   # @param type [Symbol, Orb::Models::Customer::TaxID::Type]
        #   # @param value [String]
        #   #
        #   def initialize(country:, type:, value:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @see Orb::Models::Customer::TaxID#country
        module Country
          extend Orb::Enum

          AD = :AD
          AE = :AE
          AR = :AR
          AT = :AT
          AU = :AU
          BE = :BE
          BG = :BG
          BH = :BH
          BO = :BO
          BR = :BR
          CA = :CA
          CH = :CH
          CL = :CL
          CN = :CN
          CO = :CO
          CR = :CR
          CY = :CY
          CZ = :CZ
          DE = :DE
          DK = :DK
          EE = :EE
          DO = :DO
          EC = :EC
          EG = :EG
          ES = :ES
          EU = :EU
          FI = :FI
          FR = :FR
          GB = :GB
          GE = :GE
          GR = :GR
          HK = :HK
          HR = :HR
          HU = :HU
          ID = :ID
          IE = :IE
          IL = :IL
          IN = :IN
          IS = :IS
          IT = :IT
          JP = :JP
          KE = :KE
          KR = :KR
          KZ = :KZ
          LI = :LI
          LT = :LT
          LU = :LU
          LV = :LV
          MT = :MT
          MX = :MX
          MY = :MY
          NG = :NG
          NL = :NL
          NO = :NO
          NZ = :NZ
          OM = :OM
          PE = :PE
          PH = :PH
          PL = :PL
          PT = :PT
          RO = :RO
          RS = :RS
          RU = :RU
          SA = :SA
          SE = :SE
          SG = :SG
          SI = :SI
          SK = :SK
          SV = :SV
          TH = :TH
          TR = :TR
          TW = :TW
          UA = :UA
          US = :US
          UY = :UY
          VE = :VE
          VN = :VN
          ZA = :ZA

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Orb::Models::Customer::TaxID#type
        module Type
          extend Orb::Enum

          AD_NRT = :ad_nrt
          AE_TRN = :ae_trn
          AR_CUIT = :ar_cuit
          EU_VAT = :eu_vat
          AU_ABN = :au_abn
          AU_ARN = :au_arn
          BG_UIC = :bg_uic
          BH_VAT = :bh_vat
          BO_TIN = :bo_tin
          BR_CNPJ = :br_cnpj
          BR_CPF = :br_cpf
          CA_BN = :ca_bn
          CA_GST_HST = :ca_gst_hst
          CA_PST_BC = :ca_pst_bc
          CA_PST_MB = :ca_pst_mb
          CA_PST_SK = :ca_pst_sk
          CA_QST = :ca_qst
          CH_VAT = :ch_vat
          CL_TIN = :cl_tin
          CN_TIN = :cn_tin
          CO_NIT = :co_nit
          CR_TIN = :cr_tin
          DO_RCN = :do_rcn
          EC_RUC = :ec_ruc
          EG_TIN = :eg_tin
          ES_CIF = :es_cif
          EU_OSS_VAT = :eu_oss_vat
          GB_VAT = :gb_vat
          GE_VAT = :ge_vat
          HK_BR = :hk_br
          HU_TIN = :hu_tin
          ID_NPWP = :id_npwp
          IL_VAT = :il_vat
          IN_GST = :in_gst
          IS_VAT = :is_vat
          JP_CN = :jp_cn
          JP_RN = :jp_rn
          JP_TRN = :jp_trn
          KE_PIN = :ke_pin
          KR_BRN = :kr_brn
          KZ_BIN = :kz_bin
          LI_UID = :li_uid
          MX_RFC = :mx_rfc
          MY_FRP = :my_frp
          MY_ITN = :my_itn
          MY_SST = :my_sst
          NG_TIN = :ng_tin
          NO_VAT = :no_vat
          NO_VOEC = :no_voec
          NZ_GST = :nz_gst
          OM_VAT = :om_vat
          PE_RUC = :pe_ruc
          PH_TIN = :ph_tin
          RO_TIN = :ro_tin
          RS_PIB = :rs_pib
          RU_INN = :ru_inn
          RU_KPP = :ru_kpp
          SA_VAT = :sa_vat
          SG_GST = :sg_gst
          SG_UEN = :sg_uen
          SI_TIN = :si_tin
          SV_NIT = :sv_nit
          TH_VAT = :th_vat
          TR_TIN = :tr_tin
          TW_VAT = :tw_vat
          UA_VAT = :ua_vat
          US_EIN = :us_ein
          UY_RUC = :uy_ruc
          VE_RIF = :ve_rif
          VN_TIN = :vn_tin
          ZA_VAT = :za_vat

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Orb::Models::Customer#accounting_sync_configuration
      class AccountingSyncConfiguration < Orb::BaseModel
        # @!attribute accounting_providers
        #
        #   @return [Array<Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider>]
        required :accounting_providers,
                 -> { Orb::ArrayOf[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider] }

        # @!attribute excluded
        #
        #   @return [Boolean]
        required :excluded, Orb::BooleanModel

        # @!parse
        #   # @param accounting_providers [Array<Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider>]
        #   # @param excluded [Boolean]
        #   #
        #   def initialize(accounting_providers:, excluded:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class AccountingProvider < Orb::BaseModel
          # @!attribute external_provider_id
          #
          #   @return [String, nil]
          required :external_provider_id, String, nil?: true

          # @!attribute provider_type
          #
          #   @return [Symbol, Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType]
          required :provider_type,
                   enum: -> { Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType }

          # @!parse
          #   # @param external_provider_id [String, nil]
          #   # @param provider_type [Symbol, Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType]
          #   #
          #   def initialize(external_provider_id:, provider_type:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @see Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider#provider_type
          module ProviderType
            extend Orb::Enum

            QUICKBOOKS = :quickbooks
            NETSUITE = :netsuite

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      # @see Orb::Models::Customer#reporting_configuration
      class ReportingConfiguration < Orb::BaseModel
        # @!attribute exempt
        #
        #   @return [Boolean]
        required :exempt, Orb::BooleanModel

        # @!parse
        #   # @param exempt [Boolean]
        #   #
        #   def initialize(exempt:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
