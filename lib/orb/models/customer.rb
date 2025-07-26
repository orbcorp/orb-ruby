# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#create
    class Customer < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute additional_emails
      #
      #   @return [Array<String>]
      required :additional_emails, Orb::Internal::Type::ArrayOf[String]

      # @!attribute auto_collection
      #
      #   @return [Boolean]
      required :auto_collection, Orb::Internal::Type::Boolean

      # @!attribute balance
      #   The customer's current balance in their currency.
      #
      #   @return [String]
      required :balance, String

      # @!attribute billing_address
      #
      #   @return [Orb::Models::Address, nil]
      required :billing_address, -> { Orb::Address }, nil?: true

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
      #   through a payment gateway, this email will be used for any automatically issued
      #   receipts.
      #
      #   @return [String]
      required :email, String

      # @!attribute email_delivery
      #
      #   @return [Boolean]
      required :email_delivery, Orb::Internal::Type::Boolean

      # @!attribute exempt_from_automated_tax
      #
      #   @return [Boolean, nil]
      required :exempt_from_automated_tax, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute external_customer_id
      #   An optional user-defined ID for this customer resource, used throughout the
      #   system as an alias for this Customer. Use this field to identify a customer by
      #   an existing identifier in your system.
      #
      #   @return [String, nil]
      required :external_customer_id, String, nil?: true

      # @!attribute hierarchy
      #   The hierarchical relationships for this customer.
      #
      #   @return [Orb::Models::Customer::Hierarchy]
      required :hierarchy, -> { Orb::Customer::Hierarchy }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute name
      #   The full name of the customer
      #
      #   @return [String]
      required :name, String

      # @!attribute payment_provider
      #   This is used for creating charges or invoices in an external system via Orb.
      #   When not in test mode, the connection must first be configured in the Orb
      #   webapp.
      #
      #   @return [Symbol, Orb::Models::Customer::PaymentProvider, nil]
      required :payment_provider, enum: -> { Orb::Customer::PaymentProvider }, nil?: true

      # @!attribute payment_provider_id
      #   The ID of this customer in an external payments solution, such as Stripe. This
      #   is used for creating charges or invoices in the external system via Orb.
      #
      #   @return [String, nil]
      required :payment_provider_id, String, nil?: true

      # @!attribute portal_url
      #
      #   @return [String, nil]
      required :portal_url, String, nil?: true

      # @!attribute shipping_address
      #
      #   @return [Orb::Models::Address, nil]
      required :shipping_address, -> { Orb::Address }, nil?: true

      # @!attribute tax_id
      #   Tax IDs are commonly required to be displayed on customer invoices, which are
      #   added to the headers of invoices.
      #
      #   ### Supported Tax ID Countries and Types
      #
      #   | Country                | Type         | Description                                                                                             |
      #   | ---------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #   | Albania                | `al_tin`     | Albania Tax Identification Number                                                                       |
      #   | Andorra                | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #   | Angola                 | `ao_tin`     | Angola Tax Identification Number                                                                        |
      #   | Argentina              | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #   | Armenia                | `am_tin`     | Armenia Tax Identification Number                                                                       |
      #   | Aruba                  | `aw_tin`     | Aruba Tax Identification Number                                                                         |
      #   | Australia              | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #   | Australia              | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #   | Austria                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Azerbaijan             | `az_tin`     | Azerbaijan Tax Identification Number                                                                    |
      #   | Bahamas                | `bs_tin`     | Bahamas Tax Identification Number                                                                       |
      #   | Bahrain                | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #   | Bangladesh             | `bd_bin`     | Bangladesh Business Identification Number                                                               |
      #   | Barbados               | `bb_tin`     | Barbados Tax Identification Number                                                                      |
      #   | Belarus                | `by_tin`     | Belarus TIN Number                                                                                      |
      #   | Belgium                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Benin                  | `bj_ifu`     | Benin Tax Identification Number (Identifiant Fiscal Unique)                                             |
      #   | Bolivia                | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #   | Bosnia and Herzegovina | `ba_tin`     | Bosnia and Herzegovina Tax Identification Number                                                        |
      #   | Brazil                 | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #   | Brazil                 | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #   | Bulgaria               | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #   | Bulgaria               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Burkina Faso           | `bf_ifu`     | Burkina Faso Tax Identification Number (Numéro d'Identifiant Fiscal Unique)                             |
      #   | Cambodia               | `kh_tin`     | Cambodia Tax Identification Number                                                                      |
      #   | Cameroon               | `cm_niu`     | Cameroon Tax Identification Number (Numéro d'Identifiant fiscal Unique)                                 |
      #   | Canada                 | `ca_bn`      | Canadian BN                                                                                             |
      #   | Canada                 | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #   | Canada                 | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #   | Canada                 | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #   | Canada                 | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #   | Canada                 | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #   | Cape Verde             | `cv_nif`     | Cape Verde Tax Identification Number (Número de Identificação Fiscal)                                   |
      #   | Chile                  | `cl_tin`     | Chilean TIN                                                                                             |
      #   | China                  | `cn_tin`     | Chinese Tax ID                                                                                          |
      #   | Colombia               | `co_nit`     | Colombian NIT Number                                                                                    |
      #   | Congo-Kinshasa         | `cd_nif`     | Congo (DR) Tax Identification Number (Número de Identificação Fiscal)                                   |
      #   | Costa Rica             | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #   | Croatia                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Croatia                | `hr_oib`     | Croatian Personal Identification Number (OIB)                                                           |
      #   | Cyprus                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Czech Republic         | `eu_vat`     | European VAT Number                                                                                     |
      #   | Denmark                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Dominican Republic     | `do_rcn`     | Dominican RCN Number                                                                                    |
      #   | Ecuador                | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #   | Egypt                  | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #   | El Salvador            | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #   | Estonia                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Ethiopia               | `et_tin`     | Ethiopia Tax Identification Number                                                                      |
      #   | European Union         | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #   | Finland                | `eu_vat`     | European VAT Number                                                                                     |
      #   | France                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
      #   | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
      #   | Germany                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Greece                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Guinea                 | `gn_nif`     | Guinea Tax Identification Number (Número de Identificação Fiscal)                                       |
      #   | Hong Kong              | `hk_br`      | Hong Kong BR Number                                                                                     |
      #   | Hungary                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Hungary                | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #   | Iceland                | `is_vat`     | Icelandic VAT                                                                                           |
      #   | India                  | `in_gst`     | Indian GST Number                                                                                       |
      #   | Indonesia              | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #   | Ireland                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Israel                 | `il_vat`     | Israel VAT                                                                                              |
      #   | Italy                  | `eu_vat`     | European VAT Number                                                                                     |
      #   | Japan                  | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #   | Japan                  | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #   | Japan                  | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #   | Kazakhstan             | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #   | Kenya                  | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #   | Kyrgyzstan             | `kg_tin`     | Kyrgyzstan Tax Identification Number                                                                    |
      #   | Laos                   | `la_tin`     | Laos Tax Identification Number                                                                          |
      #   | Latvia                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Liechtenstein          | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #   | Liechtenstein          | `li_vat`     | Liechtenstein VAT Number                                                                                |
      #   | Lithuania              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Luxembourg             | `eu_vat`     | European VAT Number                                                                                     |
      #   | Malaysia               | `my_frp`     | Malaysian FRP Number                                                                                    |
      #   | Malaysia               | `my_itn`     | Malaysian ITN                                                                                           |
      #   | Malaysia               | `my_sst`     | Malaysian SST Number                                                                                    |
      #   | Malta                  | `eu_vat`     | European VAT Number                                                                                     |
      #   | Mauritania             | `mr_nif`     | Mauritania Tax Identification Number (Número de Identificação Fiscal)                                   |
      #   | Mexico                 | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #   | Moldova                | `md_vat`     | Moldova VAT Number                                                                                      |
      #   | Montenegro             | `me_pib`     | Montenegro PIB Number                                                                                   |
      #   | Morocco                | `ma_vat`     | Morocco VAT Number                                                                                      |
      #   | Nepal                  | `np_pan`     | Nepal PAN Number                                                                                        |
      #   | Netherlands            | `eu_vat`     | European VAT Number                                                                                     |
      #   | New Zealand            | `nz_gst`     | New Zealand GST Number                                                                                  |
      #   | Nigeria                | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #   | North Macedonia        | `mk_vat`     | North Macedonia VAT Number                                                                              |
      #   | Northern Ireland       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #   | Norway                 | `no_vat`     | Norwegian VAT Number                                                                                    |
      #   | Norway                 | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #   | Oman                   | `om_vat`     | Omani VAT Number                                                                                        |
      #   | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #   | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
      #   | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Portugal               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Romania                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Romania                | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #   | Russia                 | `ru_inn`     | Russian INN                                                                                             |
      #   | Russia                 | `ru_kpp`     | Russian KPP                                                                                             |
      #   | Saudi Arabia           | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #   | Senegal                | `sn_ninea`   | Senegal NINEA Number                                                                                    |
      #   | Serbia                 | `rs_pib`     | Serbian PIB Number                                                                                      |
      #   | Singapore              | `sg_gst`     | Singaporean GST                                                                                         |
      #   | Singapore              | `sg_uen`     | Singaporean UEN                                                                                         |
      #   | Slovakia               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Slovenia               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Slovenia               | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #   | South Africa           | `za_vat`     | South African VAT Number                                                                                |
      #   | South Korea            | `kr_brn`     | Korean BRN                                                                                              |
      #   | Spain                  | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #   | Spain                  | `eu_vat`     | European VAT Number                                                                                     |
      #   | Suriname               | `sr_fin`     | Suriname FIN Number                                                                                     |
      #   | Sweden                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Switzerland            | `ch_uid`     | Switzerland UID Number                                                                                  |
      #   | Switzerland            | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #   | Taiwan                 | `tw_vat`     | Taiwanese VAT                                                                                           |
      #   | Tajikistan             | `tj_tin`     | Tajikistan Tax Identification Number                                                                    |
      #   | Tanzania               | `tz_vat`     | Tanzania VAT Number                                                                                     |
      #   | Thailand               | `th_vat`     | Thai VAT                                                                                                |
      #   | Turkey                 | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #   | Uganda                 | `ug_tin`     | Uganda Tax Identification Number                                                                        |
      #   | Ukraine                | `ua_vat`     | Ukrainian VAT                                                                                           |
      #   | United Arab Emirates   | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #   | United Kingdom         | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #   | United States          | `us_ein`     | United States EIN                                                                                       |
      #   | Uruguay                | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #   | Uzbekistan             | `uz_tin`     | Uzbekistan TIN Number                                                                                   |
      #   | Uzbekistan             | `uz_vat`     | Uzbekistan VAT Number                                                                                   |
      #   | Venezuela              | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #   | Vietnam                | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      #   | Zambia                 | `zm_tin`     | Zambia Tax Identification Number                                                                        |
      #   | Zimbabwe               | `zw_tin`     | Zimbabwe Tax Identification Number                                                                      |
      #
      #   @return [Orb::Models::CustomerTaxID, nil]
      required :tax_id, -> { Orb::CustomerTaxID }, nil?: true

      # @!attribute timezone
      #   A timezone identifier from the IANA timezone database, such as
      #   "America/Los_Angeles". This "defaults to your account's timezone if not set.
      #   This cannot be changed after customer creation.
      #
      #   @return [String]
      required :timezone, String

      # @!attribute accounting_sync_configuration
      #
      #   @return [Orb::Models::Customer::AccountingSyncConfiguration, nil]
      optional :accounting_sync_configuration, -> { Orb::Customer::AccountingSyncConfiguration }, nil?: true

      # @!attribute reporting_configuration
      #
      #   @return [Orb::Models::Customer::ReportingConfiguration, nil]
      optional :reporting_configuration, -> { Orb::Customer::ReportingConfiguration }, nil?: true

      # @!method initialize(id:, additional_emails:, auto_collection:, balance:, billing_address:, created_at:, currency:, email:, email_delivery:, exempt_from_automated_tax:, external_customer_id:, hierarchy:, metadata:, name:, payment_provider:, payment_provider_id:, portal_url:, shipping_address:, tax_id:, timezone:, accounting_sync_configuration: nil, reporting_configuration: nil)
      #   Some parameter documentations has been truncated, see {Orb::Models::Customer}
      #   for more details.
      #
      #   A customer is a buyer of your products, and the other party to the billing
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
      #
      #   @param id [String]
      #
      #   @param additional_emails [Array<String>]
      #
      #   @param auto_collection [Boolean]
      #
      #   @param balance [String] The customer's current balance in their currency.
      #
      #   @param billing_address [Orb::Models::Address, nil]
      #
      #   @param created_at [Time]
      #
      #   @param currency [String, nil]
      #
      #   @param email [String] A valid customer email, to be used for notifications. When Orb triggers payment
      #
      #   @param email_delivery [Boolean]
      #
      #   @param exempt_from_automated_tax [Boolean, nil]
      #
      #   @param external_customer_id [String, nil] An optional user-defined ID for this customer resource, used throughout the syst
      #
      #   @param hierarchy [Orb::Models::Customer::Hierarchy] The hierarchical relationships for this customer.
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param name [String] The full name of the customer
      #
      #   @param payment_provider [Symbol, Orb::Models::Customer::PaymentProvider, nil] This is used for creating charges or invoices in an external system via Orb. Whe
      #
      #   @param payment_provider_id [String, nil] The ID of this customer in an external payments solution, such as Stripe. This i
      #
      #   @param portal_url [String, nil]
      #
      #   @param shipping_address [Orb::Models::Address, nil]
      #
      #   @param tax_id [Orb::Models::CustomerTaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      #   @param timezone [String] A timezone identifier from the IANA timezone database, such as "America/Los_Ange
      #
      #   @param accounting_sync_configuration [Orb::Models::Customer::AccountingSyncConfiguration, nil]
      #
      #   @param reporting_configuration [Orb::Models::Customer::ReportingConfiguration, nil]

      # @see Orb::Models::Customer#hierarchy
      class Hierarchy < Orb::Internal::Type::BaseModel
        # @!attribute children
        #
        #   @return [Array<Orb::Models::CustomerMinified>]
        required :children, -> { Orb::Internal::Type::ArrayOf[Orb::CustomerMinified] }

        # @!attribute parent
        #
        #   @return [Orb::Models::CustomerMinified, nil]
        required :parent, -> { Orb::CustomerMinified }, nil?: true

        # @!method initialize(children:, parent:)
        #   The hierarchical relationships for this customer.
        #
        #   @param children [Array<Orb::Models::CustomerMinified>]
        #   @param parent [Orb::Models::CustomerMinified, nil]
      end

      # This is used for creating charges or invoices in an external system via Orb.
      # When not in test mode, the connection must first be configured in the Orb
      # webapp.
      #
      # @see Orb::Models::Customer#payment_provider
      module PaymentProvider
        extend Orb::Internal::Type::Enum

        QUICKBOOKS = :quickbooks
        BILL_COM = :"bill.com"
        STRIPE_CHARGE = :stripe_charge
        STRIPE_INVOICE = :stripe_invoice
        NETSUITE = :netsuite

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::Customer#accounting_sync_configuration
      class AccountingSyncConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute accounting_providers
        #
        #   @return [Array<Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider>]
        required :accounting_providers,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Customer::AccountingSyncConfiguration::AccountingProvider]
                 }

        # @!attribute excluded
        #
        #   @return [Boolean]
        required :excluded, Orb::Internal::Type::Boolean

        # @!method initialize(accounting_providers:, excluded:)
        #   @param accounting_providers [Array<Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider>]
        #   @param excluded [Boolean]

        class AccountingProvider < Orb::Internal::Type::BaseModel
          # @!attribute external_provider_id
          #
          #   @return [String, nil]
          required :external_provider_id, String, nil?: true

          # @!attribute provider_type
          #
          #   @return [Symbol, Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType]
          required :provider_type,
                   enum: -> { Orb::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType }

          # @!method initialize(external_provider_id:, provider_type:)
          #   @param external_provider_id [String, nil]
          #   @param provider_type [Symbol, Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider::ProviderType]

          # @see Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider#provider_type
          module ProviderType
            extend Orb::Internal::Type::Enum

            QUICKBOOKS = :quickbooks
            NETSUITE = :netsuite

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Orb::Models::Customer#reporting_configuration
      class ReportingConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute exempt
        #
        #   @return [Boolean]
        required :exempt, Orb::Internal::Type::Boolean

        # @!method initialize(exempt:)
        #   @param exempt [Boolean]
      end
    end
  end
end
