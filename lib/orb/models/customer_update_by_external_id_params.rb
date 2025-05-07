# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#update_by_external_id
    class CustomerUpdateByExternalIDParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute accounting_sync_configuration
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration, nil]
      optional :accounting_sync_configuration,
               -> { Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration },
               nil?: true

      # @!attribute additional_emails
      #   Additional email addresses for this customer. If populated, these email
      #   addresses will be CC'd for customer communications.
      #
      #   @return [Array<String>, nil]
      optional :additional_emails, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute auto_collection
      #   Used to determine if invoices for this customer will automatically attempt to
      #   charge a saved payment method, if available. This parameter defaults to `True`
      #   when a payment provider is provided on customer creation.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_address
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::BillingAddress, nil]
      optional :billing_address, -> { Orb::CustomerUpdateByExternalIDParams::BillingAddress }, nil?: true

      # @!attribute currency
      #   An ISO 4217 currency string used for the customer's invoices and balance. If not
      #   set at creation time, will be set at subscription creation time.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute email
      #   A valid customer email, to be used for invoicing and notifications.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute email_delivery
      #
      #   @return [Boolean, nil]
      optional :email_delivery, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute external_customer_id
      #   The external customer ID. This can only be set if empty and the customer has no
      #   past or current subscriptions.
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute hierarchy
      #   The hierarchical relationships for this customer.
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::Hierarchy, nil]
      optional :hierarchy, -> { Orb::CustomerUpdateByExternalIDParams::Hierarchy }, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute name
      #   The full name of the customer
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute payment_provider
      #   This is used for creating charges or invoices in an external system via Orb.
      #   When not in test mode:
      #
      #   - the connection must first be configured in the Orb webapp.
      #   - if the provider is an invoicing provider (`stripe_invoice`, `quickbooks`,
      #     `bill.com`, `netsuite`), any product mappings must first be configured with
      #     the Orb team.
      #
      #   @return [Symbol, Orb::CustomerUpdateByExternalIDParams::PaymentProvider, nil]
      optional :payment_provider,
               enum: -> { Orb::CustomerUpdateByExternalIDParams::PaymentProvider },
               nil?: true

      # @!attribute payment_provider_id
      #   The ID of this customer in an external payments solution, such as Stripe. This
      #   is used for creating charges or invoices in the external system via Orb.
      #
      #   @return [String, nil]
      optional :payment_provider_id, String, nil?: true

      # @!attribute reporting_configuration
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration, nil]
      optional :reporting_configuration,
               -> { Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration },
               nil?: true

      # @!attribute shipping_address
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::ShippingAddress, nil]
      optional :shipping_address, -> { Orb::CustomerUpdateByExternalIDParams::ShippingAddress }, nil?: true

      # @!attribute tax_configuration
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara, Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar, nil]
      optional :tax_configuration,
               union: -> { Orb::CustomerUpdateByExternalIDParams::TaxConfiguration },
               nil?: true

      # @!attribute tax_id
      #   Tax IDs are commonly required to be displayed on customer invoices, which are
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
      #
      #   @return [Orb::CustomerUpdateByExternalIDParams::TaxID, nil]
      optional :tax_id, -> { Orb::CustomerUpdateByExternalIDParams::TaxID }, nil?: true

      # @!method initialize(accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerUpdateByExternalIDParams} for more details.
      #
      #   @param accounting_sync_configuration [Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration, nil]
      #
      #   @param additional_emails [Array<String>, nil] Additional email addresses for this customer. If populated, these email addresse
      #
      #   @param auto_collection [Boolean, nil] Used to determine if invoices for this customer will automatically attempt to ch
      #
      #   @param billing_address [Orb::CustomerUpdateByExternalIDParams::BillingAddress, nil]
      #
      #   @param currency [String, nil] An ISO 4217 currency string used for the customer's invoices and balance. If not
      #
      #   @param email [String, nil] A valid customer email, to be used for invoicing and notifications.
      #
      #   @param email_delivery [Boolean, nil]
      #
      #   @param external_customer_id [String, nil] The external customer ID. This can only be set if empty and the customer has no
      #
      #   @param hierarchy [Orb::CustomerUpdateByExternalIDParams::Hierarchy, nil] The hierarchical relationships for this customer.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param name [String, nil] The full name of the customer
      #
      #   @param payment_provider [Symbol, Orb::CustomerUpdateByExternalIDParams::PaymentProvider, nil] This is used for creating charges or invoices in an external system via Orb. Whe
      #
      #   @param payment_provider_id [String, nil] The ID of this customer in an external payments solution, such as Stripe. This i
      #
      #   @param reporting_configuration [Orb::CustomerUpdateByExternalIDParams::ReportingConfiguration, nil]
      #
      #   @param shipping_address [Orb::CustomerUpdateByExternalIDParams::ShippingAddress, nil]
      #
      #   @param tax_configuration [Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara, Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar, nil]
      #
      #   @param tax_id [Orb::CustomerUpdateByExternalIDParams::TaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class AccountingSyncConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute accounting_providers
        #
        #   @return [Array<Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider>, nil]
        optional :accounting_providers,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider]
                 },
                 nil?: true

        # @!attribute excluded
        #
        #   @return [Boolean, nil]
        optional :excluded, Orb::Internal::Type::Boolean, nil?: true

        # @!method initialize(accounting_providers: nil, excluded: nil)
        #   @param accounting_providers [Array<Orb::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider>, nil]
        #   @param excluded [Boolean, nil]

        class AccountingProvider < Orb::Internal::Type::BaseModel
          # @!attribute external_provider_id
          #
          #   @return [String]
          required :external_provider_id, String

          # @!attribute provider_type
          #
          #   @return [String]
          required :provider_type, String

          # @!method initialize(external_provider_id:, provider_type:)
          #   @param external_provider_id [String]
          #   @param provider_type [String]
        end
      end

      class BillingAddress < Orb::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute postal_code
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
        #   @param city [String, nil]
        #   @param country [String, nil]
        #   @param line1 [String, nil]
        #   @param line2 [String, nil]
        #   @param postal_code [String, nil]
        #   @param state [String, nil]
      end

      class Hierarchy < Orb::Internal::Type::BaseModel
        # @!attribute child_customer_ids
        #   A list of child customer IDs to add to the hierarchy. The desired child
        #   customers must not already be part of another hierarchy.
        #
        #   @return [Array<String>, nil]
        optional :child_customer_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute parent_customer_id
        #   The ID of the parent customer in the hierarchy. The desired parent customer must
        #   not be a child of another customer.
        #
        #   @return [String, nil]
        optional :parent_customer_id, String, nil?: true

        # @!method initialize(child_customer_ids: nil, parent_customer_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::CustomerUpdateByExternalIDParams::Hierarchy} for more details.
        #
        #   The hierarchical relationships for this customer.
        #
        #   @param child_customer_ids [Array<String>] A list of child customer IDs to add to the hierarchy. The desired child customer
        #
        #   @param parent_customer_id [String, nil] The ID of the parent customer in the hierarchy. The desired parent customer must
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

        QUICKBOOKS = :quickbooks
        BILL_COM = :"bill.com"
        STRIPE_CHARGE = :stripe_charge
        STRIPE_INVOICE = :stripe_invoice
        NETSUITE = :netsuite

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ReportingConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute exempt
        #
        #   @return [Boolean]
        required :exempt, Orb::Internal::Type::Boolean

        # @!method initialize(exempt:)
        #   @param exempt [Boolean]
      end

      class ShippingAddress < Orb::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute postal_code
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
        #   @param city [String, nil]
        #   @param country [String, nil]
        #   @param line1 [String, nil]
        #   @param line2 [String, nil]
        #   @param postal_code [String, nil]
        #   @param state [String, nil]
      end

      module TaxConfiguration
        extend Orb::Internal::Type::Union

        discriminator :tax_provider

        variant :avalara, -> { Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara }

        variant :taxjar, -> { Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar }

        class Avalara < Orb::Internal::Type::BaseModel
          # @!attribute tax_exempt
          #
          #   @return [Boolean]
          required :tax_exempt, Orb::Internal::Type::Boolean

          # @!attribute tax_provider
          #
          #   @return [Symbol, :avalara]
          required :tax_provider, const: :avalara

          # @!attribute tax_exemption_code
          #
          #   @return [String, nil]
          optional :tax_exemption_code, String, nil?: true

          # @!method initialize(tax_exempt:, tax_exemption_code: nil, tax_provider: :avalara)
          #   @param tax_exempt [Boolean]
          #   @param tax_exemption_code [String, nil]
          #   @param tax_provider [Symbol, :avalara]
        end

        class Taxjar < Orb::Internal::Type::BaseModel
          # @!attribute tax_exempt
          #
          #   @return [Boolean]
          required :tax_exempt, Orb::Internal::Type::Boolean

          # @!attribute tax_provider
          #
          #   @return [Symbol, :taxjar]
          required :tax_provider, const: :taxjar

          # @!method initialize(tax_exempt:, tax_provider: :taxjar)
          #   @param tax_exempt [Boolean]
          #   @param tax_provider [Symbol, :taxjar]
        end

        # @!method self.variants
        #   @return [Array(Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Avalara, Orb::CustomerUpdateByExternalIDParams::TaxConfiguration::Taxjar)]
      end

      class TaxID < Orb::Internal::Type::BaseModel
        # @!attribute country
        #
        #   @return [Symbol, Orb::CustomerUpdateByExternalIDParams::TaxID::Country]
        required :country, enum: -> { Orb::CustomerUpdateByExternalIDParams::TaxID::Country }

        # @!attribute type
        #
        #   @return [Symbol, Orb::CustomerUpdateByExternalIDParams::TaxID::Type]
        required :type, enum: -> { Orb::CustomerUpdateByExternalIDParams::TaxID::Type }

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(country:, type:, value:)
        #   Tax IDs are commonly required to be displayed on customer invoices, which are
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
        #
        #   @param country [Symbol, Orb::CustomerUpdateByExternalIDParams::TaxID::Country]
        #   @param type [Symbol, Orb::CustomerUpdateByExternalIDParams::TaxID::Type]
        #   @param value [String]

        # @see Orb::CustomerUpdateByExternalIDParams::TaxID#country
        module Country
          extend Orb::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::CustomerUpdateByExternalIDParams::TaxID#type
        module Type
          extend Orb::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
