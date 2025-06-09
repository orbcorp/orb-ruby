# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#update
    class CustomerUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute accounting_sync_configuration
      #
      #   @return [Orb::Models::NewAccountingSyncConfiguration, nil]
      optional :accounting_sync_configuration, -> { Orb::NewAccountingSyncConfiguration }, nil?: true

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
      #   @return [Orb::Models::AddressInput, nil]
      optional :billing_address, -> { Orb::AddressInput }, nil?: true

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
      #   @return [Orb::Models::CustomerHierarchyConfig, nil]
      optional :hierarchy, -> { Orb::CustomerHierarchyConfig }, nil?: true

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
      #   @return [Symbol, Orb::Models::CustomerUpdateParams::PaymentProvider, nil]
      optional :payment_provider, enum: -> { Orb::CustomerUpdateParams::PaymentProvider }, nil?: true

      # @!attribute payment_provider_id
      #   The ID of this customer in an external payments solution, such as Stripe. This
      #   is used for creating charges or invoices in the external system via Orb.
      #
      #   @return [String, nil]
      optional :payment_provider_id, String, nil?: true

      # @!attribute reporting_configuration
      #
      #   @return [Orb::Models::NewReportingConfiguration, nil]
      optional :reporting_configuration, -> { Orb::NewReportingConfiguration }, nil?: true

      # @!attribute shipping_address
      #
      #   @return [Orb::Models::AddressInput, nil]
      optional :shipping_address, -> { Orb::AddressInput }, nil?: true

      # @!attribute tax_configuration
      #
      #   @return [Orb::Models::NewAvalaraTaxConfiguration, Orb::Models::NewTaxJarConfiguration, Orb::Models::NewSphereConfiguration, nil]
      optional :tax_configuration, union: -> { Orb::CustomerUpdateParams::TaxConfiguration }, nil?: true

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
      #   @return [Orb::Models::CustomerTaxID, nil]
      optional :tax_id, -> { Orb::CustomerTaxID }, nil?: true

      # @!method initialize(accounting_sync_configuration: nil, additional_emails: nil, auto_collection: nil, billing_address: nil, currency: nil, email: nil, email_delivery: nil, external_customer_id: nil, hierarchy: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, reporting_configuration: nil, shipping_address: nil, tax_configuration: nil, tax_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerUpdateParams} for more details.
      #
      #   @param accounting_sync_configuration [Orb::Models::NewAccountingSyncConfiguration, nil]
      #
      #   @param additional_emails [Array<String>, nil] Additional email addresses for this customer. If populated, these email addresse
      #
      #   @param auto_collection [Boolean, nil] Used to determine if invoices for this customer will automatically attempt to ch
      #
      #   @param billing_address [Orb::Models::AddressInput, nil]
      #
      #   @param currency [String, nil] An ISO 4217 currency string used for the customer's invoices and balance. If not
      #
      #   @param email [String, nil] A valid customer email, to be used for invoicing and notifications.
      #
      #   @param email_delivery [Boolean, nil]
      #
      #   @param external_customer_id [String, nil] The external customer ID. This can only be set if empty and the customer has no
      #
      #   @param hierarchy [Orb::Models::CustomerHierarchyConfig, nil] The hierarchical relationships for this customer.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param name [String, nil] The full name of the customer
      #
      #   @param payment_provider [Symbol, Orb::Models::CustomerUpdateParams::PaymentProvider, nil] This is used for creating charges or invoices in an external system via Orb. Whe
      #
      #   @param payment_provider_id [String, nil] The ID of this customer in an external payments solution, such as Stripe. This i
      #
      #   @param reporting_configuration [Orb::Models::NewReportingConfiguration, nil]
      #
      #   @param shipping_address [Orb::Models::AddressInput, nil]
      #
      #   @param tax_configuration [Orb::Models::NewAvalaraTaxConfiguration, Orb::Models::NewTaxJarConfiguration, Orb::Models::NewSphereConfiguration, nil]
      #
      #   @param tax_id [Orb::Models::CustomerTaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

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

      module TaxConfiguration
        extend Orb::Internal::Type::Union

        discriminator :tax_provider

        variant :avalara, -> { Orb::NewAvalaraTaxConfiguration }

        variant :taxjar, -> { Orb::NewTaxJarConfiguration }

        variant :sphere, -> { Orb::NewSphereConfiguration }

        # @!method self.variants
        #   @return [Array(Orb::Models::NewAvalaraTaxConfiguration, Orb::Models::NewTaxJarConfiguration, Orb::Models::NewSphereConfiguration)]
      end
    end
  end
end
