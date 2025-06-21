# typed: strong

module Orb
  module Models
    class Invoice < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Invoice, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # This is the final amount required to be charged to the customer and reflects the
      # application of the customer balance to the `total` of the invoice.
      sig { returns(String) }
      attr_accessor :amount_due

      sig { returns(Orb::Invoice::AutoCollection) }
      attr_reader :auto_collection

      sig { params(auto_collection: Orb::Invoice::AutoCollection::OrHash).void }
      attr_writer :auto_collection

      sig { returns(T.nilable(Orb::Address)) }
      attr_reader :billing_address

      sig { params(billing_address: T.nilable(Orb::Address::OrHash)).void }
      attr_writer :billing_address

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      attr_accessor :created_at

      # A list of credit notes associated with the invoice
      sig { returns(T::Array[Orb::Invoice::CreditNote]) }
      attr_accessor :credit_notes

      # An ISO 4217 currency string or `credits`
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Orb::CustomerMinified) }
      attr_reader :customer

      sig { params(customer: Orb::CustomerMinified::OrHash).void }
      attr_writer :customer

      sig { returns(T::Array[Orb::Invoice::CustomerBalanceTransaction]) }
      attr_accessor :customer_balance_transactions

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
      sig { returns(T.nilable(Orb::CustomerTaxID)) }
      attr_reader :customer_tax_id

      sig do
        params(customer_tax_id: T.nilable(Orb::CustomerTaxID::OrHash)).void
      end
      attr_writer :customer_tax_id

      # This field is deprecated in favor of `discounts`. If a `discounts` list is
      # provided, the first discount in the list will be returned. If the list is empty,
      # `None` will be returned.
      sig { returns(T.anything) }
      attr_accessor :discount

      sig { returns(T::Array[Orb::InvoiceLevelDiscount::Variants]) }
      attr_accessor :discounts

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

      sig { returns(Orb::Invoice::InvoiceSource::TaggedSymbol) }
      attr_accessor :invoice_source

      # If the invoice failed to issue, this will be the last time it failed to issue
      # (even if it is now in a different state.)
      sig { returns(T.nilable(Time)) }
      attr_accessor :issue_failed_at

      # If the invoice has been issued, this will be the time it transitioned to
      # `issued` (even if it is now in a different state.)
      sig { returns(T.nilable(Time)) }
      attr_accessor :issued_at

      # The breakdown of prices in this invoice.
      sig { returns(T::Array[Orb::Invoice::LineItem]) }
      attr_accessor :line_items

      sig { returns(T.nilable(Orb::Maximum)) }
      attr_reader :maximum

      sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
      attr_writer :maximum

      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # Free-form text which is available on the invoice PDF and the Orb invoice portal.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(Orb::Minimum)) }
      attr_reader :minimum

      sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
      attr_writer :minimum

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      # If the invoice has a status of `paid`, this gives a timestamp when the invoice
      # was paid.
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # A list of payment attempts associated with the invoice
      sig { returns(T::Array[Orb::Invoice::PaymentAttempt]) }
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

      sig { returns(Orb::Invoice::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(Orb::SubscriptionMinified)) }
      attr_reader :subscription

      sig do
        params(subscription: T.nilable(Orb::SubscriptionMinified::OrHash)).void
      end
      attr_writer :subscription

      # The total before any discounts and minimums are applied.
      sig { returns(String) }
      attr_accessor :subtotal

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

      # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
      # representing the request for payment for a single subscription. This includes a
      # set of line items, which correspond to prices in the subscription's plan and can
      # represent fixed recurring fees or usage-based fees. They are generated at the
      # end of a billing period, or as the result of an action, such as a cancellation.
      sig do
        params(
          id: String,
          amount_due: String,
          auto_collection: Orb::Invoice::AutoCollection::OrHash,
          billing_address: T.nilable(Orb::Address::OrHash),
          created_at: Time,
          credit_notes: T::Array[Orb::Invoice::CreditNote::OrHash],
          currency: String,
          customer: Orb::CustomerMinified::OrHash,
          customer_balance_transactions:
            T::Array[Orb::Invoice::CustomerBalanceTransaction::OrHash],
          customer_tax_id: T.nilable(Orb::CustomerTaxID::OrHash),
          discount: T.anything,
          discounts:
            T::Array[
              T.any(
                Orb::PercentageDiscount::OrHash,
                Orb::AmountDiscount::OrHash,
                Orb::TrialDiscount::OrHash
              )
            ],
          due_date: T.nilable(Time),
          eligible_to_issue_at: T.nilable(Time),
          hosted_invoice_url: T.nilable(String),
          invoice_date: Time,
          invoice_number: String,
          invoice_pdf: T.nilable(String),
          invoice_source: Orb::Invoice::InvoiceSource::OrSymbol,
          issue_failed_at: T.nilable(Time),
          issued_at: T.nilable(Time),
          line_items: T::Array[Orb::Invoice::LineItem::OrHash],
          maximum: T.nilable(Orb::Maximum::OrHash),
          maximum_amount: T.nilable(String),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Minimum::OrHash),
          minimum_amount: T.nilable(String),
          paid_at: T.nilable(Time),
          payment_attempts: T::Array[Orb::Invoice::PaymentAttempt::OrHash],
          payment_failed_at: T.nilable(Time),
          payment_started_at: T.nilable(Time),
          scheduled_issue_at: T.nilable(Time),
          shipping_address: T.nilable(Orb::Address::OrHash),
          status: Orb::Invoice::Status::OrSymbol,
          subscription: T.nilable(Orb::SubscriptionMinified::OrHash),
          subtotal: String,
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
        customer_tax_id:,
        # This field is deprecated in favor of `discounts`. If a `discounts` list is
        # provided, the first discount in the list will be returned. If the list is empty,
        # `None` will be returned.
        discount:,
        discounts:,
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
        # The breakdown of prices in this invoice.
        line_items:,
        maximum:,
        maximum_amount:,
        # Free-form text which is available on the invoice PDF and the Orb invoice portal.
        memo:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        minimum:,
        minimum_amount:,
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
        # The total before any discounts and minimums are applied.
        subtotal:,
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
            auto_collection: Orb::Invoice::AutoCollection,
            billing_address: T.nilable(Orb::Address),
            created_at: Time,
            credit_notes: T::Array[Orb::Invoice::CreditNote],
            currency: String,
            customer: Orb::CustomerMinified,
            customer_balance_transactions:
              T::Array[Orb::Invoice::CustomerBalanceTransaction],
            customer_tax_id: T.nilable(Orb::CustomerTaxID),
            discount: T.anything,
            discounts: T::Array[Orb::InvoiceLevelDiscount::Variants],
            due_date: T.nilable(Time),
            eligible_to_issue_at: T.nilable(Time),
            hosted_invoice_url: T.nilable(String),
            invoice_date: Time,
            invoice_number: String,
            invoice_pdf: T.nilable(String),
            invoice_source: Orb::Invoice::InvoiceSource::TaggedSymbol,
            issue_failed_at: T.nilable(Time),
            issued_at: T.nilable(Time),
            line_items: T::Array[Orb::Invoice::LineItem],
            maximum: T.nilable(Orb::Maximum),
            maximum_amount: T.nilable(String),
            memo: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum),
            minimum_amount: T.nilable(String),
            paid_at: T.nilable(Time),
            payment_attempts: T::Array[Orb::Invoice::PaymentAttempt],
            payment_failed_at: T.nilable(Time),
            payment_started_at: T.nilable(Time),
            scheduled_issue_at: T.nilable(Time),
            shipping_address: T.nilable(Orb::Address),
            status: Orb::Invoice::Status::TaggedSymbol,
            subscription: T.nilable(Orb::SubscriptionMinified),
            subtotal: String,
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
            T.any(Orb::Invoice::AutoCollection, Orb::Internal::AnyHash)
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
            T.any(Orb::Invoice::CreditNote, Orb::Internal::AnyHash)
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
              Orb::Invoice::CustomerBalanceTransaction,
              Orb::Internal::AnyHash
            )
          end

        # A unique id for this transaction.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
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
          returns(Orb::Invoice::CustomerBalanceTransaction::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            action: Orb::Invoice::CustomerBalanceTransaction::Action::OrSymbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(Orb::CreditNoteTiny::OrHash),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(Orb::InvoiceTiny::OrHash),
            starting_balance: String,
            type: Orb::Invoice::CustomerBalanceTransaction::Type::OrSymbol
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
                Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol,
              amount: String,
              created_at: Time,
              credit_note: T.nilable(Orb::CreditNoteTiny),
              description: T.nilable(String),
              ending_balance: String,
              invoice: T.nilable(Orb::InvoiceTiny),
              starting_balance: String,
              type: Orb::Invoice::CustomerBalanceTransaction::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Action
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Invoice::CustomerBalanceTransaction::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLIED_TO_INVOICE =
            T.let(
              :applied_to_invoice,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          MANUAL_ADJUSTMENT =
            T.let(
              :manual_adjustment,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          PRORATED_REFUND =
            T.let(
              :prorated_refund,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          REVERT_PRORATED_REFUND =
            T.let(
              :revert_prorated_refund,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          RETURN_FROM_VOIDING =
            T.let(
              :return_from_voiding,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          CREDIT_NOTE_APPLIED =
            T.let(
              :credit_note_applied,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          CREDIT_NOTE_VOIDED =
            T.let(
              :credit_note_voided,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          OVERPAYMENT_REFUND =
            T.let(
              :overpayment_refund,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :external_payment,
              Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Invoice::CustomerBalanceTransaction::Action::TaggedSymbol
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
              T.all(Symbol, Orb::Invoice::CustomerBalanceTransaction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCREMENT =
            T.let(
              :increment,
              Orb::Invoice::CustomerBalanceTransaction::Type::TaggedSymbol
            )
          DECREMENT =
            T.let(
              :decrement,
              Orb::Invoice::CustomerBalanceTransaction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Invoice::CustomerBalanceTransaction::Type::TaggedSymbol
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
          T.type_alias { T.all(Symbol, Orb::Invoice::InvoiceSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION =
          T.let(:subscription, Orb::Invoice::InvoiceSource::TaggedSymbol)
        PARTIAL = T.let(:partial, Orb::Invoice::InvoiceSource::TaggedSymbol)
        ONE_OFF = T.let(:one_off, Orb::Invoice::InvoiceSource::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::Invoice::InvoiceSource::TaggedSymbol])
        end
        def self.values
        end
      end

      class LineItem < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Invoice::LineItem, Orb::Internal::AnyHash) }

        # A unique ID for this line item.
        sig { returns(String) }
        attr_accessor :id

        # The line amount after any adjustments and before overage conversion, credits and
        # partial invoicing.
        sig { returns(String) }
        attr_accessor :adjusted_subtotal

        # All adjustments applied to the line item in the order they were applied based on
        # invoice calculations (ie. usage discounts -> amount discounts -> percentage
        # discounts -> minimums -> maximums).
        sig { returns(T::Array[Orb::Invoice::LineItem::Adjustment::Variants]) }
        attr_accessor :adjustments

        # The final amount for a line item after all adjustments and pre paid credits have
        # been applied.
        sig { returns(String) }
        attr_accessor :amount

        # The number of prepaid credits applied.
        sig { returns(String) }
        attr_accessor :credits_applied

        # This field is deprecated in favor of `adjustments`
        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        # The end date of the range of time applied for this line item's price.
        sig { returns(Time) }
        attr_accessor :end_date

        # An additional filter that was used to calculate the usage for this line item.
        sig { returns(T.nilable(String)) }
        attr_accessor :filter

        # [DEPRECATED] For configured prices that are split by a grouping key, this will
        # be populated with the key and a value. The `amount` and `subtotal` will be the
        # values for this particular grouping.
        sig { returns(T.nilable(String)) }
        attr_accessor :grouping

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The name of the price associated with this line item.
        sig { returns(String) }
        attr_accessor :name

        # Any amount applied from a partial invoice
        sig { returns(String) }
        attr_accessor :partially_invoiced_amount

        # The Price resource represents a price that can be billed on a subscription,
        # resulting in a charge on an invoice in the form of an invoice line item. Prices
        # take a quantity and determine an amount to bill.
        #
        # Orb supports a few different pricing models out of the box. Each of these models
        # is serialized differently in a given Price object. The model_type field
        # determines the key for the configuration object that is present.
        #
        # For more on the types of prices, see
        # [the core concepts documentation](/core-concepts#plan-and-price)
        sig { returns(Orb::Price::Variants) }
        attr_accessor :price

        # Either the fixed fee quantity or the usage during the service period.
        sig { returns(Float) }
        attr_accessor :quantity

        # The start date of the range of time applied for this line item's price.
        sig { returns(Time) }
        attr_accessor :start_date

        # For complex pricing structures, the line item can be broken down further in
        # `sub_line_items`.
        sig { returns(T::Array[Orb::Invoice::LineItem::SubLineItem::Variants]) }
        attr_accessor :sub_line_items

        # The line amount before before any adjustments.
        sig { returns(String) }
        attr_accessor :subtotal

        # An array of tax rates and their incurred tax amounts. Empty if no tax
        # integration is configured.
        sig { returns(T::Array[Orb::TaxAmount]) }
        attr_accessor :tax_amounts

        # A list of customer ids that were used to calculate the usage for this line item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :usage_customer_ids

        sig do
          params(
            id: String,
            adjusted_subtotal: String,
            adjustments:
              T::Array[
                T.any(
                  Orb::MonetaryUsageDiscountAdjustment::OrHash,
                  Orb::MonetaryAmountDiscountAdjustment::OrHash,
                  Orb::MonetaryPercentageDiscountAdjustment::OrHash,
                  Orb::MonetaryMinimumAdjustment::OrHash,
                  Orb::MonetaryMaximumAdjustment::OrHash
                )
              ],
            amount: String,
            credits_applied: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            end_date: Time,
            filter: T.nilable(String),
            grouping: T.nilable(String),
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            partially_invoiced_amount: String,
            price:
              T.any(
                Orb::Price::Unit::OrHash,
                Orb::Price::Package::OrHash,
                Orb::Price::Matrix::OrHash,
                Orb::Price::Tiered::OrHash,
                Orb::Price::TieredBPS::OrHash,
                Orb::Price::BPS::OrHash,
                Orb::Price::BulkBPS::OrHash,
                Orb::Price::Bulk::OrHash,
                Orb::Price::ThresholdTotalAmount::OrHash,
                Orb::Price::TieredPackage::OrHash,
                Orb::Price::GroupedTiered::OrHash,
                Orb::Price::TieredWithMinimum::OrHash,
                Orb::Price::TieredPackageWithMinimum::OrHash,
                Orb::Price::PackageWithAllocation::OrHash,
                Orb::Price::UnitWithPercent::OrHash,
                Orb::Price::MatrixWithAllocation::OrHash,
                Orb::Price::TieredWithProration::OrHash,
                Orb::Price::UnitWithProration::OrHash,
                Orb::Price::GroupedAllocation::OrHash,
                Orb::Price::GroupedWithProratedMinimum::OrHash,
                Orb::Price::GroupedWithMeteredMinimum::OrHash,
                Orb::Price::MatrixWithDisplayName::OrHash,
                Orb::Price::BulkWithProration::OrHash,
                Orb::Price::GroupedTieredPackage::OrHash,
                Orb::Price::MaxGroupTieredPackage::OrHash,
                Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
                Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
                Orb::Price::CumulativeGroupedBulk::OrHash
              ),
            quantity: Float,
            start_date: Time,
            sub_line_items:
              T::Array[
                T.any(
                  Orb::MatrixSubLineItem::OrHash,
                  Orb::TierSubLineItem::OrHash,
                  Orb::OtherSubLineItem::OrHash
                )
              ],
            subtotal: String,
            tax_amounts: T::Array[Orb::TaxAmount::OrHash],
            usage_customer_ids: T.nilable(T::Array[String])
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique ID for this line item.
          id:,
          # The line amount after any adjustments and before overage conversion, credits and
          # partial invoicing.
          adjusted_subtotal:,
          # All adjustments applied to the line item in the order they were applied based on
          # invoice calculations (ie. usage discounts -> amount discounts -> percentage
          # discounts -> minimums -> maximums).
          adjustments:,
          # The final amount for a line item after all adjustments and pre paid credits have
          # been applied.
          amount:,
          # The number of prepaid credits applied.
          credits_applied:,
          # This field is deprecated in favor of `adjustments`
          discount:,
          # The end date of the range of time applied for this line item's price.
          end_date:,
          # An additional filter that was used to calculate the usage for this line item.
          filter:,
          # [DEPRECATED] For configured prices that are split by a grouping key, this will
          # be populated with the key and a value. The `amount` and `subtotal` will be the
          # values for this particular grouping.
          grouping:,
          # This field is deprecated in favor of `adjustments`.
          maximum:,
          # This field is deprecated in favor of `adjustments`.
          maximum_amount:,
          # This field is deprecated in favor of `adjustments`.
          minimum:,
          # This field is deprecated in favor of `adjustments`.
          minimum_amount:,
          # The name of the price associated with this line item.
          name:,
          # Any amount applied from a partial invoice
          partially_invoiced_amount:,
          # The Price resource represents a price that can be billed on a subscription,
          # resulting in a charge on an invoice in the form of an invoice line item. Prices
          # take a quantity and determine an amount to bill.
          #
          # Orb supports a few different pricing models out of the box. Each of these models
          # is serialized differently in a given Price object. The model_type field
          # determines the key for the configuration object that is present.
          #
          # For more on the types of prices, see
          # [the core concepts documentation](/core-concepts#plan-and-price)
          price:,
          # Either the fixed fee quantity or the usage during the service period.
          quantity:,
          # The start date of the range of time applied for this line item's price.
          start_date:,
          # For complex pricing structures, the line item can be broken down further in
          # `sub_line_items`.
          sub_line_items:,
          # The line amount before before any adjustments.
          subtotal:,
          # An array of tax rates and their incurred tax amounts. Empty if no tax
          # integration is configured.
          tax_amounts:,
          # A list of customer ids that were used to calculate the usage for this line item.
          usage_customer_ids:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              adjusted_subtotal: String,
              adjustments:
                T::Array[Orb::Invoice::LineItem::Adjustment::Variants],
              amount: String,
              credits_applied: String,
              discount: T.nilable(Orb::Discount::Variants),
              end_date: Time,
              filter: T.nilable(String),
              grouping: T.nilable(String),
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              name: String,
              partially_invoiced_amount: String,
              price: Orb::Price::Variants,
              quantity: Float,
              start_date: Time,
              sub_line_items:
                T::Array[Orb::Invoice::LineItem::SubLineItem::Variants],
              subtotal: String,
              tax_amounts: T::Array[Orb::TaxAmount],
              usage_customer_ids: T.nilable(T::Array[String])
            }
          )
        end
        def to_hash
        end

        module Adjustment
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::MonetaryUsageDiscountAdjustment,
                Orb::MonetaryAmountDiscountAdjustment,
                Orb::MonetaryPercentageDiscountAdjustment,
                Orb::MonetaryMinimumAdjustment,
                Orb::MonetaryMaximumAdjustment
              )
            end

          sig do
            override.returns(
              T::Array[Orb::Invoice::LineItem::Adjustment::Variants]
            )
          end
          def self.variants
          end
        end

        module SubLineItem
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::MatrixSubLineItem,
                Orb::TierSubLineItem,
                Orb::OtherSubLineItem
              )
            end

          sig do
            override.returns(
              T::Array[Orb::Invoice::LineItem::SubLineItem::Variants]
            )
          end
          def self.variants
          end
        end
      end

      class PaymentAttempt < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Invoice::PaymentAttempt, Orb::Internal::AnyHash)
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
              Orb::Invoice::PaymentAttempt::PaymentProvider::TaggedSymbol
            )
          )
        end
        attr_accessor :payment_provider

        # The ID of the payment attempt in the payment provider.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_provider_id

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
                Orb::Invoice::PaymentAttempt::PaymentProvider::OrSymbol
              ),
            payment_provider_id: T.nilable(String),
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
                  Orb::Invoice::PaymentAttempt::PaymentProvider::TaggedSymbol
                ),
              payment_provider_id: T.nilable(String),
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
              T.all(Symbol, Orb::Invoice::PaymentAttempt::PaymentProvider)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::Invoice::PaymentAttempt::PaymentProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Invoice::PaymentAttempt::PaymentProvider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Invoice::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUED = T.let(:issued, Orb::Invoice::Status::TaggedSymbol)
        PAID = T.let(:paid, Orb::Invoice::Status::TaggedSymbol)
        SYNCED = T.let(:synced, Orb::Invoice::Status::TaggedSymbol)
        VOID = T.let(:void, Orb::Invoice::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::Invoice::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Invoice::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
