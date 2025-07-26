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

      sig { returns(T.nilable(Orb::Address)) }
      attr_reader :billing_address

      sig { params(billing_address: T.nilable(Orb::Address::OrHash)).void }
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

      sig { returns(T.nilable(Orb::Address)) }
      attr_reader :shipping_address

      sig { params(shipping_address: T.nilable(Orb::Address::OrHash)).void }
      attr_writer :shipping_address

      # Tax IDs are commonly required to be displayed on customer invoices, which are
      # added to the headers of invoices.
      #
      # ### Supported Tax ID Countries and Types
      #
      # | Country                | Type         | Description                                                                                             |
      # | ---------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      # | Albania                | `al_tin`     | Albania Tax Identification Number                                                                       |
      # | Andorra                | `ad_nrt`     | Andorran NRT Number                                                                                     |
      # | Angola                 | `ao_tin`     | Angola Tax Identification Number                                                                        |
      # | Argentina              | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      # | Armenia                | `am_tin`     | Armenia Tax Identification Number                                                                       |
      # | Aruba                  | `aw_tin`     | Aruba Tax Identification Number                                                                         |
      # | Australia              | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      # | Australia              | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      # | Austria                | `eu_vat`     | European VAT Number                                                                                     |
      # | Azerbaijan             | `az_tin`     | Azerbaijan Tax Identification Number                                                                    |
      # | Bahamas                | `bs_tin`     | Bahamas Tax Identification Number                                                                       |
      # | Bahrain                | `bh_vat`     | Bahraini VAT Number                                                                                     |
      # | Bangladesh             | `bd_bin`     | Bangladesh Business Identification Number                                                               |
      # | Barbados               | `bb_tin`     | Barbados Tax Identification Number                                                                      |
      # | Belarus                | `by_tin`     | Belarus TIN Number                                                                                      |
      # | Belgium                | `eu_vat`     | European VAT Number                                                                                     |
      # | Benin                  | `bj_ifu`     | Benin Tax Identification Number (Identifiant Fiscal Unique)                                             |
      # | Bolivia                | `bo_tin`     | Bolivian Tax ID                                                                                         |
      # | Bosnia and Herzegovina | `ba_tin`     | Bosnia and Herzegovina Tax Identification Number                                                        |
      # | Brazil                 | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      # | Brazil                 | `br_cpf`     | Brazilian CPF Number                                                                                    |
      # | Bulgaria               | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      # | Bulgaria               | `eu_vat`     | European VAT Number                                                                                     |
      # | Burkina Faso           | `bf_ifu`     | Burkina Faso Tax Identification Number (Numéro d'Identifiant Fiscal Unique)                             |
      # | Cambodia               | `kh_tin`     | Cambodia Tax Identification Number                                                                      |
      # | Cameroon               | `cm_niu`     | Cameroon Tax Identification Number (Numéro d'Identifiant fiscal Unique)                                 |
      # | Canada                 | `ca_bn`      | Canadian BN                                                                                             |
      # | Canada                 | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      # | Canada                 | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      # | Canada                 | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      # | Canada                 | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      # | Canada                 | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      # | Cape Verde             | `cv_nif`     | Cape Verde Tax Identification Number (Número de Identificação Fiscal)                                   |
      # | Chile                  | `cl_tin`     | Chilean TIN                                                                                             |
      # | China                  | `cn_tin`     | Chinese Tax ID                                                                                          |
      # | Colombia               | `co_nit`     | Colombian NIT Number                                                                                    |
      # | Congo-Kinshasa         | `cd_nif`     | Congo (DR) Tax Identification Number (Número de Identificação Fiscal)                                   |
      # | Costa Rica             | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      # | Croatia                | `eu_vat`     | European VAT Number                                                                                     |
      # | Croatia                | `hr_oib`     | Croatian Personal Identification Number (OIB)                                                           |
      # | Cyprus                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Czech Republic         | `eu_vat`     | European VAT Number                                                                                     |
      # | Denmark                | `eu_vat`     | European VAT Number                                                                                     |
      # | Dominican Republic     | `do_rcn`     | Dominican RCN Number                                                                                    |
      # | Ecuador                | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      # | Egypt                  | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      # | El Salvador            | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      # | Estonia                | `eu_vat`     | European VAT Number                                                                                     |
      # | Ethiopia               | `et_tin`     | Ethiopia Tax Identification Number                                                                      |
      # | European Union         | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      # | Finland                | `eu_vat`     | European VAT Number                                                                                     |
      # | France                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
      # | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
      # | Germany                | `eu_vat`     | European VAT Number                                                                                     |
      # | Greece                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Guinea                 | `gn_nif`     | Guinea Tax Identification Number (Número de Identificação Fiscal)                                       |
      # | Hong Kong              | `hk_br`      | Hong Kong BR Number                                                                                     |
      # | Hungary                | `eu_vat`     | European VAT Number                                                                                     |
      # | Hungary                | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      # | Iceland                | `is_vat`     | Icelandic VAT                                                                                           |
      # | India                  | `in_gst`     | Indian GST Number                                                                                       |
      # | Indonesia              | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      # | Ireland                | `eu_vat`     | European VAT Number                                                                                     |
      # | Israel                 | `il_vat`     | Israel VAT                                                                                              |
      # | Italy                  | `eu_vat`     | European VAT Number                                                                                     |
      # | Japan                  | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      # | Japan                  | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      # | Japan                  | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      # | Kazakhstan             | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      # | Kenya                  | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      # | Kyrgyzstan             | `kg_tin`     | Kyrgyzstan Tax Identification Number                                                                    |
      # | Laos                   | `la_tin`     | Laos Tax Identification Number                                                                          |
      # | Latvia                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Liechtenstein          | `li_uid`     | Liechtensteinian UID Number                                                                             |
      # | Liechtenstein          | `li_vat`     | Liechtenstein VAT Number                                                                                |
      # | Lithuania              | `eu_vat`     | European VAT Number                                                                                     |
      # | Luxembourg             | `eu_vat`     | European VAT Number                                                                                     |
      # | Malaysia               | `my_frp`     | Malaysian FRP Number                                                                                    |
      # | Malaysia               | `my_itn`     | Malaysian ITN                                                                                           |
      # | Malaysia               | `my_sst`     | Malaysian SST Number                                                                                    |
      # | Malta                  | `eu_vat`     | European VAT Number                                                                                     |
      # | Mauritania             | `mr_nif`     | Mauritania Tax Identification Number (Número de Identificação Fiscal)                                   |
      # | Mexico                 | `mx_rfc`     | Mexican RFC Number                                                                                      |
      # | Moldova                | `md_vat`     | Moldova VAT Number                                                                                      |
      # | Montenegro             | `me_pib`     | Montenegro PIB Number                                                                                   |
      # | Morocco                | `ma_vat`     | Morocco VAT Number                                                                                      |
      # | Nepal                  | `np_pan`     | Nepal PAN Number                                                                                        |
      # | Netherlands            | `eu_vat`     | European VAT Number                                                                                     |
      # | New Zealand            | `nz_gst`     | New Zealand GST Number                                                                                  |
      # | Nigeria                | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      # | North Macedonia        | `mk_vat`     | North Macedonia VAT Number                                                                              |
      # | Northern Ireland       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      # | Norway                 | `no_vat`     | Norwegian VAT Number                                                                                    |
      # | Norway                 | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      # | Oman                   | `om_vat`     | Omani VAT Number                                                                                        |
      # | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      # | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
      # | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Portugal               | `eu_vat`     | European VAT Number                                                                                     |
      # | Romania                | `eu_vat`     | European VAT Number                                                                                     |
      # | Romania                | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      # | Russia                 | `ru_inn`     | Russian INN                                                                                             |
      # | Russia                 | `ru_kpp`     | Russian KPP                                                                                             |
      # | Saudi Arabia           | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      # | Senegal                | `sn_ninea`   | Senegal NINEA Number                                                                                    |
      # | Serbia                 | `rs_pib`     | Serbian PIB Number                                                                                      |
      # | Singapore              | `sg_gst`     | Singaporean GST                                                                                         |
      # | Singapore              | `sg_uen`     | Singaporean UEN                                                                                         |
      # | Slovakia               | `eu_vat`     | European VAT Number                                                                                     |
      # | Slovenia               | `eu_vat`     | European VAT Number                                                                                     |
      # | Slovenia               | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      # | South Africa           | `za_vat`     | South African VAT Number                                                                                |
      # | South Korea            | `kr_brn`     | Korean BRN                                                                                              |
      # | Spain                  | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      # | Spain                  | `eu_vat`     | European VAT Number                                                                                     |
      # | Suriname               | `sr_fin`     | Suriname FIN Number                                                                                     |
      # | Sweden                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Switzerland            | `ch_uid`     | Switzerland UID Number                                                                                  |
      # | Switzerland            | `ch_vat`     | Switzerland VAT Number                                                                                  |
      # | Taiwan                 | `tw_vat`     | Taiwanese VAT                                                                                           |
      # | Tajikistan             | `tj_tin`     | Tajikistan Tax Identification Number                                                                    |
      # | Tanzania               | `tz_vat`     | Tanzania VAT Number                                                                                     |
      # | Thailand               | `th_vat`     | Thai VAT                                                                                                |
      # | Turkey                 | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      # | Uganda                 | `ug_tin`     | Uganda Tax Identification Number                                                                        |
      # | Ukraine                | `ua_vat`     | Ukrainian VAT                                                                                           |
      # | United Arab Emirates   | `ae_trn`     | United Arab Emirates TRN                                                                                |
      # | United Kingdom         | `gb_vat`     | United Kingdom VAT Number                                                                               |
      # | United States          | `us_ein`     | United States EIN                                                                                       |
      # | Uruguay                | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      # | Uzbekistan             | `uz_tin`     | Uzbekistan TIN Number                                                                                   |
      # | Uzbekistan             | `uz_vat`     | Uzbekistan VAT Number                                                                                   |
      # | Venezuela              | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      # | Vietnam                | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      # | Zambia                 | `zm_tin`     | Zambia Tax Identification Number                                                                        |
      # | Zimbabwe               | `zw_tin`     | Zimbabwe Tax Identification Number                                                                      |
      sig { returns(T.nilable(Orb::CustomerTaxID)) }
      attr_reader :tax_id

      sig { params(tax_id: T.nilable(Orb::CustomerTaxID::OrHash)).void }
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
          billing_address: T.nilable(Orb::Address::OrHash),
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
          shipping_address: T.nilable(Orb::Address::OrHash),
          tax_id: T.nilable(Orb::CustomerTaxID::OrHash),
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
        # | Country                | Type         | Description                                                                                             |
        # | ---------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
        # | Albania                | `al_tin`     | Albania Tax Identification Number                                                                       |
        # | Andorra                | `ad_nrt`     | Andorran NRT Number                                                                                     |
        # | Angola                 | `ao_tin`     | Angola Tax Identification Number                                                                        |
        # | Argentina              | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
        # | Armenia                | `am_tin`     | Armenia Tax Identification Number                                                                       |
        # | Aruba                  | `aw_tin`     | Aruba Tax Identification Number                                                                         |
        # | Australia              | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
        # | Australia              | `au_arn`     | Australian Taxation Office Reference Number                                                             |
        # | Austria                | `eu_vat`     | European VAT Number                                                                                     |
        # | Azerbaijan             | `az_tin`     | Azerbaijan Tax Identification Number                                                                    |
        # | Bahamas                | `bs_tin`     | Bahamas Tax Identification Number                                                                       |
        # | Bahrain                | `bh_vat`     | Bahraini VAT Number                                                                                     |
        # | Bangladesh             | `bd_bin`     | Bangladesh Business Identification Number                                                               |
        # | Barbados               | `bb_tin`     | Barbados Tax Identification Number                                                                      |
        # | Belarus                | `by_tin`     | Belarus TIN Number                                                                                      |
        # | Belgium                | `eu_vat`     | European VAT Number                                                                                     |
        # | Benin                  | `bj_ifu`     | Benin Tax Identification Number (Identifiant Fiscal Unique)                                             |
        # | Bolivia                | `bo_tin`     | Bolivian Tax ID                                                                                         |
        # | Bosnia and Herzegovina | `ba_tin`     | Bosnia and Herzegovina Tax Identification Number                                                        |
        # | Brazil                 | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
        # | Brazil                 | `br_cpf`     | Brazilian CPF Number                                                                                    |
        # | Bulgaria               | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
        # | Bulgaria               | `eu_vat`     | European VAT Number                                                                                     |
        # | Burkina Faso           | `bf_ifu`     | Burkina Faso Tax Identification Number (Numéro d'Identifiant Fiscal Unique)                             |
        # | Cambodia               | `kh_tin`     | Cambodia Tax Identification Number                                                                      |
        # | Cameroon               | `cm_niu`     | Cameroon Tax Identification Number (Numéro d'Identifiant fiscal Unique)                                 |
        # | Canada                 | `ca_bn`      | Canadian BN                                                                                             |
        # | Canada                 | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
        # | Canada                 | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
        # | Canada                 | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
        # | Canada                 | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
        # | Canada                 | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
        # | Cape Verde             | `cv_nif`     | Cape Verde Tax Identification Number (Número de Identificação Fiscal)                                   |
        # | Chile                  | `cl_tin`     | Chilean TIN                                                                                             |
        # | China                  | `cn_tin`     | Chinese Tax ID                                                                                          |
        # | Colombia               | `co_nit`     | Colombian NIT Number                                                                                    |
        # | Congo-Kinshasa         | `cd_nif`     | Congo (DR) Tax Identification Number (Número de Identificação Fiscal)                                   |
        # | Costa Rica             | `cr_tin`     | Costa Rican Tax ID                                                                                      |
        # | Croatia                | `eu_vat`     | European VAT Number                                                                                     |
        # | Croatia                | `hr_oib`     | Croatian Personal Identification Number (OIB)                                                           |
        # | Cyprus                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Czech Republic         | `eu_vat`     | European VAT Number                                                                                     |
        # | Denmark                | `eu_vat`     | European VAT Number                                                                                     |
        # | Dominican Republic     | `do_rcn`     | Dominican RCN Number                                                                                    |
        # | Ecuador                | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
        # | Egypt                  | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
        # | El Salvador            | `sv_nit`     | El Salvadorian NIT Number                                                                               |
        # | Estonia                | `eu_vat`     | European VAT Number                                                                                     |
        # | Ethiopia               | `et_tin`     | Ethiopia Tax Identification Number                                                                      |
        # | European Union         | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
        # | Finland                | `eu_vat`     | European VAT Number                                                                                     |
        # | France                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
        # | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
        # | Germany                | `eu_vat`     | European VAT Number                                                                                     |
        # | Greece                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Guinea                 | `gn_nif`     | Guinea Tax Identification Number (Número de Identificação Fiscal)                                       |
        # | Hong Kong              | `hk_br`      | Hong Kong BR Number                                                                                     |
        # | Hungary                | `eu_vat`     | European VAT Number                                                                                     |
        # | Hungary                | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
        # | Iceland                | `is_vat`     | Icelandic VAT                                                                                           |
        # | India                  | `in_gst`     | Indian GST Number                                                                                       |
        # | Indonesia              | `id_npwp`    | Indonesian NPWP Number                                                                                  |
        # | Ireland                | `eu_vat`     | European VAT Number                                                                                     |
        # | Israel                 | `il_vat`     | Israel VAT                                                                                              |
        # | Italy                  | `eu_vat`     | European VAT Number                                                                                     |
        # | Japan                  | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
        # | Japan                  | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
        # | Japan                  | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
        # | Kazakhstan             | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
        # | Kenya                  | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
        # | Kyrgyzstan             | `kg_tin`     | Kyrgyzstan Tax Identification Number                                                                    |
        # | Laos                   | `la_tin`     | Laos Tax Identification Number                                                                          |
        # | Latvia                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Liechtenstein          | `li_uid`     | Liechtensteinian UID Number                                                                             |
        # | Liechtenstein          | `li_vat`     | Liechtenstein VAT Number                                                                                |
        # | Lithuania              | `eu_vat`     | European VAT Number                                                                                     |
        # | Luxembourg             | `eu_vat`     | European VAT Number                                                                                     |
        # | Malaysia               | `my_frp`     | Malaysian FRP Number                                                                                    |
        # | Malaysia               | `my_itn`     | Malaysian ITN                                                                                           |
        # | Malaysia               | `my_sst`     | Malaysian SST Number                                                                                    |
        # | Malta                  | `eu_vat`     | European VAT Number                                                                                     |
        # | Mauritania             | `mr_nif`     | Mauritania Tax Identification Number (Número de Identificação Fiscal)                                   |
        # | Mexico                 | `mx_rfc`     | Mexican RFC Number                                                                                      |
        # | Moldova                | `md_vat`     | Moldova VAT Number                                                                                      |
        # | Montenegro             | `me_pib`     | Montenegro PIB Number                                                                                   |
        # | Morocco                | `ma_vat`     | Morocco VAT Number                                                                                      |
        # | Nepal                  | `np_pan`     | Nepal PAN Number                                                                                        |
        # | Netherlands            | `eu_vat`     | European VAT Number                                                                                     |
        # | New Zealand            | `nz_gst`     | New Zealand GST Number                                                                                  |
        # | Nigeria                | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
        # | North Macedonia        | `mk_vat`     | North Macedonia VAT Number                                                                              |
        # | Northern Ireland       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
        # | Norway                 | `no_vat`     | Norwegian VAT Number                                                                                    |
        # | Norway                 | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
        # | Oman                   | `om_vat`     | Omani VAT Number                                                                                        |
        # | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        # | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
        # | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Portugal               | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania                | `eu_vat`     | European VAT Number                                                                                     |
        # | Romania                | `ro_tin`     | Romanian Tax ID Number                                                                                  |
        # | Russia                 | `ru_inn`     | Russian INN                                                                                             |
        # | Russia                 | `ru_kpp`     | Russian KPP                                                                                             |
        # | Saudi Arabia           | `sa_vat`     | Saudi Arabia VAT                                                                                        |
        # | Senegal                | `sn_ninea`   | Senegal NINEA Number                                                                                    |
        # | Serbia                 | `rs_pib`     | Serbian PIB Number                                                                                      |
        # | Singapore              | `sg_gst`     | Singaporean GST                                                                                         |
        # | Singapore              | `sg_uen`     | Singaporean UEN                                                                                         |
        # | Slovakia               | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia               | `eu_vat`     | European VAT Number                                                                                     |
        # | Slovenia               | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
        # | South Africa           | `za_vat`     | South African VAT Number                                                                                |
        # | South Korea            | `kr_brn`     | Korean BRN                                                                                              |
        # | Spain                  | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
        # | Spain                  | `eu_vat`     | European VAT Number                                                                                     |
        # | Suriname               | `sr_fin`     | Suriname FIN Number                                                                                     |
        # | Sweden                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Switzerland            | `ch_uid`     | Switzerland UID Number                                                                                  |
        # | Switzerland            | `ch_vat`     | Switzerland VAT Number                                                                                  |
        # | Taiwan                 | `tw_vat`     | Taiwanese VAT                                                                                           |
        # | Tajikistan             | `tj_tin`     | Tajikistan Tax Identification Number                                                                    |
        # | Tanzania               | `tz_vat`     | Tanzania VAT Number                                                                                     |
        # | Thailand               | `th_vat`     | Thai VAT                                                                                                |
        # | Turkey                 | `tr_tin`     | Turkish Tax Identification Number                                                                       |
        # | Uganda                 | `ug_tin`     | Uganda Tax Identification Number                                                                        |
        # | Ukraine                | `ua_vat`     | Ukrainian VAT                                                                                           |
        # | United Arab Emirates   | `ae_trn`     | United Arab Emirates TRN                                                                                |
        # | United Kingdom         | `gb_vat`     | United Kingdom VAT Number                                                                               |
        # | United States          | `us_ein`     | United States EIN                                                                                       |
        # | Uruguay                | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
        # | Uzbekistan             | `uz_tin`     | Uzbekistan TIN Number                                                                                   |
        # | Uzbekistan             | `uz_vat`     | Uzbekistan VAT Number                                                                                   |
        # | Venezuela              | `ve_rif`     | Venezuelan RIF Number                                                                                   |
        # | Vietnam                | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
        # | Zambia                 | `zm_tin`     | Zambia Tax Identification Number                                                                        |
        # | Zimbabwe               | `zw_tin`     | Zimbabwe Tax Identification Number                                                                      |
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
            billing_address: T.nilable(Orb::Address),
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
            shipping_address: T.nilable(Orb::Address),
            tax_id: T.nilable(Orb::CustomerTaxID),
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

      class Hierarchy < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Customer::Hierarchy, Orb::Internal::AnyHash)
          end

        sig { returns(T::Array[Orb::CustomerMinified]) }
        attr_accessor :children

        sig { returns(T.nilable(Orb::CustomerMinified)) }
        attr_reader :parent

        sig { params(parent: T.nilable(Orb::CustomerMinified::OrHash)).void }
        attr_writer :parent

        # The hierarchical relationships for this customer.
        sig do
          params(
            children: T::Array[Orb::CustomerMinified::OrHash],
            parent: T.nilable(Orb::CustomerMinified::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(children:, parent:)
        end

        sig do
          override.returns(
            {
              children: T::Array[Orb::CustomerMinified],
              parent: T.nilable(Orb::CustomerMinified)
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
