# frozen_string_literal: true

module Orb
  module Models
    class CustomerModel < Orb::BaseModel
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
      #   @return [Orb::Models::AddressModel, nil]
      required :billing_address, -> { Orb::Models::AddressModel }, nil?: true

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
      #   @return [Orb::Models::CustomerModel::Hierarchy]
      required :hierarchy, -> { Orb::Models::CustomerModel::Hierarchy }

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
      #   @return [Symbol, Orb::Models::CustomerModel::PaymentProvider, nil]
      required :payment_provider, enum: -> { Orb::Models::CustomerModel::PaymentProvider }, nil?: true

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
      #   @return [Orb::Models::AddressModel, nil]
      required :shipping_address, -> { Orb::Models::AddressModel }, nil?: true

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
      #   @return [Orb::Models::CustomerTaxIDModel, nil]
      required :tax_id, -> { Orb::Models::CustomerTaxIDModel }, nil?: true

      # @!attribute timezone
      #   A timezone identifier from the IANA timezone database, such as
      #     "America/Los_Angeles". This "defaults to your account's timezone if not set.
      #     This cannot be changed after customer creation.
      #
      #   @return [String]
      required :timezone, String

      # @!attribute accounting_sync_configuration
      #
      #   @return [Orb::Models::CustomerModel::AccountingSyncConfiguration, nil]
      optional :accounting_sync_configuration,
               -> { Orb::Models::CustomerModel::AccountingSyncConfiguration },
               nil?: true

      # @!attribute reporting_configuration
      #
      #   @return [Orb::Models::CustomerModel::ReportingConfiguration, nil]
      optional :reporting_configuration, -> { Orb::Models::CustomerModel::ReportingConfiguration }, nil?: true

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
      #   # @param billing_address [Orb::Models::AddressModel, nil]
      #   # @param created_at [Time]
      #   # @param currency [String, nil]
      #   # @param email [String]
      #   # @param email_delivery [Boolean]
      #   # @param exempt_from_automated_tax [Boolean, nil]
      #   # @param external_customer_id [String, nil]
      #   # @param hierarchy [Orb::Models::CustomerModel::Hierarchy]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   # @param payment_provider [Symbol, Orb::Models::CustomerModel::PaymentProvider, nil]
      #   # @param payment_provider_id [String, nil]
      #   # @param portal_url [String, nil]
      #   # @param shipping_address [Orb::Models::AddressModel, nil]
      #   # @param tax_id [Orb::Models::CustomerTaxIDModel, nil]
      #   # @param timezone [String]
      #   # @param accounting_sync_configuration [Orb::Models::CustomerModel::AccountingSyncConfiguration, nil]
      #   # @param reporting_configuration [Orb::Models::CustomerModel::ReportingConfiguration, nil]
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

      class Hierarchy < Orb::BaseModel
        # @!attribute children
        #
        #   @return [Array<Orb::Models::CustomerMinifiedModel>]
        required :children, -> { Orb::ArrayOf[Orb::Models::CustomerMinifiedModel] }

        # @!attribute parent
        #
        #   @return [Orb::Models::CustomerMinifiedModel, nil]
        required :parent, -> { Orb::Models::CustomerMinifiedModel }, nil?: true

        # @!parse
        #   # The hierarchical relationships for this customer.
        #   #
        #   # @param children [Array<Orb::Models::CustomerMinifiedModel>]
        #   # @param parent [Orb::Models::CustomerMinifiedModel, nil]
        #   #
        #   def initialize(children:, parent:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # This is used for creating charges or invoices in an external system via Orb.
      #   When not in test mode, the connection must first be configured in the Orb
      #   webapp.
      #
      # @example
      # ```ruby
      # case payment_provider
      # in :quickbooks
      #   # ...
      # in :"bill.com"
      #   # ...
      # in :stripe_charge
      #   # ...
      # in :stripe_invoice
      #   # ...
      # in :netsuite
      #   # ...
      # end
      # ```
      class PaymentProvider < Orb::Enum
        QUICKBOOKS = :quickbooks
        BILL_COM = :"bill.com"
        STRIPE_CHARGE = :stripe_charge
        STRIPE_INVOICE = :stripe_invoice
        NETSUITE = :netsuite

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class AccountingSyncConfiguration < Orb::BaseModel
        # @!attribute accounting_providers
        #
        #   @return [Array<Orb::Models::CustomerModel::AccountingSyncConfiguration::AccountingProvider>]
        required :accounting_providers,
                 -> { Orb::ArrayOf[Orb::Models::CustomerModel::AccountingSyncConfiguration::AccountingProvider] }

        # @!attribute excluded
        #
        #   @return [Boolean]
        required :excluded, Orb::BooleanModel

        # @!parse
        #   # @param accounting_providers [Array<Orb::Models::CustomerModel::AccountingSyncConfiguration::AccountingProvider>]
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
          #   @return [Symbol, Orb::Models::CustomerModel::AccountingSyncConfiguration::AccountingProvider::ProviderType]
          required :provider_type,
                   enum: -> { Orb::Models::CustomerModel::AccountingSyncConfiguration::AccountingProvider::ProviderType }

          # @!parse
          #   # @param external_provider_id [String, nil]
          #   # @param provider_type [Symbol, Orb::Models::CustomerModel::AccountingSyncConfiguration::AccountingProvider::ProviderType]
          #   #
          #   def initialize(external_provider_id:, provider_type:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case provider_type
          # in :quickbooks
          #   # ...
          # in :netsuite
          #   # ...
          # end
          # ```
          class ProviderType < Orb::Enum
            QUICKBOOKS = :quickbooks
            NETSUITE = :netsuite

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end

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
