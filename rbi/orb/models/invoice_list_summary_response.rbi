# typed: strong

module Orb
  module Models
    class InvoiceListSummaryResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::InvoiceListSummaryResponse, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # This is the final amount required to be charged to the customer and reflects the
      # application of the customer balance to the `total` of the invoice.
      sig { returns(String) }
      attr_accessor :amount_due

      sig { returns(Orb::Models::InvoiceListSummaryResponse::AutoCollection) }
      attr_reader :auto_collection

      sig do
        params(
          auto_collection:
            Orb::Models::InvoiceListSummaryResponse::AutoCollection::OrHash
        ).void
      end
      attr_writer :auto_collection

      sig { returns(T.nilable(Orb::Address)) }
      attr_reader :billing_address

      sig { params(billing_address: T.nilable(Orb::Address::OrHash)).void }
      attr_writer :billing_address

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      attr_accessor :created_at

      # A list of credit notes associated with the invoice
      sig do
        returns(T::Array[Orb::Models::InvoiceListSummaryResponse::CreditNote])
      end
      attr_accessor :credit_notes

      # An ISO 4217 currency string or `credits`
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Orb::CustomerMinified) }
      attr_reader :customer

      sig { params(customer: Orb::CustomerMinified::OrHash).void }
      attr_writer :customer

      sig do
        returns(
          T::Array[
            Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction
          ]
        )
      end
      attr_accessor :customer_balance_transactions

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
      # | Faroe Islands          | `fo_vat`     | Faroe Islands VAT Number                                                                                |
      # | Finland                | `eu_vat`     | European VAT Number                                                                                     |
      # | France                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
      # | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
      # | Germany                | `eu_vat`     | European VAT Number                                                                                     |
      # | Gibraltar              | `gi_tin`     | Gibraltar Tax Identification Number                                                                     |
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
      # | Italy                  | `it_cf`      | Italian Codice Fiscale Number                                                                           |
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
      # | Paraguay               | `py_ruc`     | Paraguayan RUC Number                                                                                   |
      # | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      # | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
      # | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
      # | Poland                 | `pl_nip`     | Polish Tax ID Number                                                                                    |
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
      # | Sri Lanka              | `lk_vat`     | Sri Lanka VAT Number                                                                                    |
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
      attr_reader :customer_tax_id

      sig do
        params(customer_tax_id: T.nilable(Orb::CustomerTaxID::OrHash)).void
      end
      attr_writer :customer_tax_id

      # When the invoice payment is due. The due date is null if the invoice is not yet
      # finalized.
      sig { returns(T.nilable(Time)) }
      attr_accessor :due_date

      # If the invoice has a status of `draft`, this will be the time that the invoice
      # will be eligible to be issued, otherwise it will be `null`. If `auto-issue` is
      # true, the invoice will automatically begin issuing at this time.
      sig { returns(T.nilable(Time)) }
      attr_accessor :eligible_to_issue_at

      # A URL for the customer-facing invoice portal. This URL expires 30 days after the
      # invoice's due date, or 60 days after being re-generated through the UI.
      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_invoice_url

      # The scheduled date of the invoice
      sig { returns(Time) }
      attr_accessor :invoice_date

      # Automatically generated invoice number to help track and reconcile invoices.
      # Invoice numbers have a prefix such as `RFOBWG`. These can be sequential per
      # account or customer.
      sig { returns(String) }
      attr_accessor :invoice_number

      # The link to download the PDF representation of the `Invoice`.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_pdf

      sig do
        returns(
          Orb::Models::InvoiceListSummaryResponse::InvoiceSource::TaggedSymbol
        )
      end
      attr_accessor :invoice_source

      # If the invoice failed to issue, this will be the last time it failed to issue
      # (even if it is now in a different state.)
      sig { returns(T.nilable(Time)) }
      attr_accessor :issue_failed_at

      # If the invoice has been issued, this will be the time it transitioned to
      # `issued` (even if it is now in a different state.)
      sig { returns(T.nilable(Time)) }
      attr_accessor :issued_at

      # Free-form text which is available on the invoice PDF and the Orb invoice portal.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # If the invoice has a status of `paid`, this gives a timestamp when the invoice
      # was paid.
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # A list of payment attempts associated with the invoice
      sig do
        returns(
          T::Array[Orb::Models::InvoiceListSummaryResponse::PaymentAttempt]
        )
      end
      attr_accessor :payment_attempts

      # If payment was attempted on this invoice but failed, this will be the time of
      # the most recent attempt.
      sig { returns(T.nilable(Time)) }
      attr_accessor :payment_failed_at

      # If payment was attempted on this invoice, this will be the start time of the
      # most recent attempt. This field is especially useful for delayed-notification
      # payment mechanisms (like bank transfers), where payment can take 3 days or more.
      sig { returns(T.nilable(Time)) }
      attr_accessor :payment_started_at

      # If the invoice is in draft, this timestamp will reflect when the invoice is
      # scheduled to be issued.
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_issue_at

      sig { returns(T.nilable(Orb::Address)) }
      attr_reader :shipping_address

      sig { params(shipping_address: T.nilable(Orb::Address::OrHash)).void }
      attr_writer :shipping_address

      sig do
        returns(Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig { returns(T.nilable(Orb::SubscriptionMinified)) }
      attr_reader :subscription

      sig do
        params(subscription: T.nilable(Orb::SubscriptionMinified::OrHash)).void
      end
      attr_writer :subscription

      # If the invoice failed to sync, this will be the last time an external invoicing
      # provider sync was attempted. This field will always be `null` for invoices using
      # Orb Invoicing.
      sig { returns(T.nilable(Time)) }
      attr_accessor :sync_failed_at

      # The total after any minimums and discounts have been applied.
      sig { returns(String) }
      attr_accessor :total

      # If the invoice has a status of `void`, this gives a timestamp when the invoice
      # was voided.
      sig { returns(T.nilable(Time)) }
      attr_accessor :voided_at

      # This is true if the invoice will be automatically issued in the future, and
      # false otherwise.
      sig { returns(T::Boolean) }
      attr_accessor :will_auto_issue

      # #InvoiceApiResourceWithoutLineItems
      sig do
        params(
          id: String,
          amount_due: String,
          auto_collection:
            Orb::Models::InvoiceListSummaryResponse::AutoCollection::OrHash,
          billing_address: T.nilable(Orb::Address::OrHash),
          created_at: Time,
          credit_notes:
            T::Array[
              Orb::Models::InvoiceListSummaryResponse::CreditNote::OrHash
            ],
          currency: String,
          customer: Orb::CustomerMinified::OrHash,
          customer_balance_transactions:
            T::Array[
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::OrHash
            ],
          customer_tax_id: T.nilable(Orb::CustomerTaxID::OrHash),
          due_date: T.nilable(Time),
          eligible_to_issue_at: T.nilable(Time),
          hosted_invoice_url: T.nilable(String),
          invoice_date: Time,
          invoice_number: String,
          invoice_pdf: T.nilable(String),
          invoice_source:
            Orb::Models::InvoiceListSummaryResponse::InvoiceSource::OrSymbol,
          issue_failed_at: T.nilable(Time),
          issued_at: T.nilable(Time),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          paid_at: T.nilable(Time),
          payment_attempts:
            T::Array[
              Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::OrHash
            ],
          payment_failed_at: T.nilable(Time),
          payment_started_at: T.nilable(Time),
          scheduled_issue_at: T.nilable(Time),
          shipping_address: T.nilable(Orb::Address::OrHash),
          status: Orb::Models::InvoiceListSummaryResponse::Status::OrSymbol,
          subscription: T.nilable(Orb::SubscriptionMinified::OrHash),
          sync_failed_at: T.nilable(Time),
          total: String,
          voided_at: T.nilable(Time),
          will_auto_issue: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # This is the final amount required to be charged to the customer and reflects the
        # application of the customer balance to the `total` of the invoice.
        amount_due:,
        auto_collection:,
        billing_address:,
        # The creation time of the resource in Orb.
        created_at:,
        # A list of credit notes associated with the invoice
        credit_notes:,
        # An ISO 4217 currency string or `credits`
        currency:,
        customer:,
        customer_balance_transactions:,
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
        # | Faroe Islands          | `fo_vat`     | Faroe Islands VAT Number                                                                                |
        # | Finland                | `eu_vat`     | European VAT Number                                                                                     |
        # | France                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
        # | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
        # | Germany                | `eu_vat`     | European VAT Number                                                                                     |
        # | Gibraltar              | `gi_tin`     | Gibraltar Tax Identification Number                                                                     |
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
        # | Italy                  | `it_cf`      | Italian Codice Fiscale Number                                                                           |
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
        # | Paraguay               | `py_ruc`     | Paraguayan RUC Number                                                                                   |
        # | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
        # | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
        # | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
        # | Poland                 | `pl_nip`     | Polish Tax ID Number                                                                                    |
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
        # | Sri Lanka              | `lk_vat`     | Sri Lanka VAT Number                                                                                    |
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
        customer_tax_id:,
        # When the invoice payment is due. The due date is null if the invoice is not yet
        # finalized.
        due_date:,
        # If the invoice has a status of `draft`, this will be the time that the invoice
        # will be eligible to be issued, otherwise it will be `null`. If `auto-issue` is
        # true, the invoice will automatically begin issuing at this time.
        eligible_to_issue_at:,
        # A URL for the customer-facing invoice portal. This URL expires 30 days after the
        # invoice's due date, or 60 days after being re-generated through the UI.
        hosted_invoice_url:,
        # The scheduled date of the invoice
        invoice_date:,
        # Automatically generated invoice number to help track and reconcile invoices.
        # Invoice numbers have a prefix such as `RFOBWG`. These can be sequential per
        # account or customer.
        invoice_number:,
        # The link to download the PDF representation of the `Invoice`.
        invoice_pdf:,
        invoice_source:,
        # If the invoice failed to issue, this will be the last time it failed to issue
        # (even if it is now in a different state.)
        issue_failed_at:,
        # If the invoice has been issued, this will be the time it transitioned to
        # `issued` (even if it is now in a different state.)
        issued_at:,
        # Free-form text which is available on the invoice PDF and the Orb invoice portal.
        memo:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        # If the invoice has a status of `paid`, this gives a timestamp when the invoice
        # was paid.
        paid_at:,
        # A list of payment attempts associated with the invoice
        payment_attempts:,
        # If payment was attempted on this invoice but failed, this will be the time of
        # the most recent attempt.
        payment_failed_at:,
        # If payment was attempted on this invoice, this will be the start time of the
        # most recent attempt. This field is especially useful for delayed-notification
        # payment mechanisms (like bank transfers), where payment can take 3 days or more.
        payment_started_at:,
        # If the invoice is in draft, this timestamp will reflect when the invoice is
        # scheduled to be issued.
        scheduled_issue_at:,
        shipping_address:,
        status:,
        subscription:,
        # If the invoice failed to sync, this will be the last time an external invoicing
        # provider sync was attempted. This field will always be `null` for invoices using
        # Orb Invoicing.
        sync_failed_at:,
        # The total after any minimums and discounts have been applied.
        total:,
        # If the invoice has a status of `void`, this gives a timestamp when the invoice
        # was voided.
        voided_at:,
        # This is true if the invoice will be automatically issued in the future, and
        # false otherwise.
        will_auto_issue:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_due: String,
            auto_collection:
              Orb::Models::InvoiceListSummaryResponse::AutoCollection,
            billing_address: T.nilable(Orb::Address),
            created_at: Time,
            credit_notes:
              T::Array[Orb::Models::InvoiceListSummaryResponse::CreditNote],
            currency: String,
            customer: Orb::CustomerMinified,
            customer_balance_transactions:
              T::Array[
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction
              ],
            customer_tax_id: T.nilable(Orb::CustomerTaxID),
            due_date: T.nilable(Time),
            eligible_to_issue_at: T.nilable(Time),
            hosted_invoice_url: T.nilable(String),
            invoice_date: Time,
            invoice_number: String,
            invoice_pdf: T.nilable(String),
            invoice_source:
              Orb::Models::InvoiceListSummaryResponse::InvoiceSource::TaggedSymbol,
            issue_failed_at: T.nilable(Time),
            issued_at: T.nilable(Time),
            memo: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            paid_at: T.nilable(Time),
            payment_attempts:
              T::Array[Orb::Models::InvoiceListSummaryResponse::PaymentAttempt],
            payment_failed_at: T.nilable(Time),
            payment_started_at: T.nilable(Time),
            scheduled_issue_at: T.nilable(Time),
            shipping_address: T.nilable(Orb::Address),
            status:
              Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol,
            subscription: T.nilable(Orb::SubscriptionMinified),
            sync_failed_at: T.nilable(Time),
            total: String,
            voided_at: T.nilable(Time),
            will_auto_issue: T::Boolean
          }
        )
      end
      def to_hash
      end

      class AutoCollection < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceListSummaryResponse::AutoCollection,
              Orb::Internal::AnyHash
            )
          end

        # True only if auto-collection is enabled for this invoice.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :enabled

        # If the invoice is scheduled for auto-collection, this field will reflect when
        # the next attempt will occur. If dunning has been exhausted, or auto-collection
        # is not enabled for this invoice, this field will be `null`.
        sig { returns(T.nilable(Time)) }
        attr_accessor :next_attempt_at

        # Number of auto-collection payment attempts.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :num_attempts

        # If Orb has ever attempted payment auto-collection for this invoice, this field
        # will reflect when that attempt occurred. In conjunction with `next_attempt_at`,
        # this can be used to tell whether the invoice is currently in dunning (that is,
        # `previously_attempted_at` is non-null, and `next_attempt_time` is non-null), or
        # if dunning has been exhausted (`previously_attempted_at` is non-null, but
        # `next_attempt_time` is null).
        sig { returns(T.nilable(Time)) }
        attr_accessor :previously_attempted_at

        sig do
          params(
            enabled: T.nilable(T::Boolean),
            next_attempt_at: T.nilable(Time),
            num_attempts: T.nilable(Integer),
            previously_attempted_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # True only if auto-collection is enabled for this invoice.
          enabled:,
          # If the invoice is scheduled for auto-collection, this field will reflect when
          # the next attempt will occur. If dunning has been exhausted, or auto-collection
          # is not enabled for this invoice, this field will be `null`.
          next_attempt_at:,
          # Number of auto-collection payment attempts.
          num_attempts:,
          # If Orb has ever attempted payment auto-collection for this invoice, this field
          # will reflect when that attempt occurred. In conjunction with `next_attempt_at`,
          # this can be used to tell whether the invoice is currently in dunning (that is,
          # `previously_attempted_at` is non-null, and `next_attempt_time` is non-null), or
          # if dunning has been exhausted (`previously_attempted_at` is non-null, but
          # `next_attempt_time` is null).
          previously_attempted_at:
        )
        end

        sig do
          override.returns(
            {
              enabled: T.nilable(T::Boolean),
              next_attempt_at: T.nilable(Time),
              num_attempts: T.nilable(Integer),
              previously_attempted_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end

      class CreditNote < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceListSummaryResponse::CreditNote,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :credit_note_number

        # An optional memo supplied on the credit note.
        sig { returns(T.nilable(String)) }
        attr_accessor :memo

        sig { returns(String) }
        attr_accessor :reason

        sig { returns(String) }
        attr_accessor :total

        sig { returns(String) }
        attr_accessor :type

        # If the credit note has a status of `void`, this gives a timestamp when the
        # credit note was voided.
        sig { returns(T.nilable(Time)) }
        attr_accessor :voided_at

        sig do
          params(
            id: String,
            credit_note_number: String,
            memo: T.nilable(String),
            reason: String,
            total: String,
            type: String,
            voided_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          credit_note_number:,
          # An optional memo supplied on the credit note.
          memo:,
          reason:,
          total:,
          type:,
          # If the credit note has a status of `void`, this gives a timestamp when the
          # credit note was voided.
          voided_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              credit_note_number: String,
              memo: T.nilable(String),
              reason: String,
              total: String,
              type: String,
              voided_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end

      class CustomerBalanceTransaction < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction,
              Orb::Internal::AnyHash
            )
          end

        # A unique id for this transaction.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
          )
        end
        attr_accessor :action

        # The value of the amount changed in the transaction.
        sig { returns(String) }
        attr_accessor :amount

        # The creation time of this transaction.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::CreditNoteTiny)) }
        attr_reader :credit_note

        sig { params(credit_note: T.nilable(Orb::CreditNoteTiny::OrHash)).void }
        attr_writer :credit_note

        # An optional description provided for manual customer balance adjustments.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The new value of the customer's balance prior to the transaction, in the
        # customer's currency.
        sig { returns(String) }
        attr_accessor :ending_balance

        sig { returns(T.nilable(Orb::InvoiceTiny)) }
        attr_reader :invoice

        sig { params(invoice: T.nilable(Orb::InvoiceTiny::OrHash)).void }
        attr_writer :invoice

        # The original value of the customer's balance prior to the transaction, in the
        # customer's currency.
        sig { returns(String) }
        attr_accessor :starting_balance

        sig do
          returns(
            Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            action:
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::OrSymbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(Orb::CreditNoteTiny::OrHash),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(Orb::InvoiceTiny::OrHash),
            starting_balance: String,
            type:
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique id for this transaction.
          id:,
          action:,
          # The value of the amount changed in the transaction.
          amount:,
          # The creation time of this transaction.
          created_at:,
          credit_note:,
          # An optional description provided for manual customer balance adjustments.
          description:,
          # The new value of the customer's balance prior to the transaction, in the
          # customer's currency.
          ending_balance:,
          invoice:,
          # The original value of the customer's balance prior to the transaction, in the
          # customer's currency.
          starting_balance:,
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action:
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol,
              amount: String,
              created_at: Time,
              credit_note: T.nilable(Orb::CreditNoteTiny),
              description: T.nilable(String),
              ending_balance: String,
              invoice: T.nilable(Orb::InvoiceTiny),
              starting_balance: String,
              type:
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Action
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLIED_TO_INVOICE =
            T.let(
              :applied_to_invoice,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          MANUAL_ADJUSTMENT =
            T.let(
              :manual_adjustment,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          PRORATED_REFUND =
            T.let(
              :prorated_refund,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          REVERT_PRORATED_REFUND =
            T.let(
              :revert_prorated_refund,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          RETURN_FROM_VOIDING =
            T.let(
              :return_from_voiding,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          CREDIT_NOTE_APPLIED =
            T.let(
              :credit_note_applied,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          CREDIT_NOTE_VOIDED =
            T.let(
              :credit_note_voided,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          OVERPAYMENT_REFUND =
            T.let(
              :overpayment_refund,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :external_payment,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          SMALL_INVOICE_CARRYOVER =
            T.let(
              :small_invoice_carryover,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCREMENT =
            T.let(
              :increment,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type::TaggedSymbol
            )
          DECREMENT =
            T.let(
              :decrement,
              Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::InvoiceListSummaryResponse::CustomerBalanceTransaction::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module InvoiceSource
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::Models::InvoiceListSummaryResponse::InvoiceSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION =
          T.let(
            :subscription,
            Orb::Models::InvoiceListSummaryResponse::InvoiceSource::TaggedSymbol
          )
        PARTIAL =
          T.let(
            :partial,
            Orb::Models::InvoiceListSummaryResponse::InvoiceSource::TaggedSymbol
          )
        ONE_OFF =
          T.let(
            :one_off,
            Orb::Models::InvoiceListSummaryResponse::InvoiceSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::InvoiceListSummaryResponse::InvoiceSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class PaymentAttempt < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::InvoiceListSummaryResponse::PaymentAttempt,
              Orb::Internal::AnyHash
            )
          end

        # The ID of the payment attempt.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the payment attempt.
        sig { returns(String) }
        attr_accessor :amount

        # The time at which the payment attempt was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The payment provider that attempted to collect the payment.
        sig do
          returns(
            T.nilable(
              Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::PaymentProvider::TaggedSymbol
            )
          )
        end
        attr_accessor :payment_provider

        # The ID of the payment attempt in the payment provider.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_provider_id

        # URL to the downloadable PDF version of the receipt. This field will be `null`
        # for payment attempts that did not succeed.
        sig { returns(T.nilable(String)) }
        attr_accessor :receipt_pdf

        # Whether the payment attempt succeeded.
        sig { returns(T::Boolean) }
        attr_accessor :succeeded

        sig do
          params(
            id: String,
            amount: String,
            created_at: Time,
            payment_provider:
              T.nilable(
                Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::PaymentProvider::OrSymbol
              ),
            payment_provider_id: T.nilable(String),
            receipt_pdf: T.nilable(String),
            succeeded: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payment attempt.
          id:,
          # The amount of the payment attempt.
          amount:,
          # The time at which the payment attempt was created.
          created_at:,
          # The payment provider that attempted to collect the payment.
          payment_provider:,
          # The ID of the payment attempt in the payment provider.
          payment_provider_id:,
          # URL to the downloadable PDF version of the receipt. This field will be `null`
          # for payment attempts that did not succeed.
          receipt_pdf:,
          # Whether the payment attempt succeeded.
          succeeded:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              created_at: Time,
              payment_provider:
                T.nilable(
                  Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::PaymentProvider::TaggedSymbol
                ),
              payment_provider_id: T.nilable(String),
              receipt_pdf: T.nilable(String),
              succeeded: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The payment provider that attempted to collect the payment.
        module PaymentProvider
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::PaymentProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::PaymentProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::InvoiceListSummaryResponse::PaymentAttempt::PaymentProvider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::InvoiceListSummaryResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUED =
          T.let(
            :issued,
            Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol
          )
        PAID =
          T.let(
            :paid,
            Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol
          )
        SYNCED =
          T.let(
            :synced,
            Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol
          )
        VOID =
          T.let(
            :void,
            Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol
          )
        DRAFT =
          T.let(
            :draft,
            Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::InvoiceListSummaryResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
