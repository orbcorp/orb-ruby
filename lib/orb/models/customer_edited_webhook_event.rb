# frozen_string_literal: true

module Orb
  module Models
    class CustomerEditedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer
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
      #   @return [Orb::Models::Customer]
      required :customer, -> { Orb::Customer }

      # @!attribute properties
      #
      #   @return [Orb::Models::CustomerEditedWebhookEvent::Properties]
      required :properties, -> { Orb::CustomerEditedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::CustomerEditedWebhookEvent::Type]
      required :type, enum: -> { Orb::CustomerEditedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, customer:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerEditedWebhookEvent} for more details.
      #
      #   Issued when a customer is updated.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
      #
      #   @param properties [Orb::Models::CustomerEditedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::CustomerEditedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::CustomerEditedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute previous_attributes
        #   metadata values are non-null on the wire (deleting a key removes it from
        #   storage); the Optional[str] values only exist on the new half of a metadata
        #   FieldChange.
        #
        #   @return [Orb::Models::CustomerEditedWebhookEvent::Properties::PreviousAttributes]
        required :previous_attributes, -> { Orb::CustomerEditedWebhookEvent::Properties::PreviousAttributes }

        # @!method initialize(previous_attributes:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::CustomerEditedWebhookEvent::Properties} for more details.
        #
        #   @param previous_attributes [Orb::Models::CustomerEditedWebhookEvent::Properties::PreviousAttributes] metadata values are non-null on the wire (deleting a key removes it from storage

        # @see Orb::Models::CustomerEditedWebhookEvent::Properties#previous_attributes
        class PreviousAttributes < Orb::Internal::Type::BaseModel
          # @!attribute auto_collection
          #
          #   @return [Boolean, nil]
          optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute billing_address
          #
          #   @return [Orb::Models::Address, nil]
          optional :billing_address, -> { Orb::Address }, nil?: true

          # @!attribute default_payment_method_id
          #
          #   @return [String, nil]
          optional :default_payment_method_id, String, nil?: true

          # @!attribute email
          #
          #   @return [String, nil]
          optional :email, String, nil?: true

          # @!attribute email_delivery
          #
          #   @return [Boolean, nil]
          optional :email_delivery, Orb::Internal::Type::Boolean, nil?: true

          # @!attribute external_customer_id
          #
          #   @return [String, nil]
          optional :external_customer_id, String, nil?: true

          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String], nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute payment_provider
          #
          #   @return [String, nil]
          optional :payment_provider, String, nil?: true

          # @!attribute payment_provider_id
          #
          #   @return [String, nil]
          optional :payment_provider_id, String, nil?: true

          # @!attribute shipping_address
          #
          #   @return [Orb::Models::Address, nil]
          optional :shipping_address, -> { Orb::Address }, nil?: true

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
          #   | Faroe Islands          | `fo_vat`     | Faroe Islands VAT Number                                                                                |
          #   | Finland                | `eu_vat`     | European VAT Number                                                                                     |
          #   | France                 | `eu_vat`     | European VAT Number                                                                                     |
          #   | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
          #   | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
          #   | Germany                | `eu_vat`     | European VAT Number                                                                                     |
          #   | Gibraltar              | `gi_tin`     | Gibraltar Tax Identification Number                                                                     |
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
          #   | Italy                  | `it_cf`      | Italian Codice Fiscale Number                                                                           |
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
          #   | Paraguay               | `py_ruc`     | Paraguayan RUC Number                                                                                   |
          #   | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
          #   | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
          #   | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
          #   | Poland                 | `pl_nip`     | Polish Tax ID Number                                                                                    |
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
          #   | Sri Lanka              | `lk_vat`     | Sri Lanka VAT Number                                                                                    |
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
          optional :tax_id, -> { Orb::CustomerTaxID }, nil?: true

          # @!method initialize(auto_collection: nil, billing_address: nil, default_payment_method_id: nil, email: nil, email_delivery: nil, external_customer_id: nil, metadata: nil, name: nil, payment_provider: nil, payment_provider_id: nil, shipping_address: nil, tax_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::CustomerEditedWebhookEvent::Properties::PreviousAttributes} for
          #   more details.
          #
          #   metadata values are non-null on the wire (deleting a key removes it from
          #   storage); the Optional[str] values only exist on the new half of a metadata
          #   FieldChange.
          #
          #   @param auto_collection [Boolean, nil]
          #
          #   @param billing_address [Orb::Models::Address, nil]
          #
          #   @param default_payment_method_id [String, nil]
          #
          #   @param email [String, nil]
          #
          #   @param email_delivery [Boolean, nil]
          #
          #   @param external_customer_id [String, nil]
          #
          #   @param metadata [Hash{Symbol=>String}, nil]
          #
          #   @param name [String, nil]
          #
          #   @param payment_provider [String, nil]
          #
          #   @param payment_provider_id [String, nil]
          #
          #   @param shipping_address [Orb::Models::Address, nil]
          #
          #   @param tax_id [Orb::Models::CustomerTaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::CustomerEditedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        CUSTOMER_EDITED = :"customer.edited"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
