# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingResponse < Orb::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # This is the final amount required to be charged to the customer and reflects the
      # application of the customer balance to the `total` of the invoice.
      sig { returns(String) }
      attr_accessor :amount_due

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection) }
      attr_reader :auto_collection

      sig do
        params(
          auto_collection: T.any(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection, Orb::Internal::AnyHash)
        )
          .void
      end
      attr_writer :auto_collection

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :billing_address

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      attr_accessor :created_at

      # A list of credit notes associated with the invoice
      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote]) }
      attr_accessor :credit_notes

      # An ISO 4217 currency string or `credits`
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::Customer) }
      attr_reader :customer

      sig { params(customer: T.any(Orb::Models::InvoiceFetchUpcomingResponse::Customer, Orb::Internal::AnyHash)).void }
      attr_writer :customer

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction]) }
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
      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID)) }
      attr_reader :customer_tax_id

      sig do
        params(
          customer_tax_id: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :customer_tax_id

      # This field is deprecated in favor of `discounts`. If a `discounts` list is
      # provided, the first discount in the list will be returned. If the list is empty,
      # `None` will be returned.
      sig { returns(T.anything) }
      attr_accessor :discount

      sig do
        returns(
          T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
        )
      end
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

      # Automatically generated invoice number to help track and reconcile invoices.
      # Invoice numbers have a prefix such as `RFOBWG`. These can be sequential per
      # account or customer.
      sig { returns(String) }
      attr_accessor :invoice_number

      # The link to download the PDF representation of the `Invoice`.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_pdf

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::TaggedSymbol) }
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
      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem]) }
      attr_accessor :line_items

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum)) }
      attr_reader :maximum

      sig do
        params(
          maximum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::Maximum, Orb::Internal::AnyHash))
        )
          .void
      end
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

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum)) }
      attr_reader :minimum

      sig do
        params(
          minimum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::Minimum, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :minimum

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      # If the invoice has a status of `paid`, this gives a timestamp when the invoice
      # was paid.
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # A list of payment attempts associated with the invoice
      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt]) }
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

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress)) }
      attr_reader :shipping_address

      sig do
        params(
          shipping_address: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :shipping_address

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription)) }
      attr_reader :subscription

      sig do
        params(
          subscription: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::Subscription, Orb::Internal::AnyHash))
        )
          .void
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

      # The scheduled date of the invoice
      sig { returns(Time) }
      attr_accessor :target_date

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

      sig do
        params(
          id: String,
          amount_due: String,
          auto_collection: T.any(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection, Orb::Internal::AnyHash),
          billing_address: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress, Orb::Internal::AnyHash)),
          created_at: Time,
          credit_notes: T::Array[T.any(Orb::Models::InvoiceFetchUpcomingResponse::CreditNote, Orb::Internal::AnyHash)],
          currency: String,
          customer: T.any(Orb::Models::InvoiceFetchUpcomingResponse::Customer, Orb::Internal::AnyHash),
          customer_balance_transactions: T::Array[T.any(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction, Orb::Internal::AnyHash)],
          customer_tax_id: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID, Orb::Internal::AnyHash)),
          discount: T.anything,
          discounts: T::Array[
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::AmountDiscount,
              Orb::Models::TrialDiscount
            )
          ],
          due_date: T.nilable(Time),
          eligible_to_issue_at: T.nilable(Time),
          hosted_invoice_url: T.nilable(String),
          invoice_number: String,
          invoice_pdf: T.nilable(String),
          invoice_source: Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::OrSymbol,
          issue_failed_at: T.nilable(Time),
          issued_at: T.nilable(Time),
          line_items: T::Array[T.any(Orb::Models::InvoiceFetchUpcomingResponse::LineItem, Orb::Internal::AnyHash)],
          maximum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::Maximum, Orb::Internal::AnyHash)),
          maximum_amount: T.nilable(String),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::Minimum, Orb::Internal::AnyHash)),
          minimum_amount: T.nilable(String),
          paid_at: T.nilable(Time),
          payment_attempts: T::Array[T.any(Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt, Orb::Internal::AnyHash)],
          payment_failed_at: T.nilable(Time),
          payment_started_at: T.nilable(Time),
          scheduled_issue_at: T.nilable(Time),
          shipping_address: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress, Orb::Internal::AnyHash)),
          status: Orb::Models::InvoiceFetchUpcomingResponse::Status::OrSymbol,
          subscription: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::Subscription, Orb::Internal::AnyHash)),
          subtotal: String,
          sync_failed_at: T.nilable(Time),
          target_date: Time,
          total: String,
          voided_at: T.nilable(Time),
          will_auto_issue: T::Boolean
        )
          .returns(T.attached_class)
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
        # The scheduled date of the invoice
        target_date:,
        # The total after any minimums and discounts have been applied.
        total:,
        # If the invoice has a status of `void`, this gives a timestamp when the invoice
        # was voided.
        voided_at:,
        # This is true if the invoice will be automatically issued in the future, and
        # false otherwise.
        will_auto_issue:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              amount_due: String,
              auto_collection: Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection,
              billing_address: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress),
              created_at: Time,
              credit_notes: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote],
              currency: String,
              customer: Orb::Models::InvoiceFetchUpcomingResponse::Customer,
              customer_balance_transactions: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction],
              customer_tax_id: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID),
              discount: T.anything,
              discounts: T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)],
              due_date: T.nilable(Time),
              eligible_to_issue_at: T.nilable(Time),
              hosted_invoice_url: T.nilable(String),
              invoice_number: String,
              invoice_pdf: T.nilable(String),
              invoice_source: Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::TaggedSymbol,
              issue_failed_at: T.nilable(Time),
              issued_at: T.nilable(Time),
              line_items: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem],
              maximum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum),
              maximum_amount: T.nilable(String),
              memo: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum),
              minimum_amount: T.nilable(String),
              paid_at: T.nilable(Time),
              payment_attempts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt],
              payment_failed_at: T.nilable(Time),
              payment_started_at: T.nilable(Time),
              scheduled_issue_at: T.nilable(Time),
              shipping_address: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress),
              status: Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol,
              subscription: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription),
              subtotal: String,
              sync_failed_at: T.nilable(Time),
              target_date: Time,
              total: String,
              voided_at: T.nilable(Time),
              will_auto_issue: T::Boolean
            }
          )
      end
      def to_hash; end

      class AutoCollection < Orb::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                enabled: T.nilable(T::Boolean),
                next_attempt_at: T.nilable(Time),
                num_attempts: T.nilable(Integer),
                previously_attempted_at: T.nilable(Time)
              }
            )
        end
        def to_hash; end
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
        def self.new(city:, country:, line1:, line2:, postal_code:, state:); end

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
        def to_hash; end
      end

      class CreditNote < Orb::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
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
        def to_hash; end
      end

      class Customer < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, external_customer_id:); end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash; end
      end

      class CustomerBalanceTransaction < Orb::Internal::Type::BaseModel
        # A unique id for this transaction.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol) }
        attr_accessor :action

        # The value of the amount changed in the transaction.
        sig { returns(String) }
        attr_accessor :amount

        # The creation time of this transaction.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote)) }
        attr_reader :credit_note

        sig do
          params(
            credit_note: T.nilable(
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :credit_note

        # An optional description provided for manual customer balance adjustments.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The new value of the customer's balance prior to the transaction, in the
        # customer's currency.
        sig { returns(String) }
        attr_accessor :ending_balance

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice)) }
        attr_reader :invoice

        sig do
          params(
            invoice: T.nilable(
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :invoice

        # The original value of the customer's balance prior to the transaction, in the
        # customer's currency.
        sig { returns(String) }
        attr_accessor :starting_balance

        sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            id: String,
            action: Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::OrSymbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote,
                Orb::Internal::AnyHash
              )
            ),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice,
                Orb::Internal::AnyHash
              )
            ),
            starting_balance: String,
            type: Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type::OrSymbol
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                action: Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol,
                amount: String,
                created_at: Time,
                credit_note: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote),
                description: T.nilable(String),
                ending_balance: String,
                invoice: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice),
                starting_balance: String,
                type: Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        module Action
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLIED_TO_INVOICE =
            T.let(
              :applied_to_invoice,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          MANUAL_ADJUSTMENT =
            T.let(
              :manual_adjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          PRORATED_REFUND =
            T.let(
              :prorated_refund,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          REVERT_PRORATED_REFUND =
            T.let(
              :revert_prorated_refund,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          RETURN_FROM_VOIDING =
            T.let(
              :return_from_voiding,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          CREDIT_NOTE_APPLIED =
            T.let(
              :credit_note_applied,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          CREDIT_NOTE_VOIDED =
            T.let(
              :credit_note_voided,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          OVERPAYMENT_REFUND =
            T.let(
              :overpayment_refund,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :external_payment,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class CreditNote < Orb::Internal::Type::BaseModel
          # The id of the Credit note
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The id of the Credit note
            id:
          ); end
          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class Invoice < Orb::Internal::Type::BaseModel
          # The Invoice id
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The Invoice id
            id:
          ); end
          sig { override.returns({id: String}) }
          def to_hash; end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCREMENT =
            T.let(
              :increment,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type::TaggedSymbol
            )
          DECREMENT =
            T.let(
              :decrement,
              Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end

      class CustomerTaxID < Orb::Internal::Type::BaseModel
        sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol) }
        attr_accessor :country

        sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

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
        sig do
          params(
            country: Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::OrSymbol,
            type: Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::OrSymbol,
            value: String
          )
            .returns(T.attached_class)
        end
        def self.new(country:, type:, value:); end

        sig do
          override
            .returns(
              {
                country: Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol,
                type: Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol,
                value: String
              }
            )
        end
        def to_hash; end

        module Country
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD = T.let(:AD, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          AE = T.let(:AE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          AR = T.let(:AR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          AT = T.let(:AT, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          AU = T.let(:AU, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          BE = T.let(:BE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          BG = T.let(:BG, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          BH = T.let(:BH, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          BO = T.let(:BO, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          BR = T.let(:BR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CA = T.let(:CA, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CH = T.let(:CH, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CL = T.let(:CL, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CN = T.let(:CN, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CO = T.let(:CO, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CR = T.let(:CR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CY = T.let(:CY, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          CZ = T.let(:CZ, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          DE = T.let(:DE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          DK = T.let(:DK, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          EE = T.let(:EE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          DO = T.let(:DO, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          EC = T.let(:EC, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          EG = T.let(:EG, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          ES = T.let(:ES, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          EU = T.let(:EU, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          FI = T.let(:FI, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          FR = T.let(:FR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          GB = T.let(:GB, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          GE = T.let(:GE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          GR = T.let(:GR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          HK = T.let(:HK, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          HR = T.let(:HR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          HU = T.let(:HU, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          ID = T.let(:ID, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          IE = T.let(:IE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          IL = T.let(:IL, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          IN = T.let(:IN, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          IS = T.let(:IS, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          IT = T.let(:IT, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          JP = T.let(:JP, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          KE = T.let(:KE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          KR = T.let(:KR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          KZ = T.let(:KZ, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          LI = T.let(:LI, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          LT = T.let(:LT, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          LU = T.let(:LU, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          LV = T.let(:LV, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          MT = T.let(:MT, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          MX = T.let(:MX, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          MY = T.let(:MY, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          NG = T.let(:NG, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          NL = T.let(:NL, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          NO = T.let(:NO, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          NZ = T.let(:NZ, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          OM = T.let(:OM, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          PE = T.let(:PE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          PH = T.let(:PH, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          PL = T.let(:PL, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          PT = T.let(:PT, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          RO = T.let(:RO, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          RS = T.let(:RS, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          RU = T.let(:RU, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          SA = T.let(:SA, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          SE = T.let(:SE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          SG = T.let(:SG, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          SI = T.let(:SI, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          SK = T.let(:SK, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          SV = T.let(:SV, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          TH = T.let(:TH, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          TR = T.let(:TR, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          TW = T.let(:TW, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          UA = T.let(:UA, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          US = T.let(:US, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          UY = T.let(:UY, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          VE = T.let(:VE, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          VN = T.let(:VN, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)
          ZA = T.let(:ZA, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country::TaggedSymbol])
          end
          def self.values; end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_NRT = T.let(:ad_nrt, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          AE_TRN = T.let(:ae_trn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          AR_CUIT = T.let(:ar_cuit, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          EU_VAT = T.let(:eu_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          AU_ABN = T.let(:au_abn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          AU_ARN = T.let(:au_arn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          BG_UIC = T.let(:bg_uic, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          BH_VAT = T.let(:bh_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          BO_TIN = T.let(:bo_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          BR_CNPJ = T.let(:br_cnpj, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          BR_CPF = T.let(:br_cpf, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CA_BN = T.let(:ca_bn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CA_GST_HST =
            T.let(:ca_gst_hst, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CA_PST_BC =
            T.let(:ca_pst_bc, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CA_PST_MB =
            T.let(:ca_pst_mb, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CA_PST_SK =
            T.let(:ca_pst_sk, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CA_QST = T.let(:ca_qst, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CH_VAT = T.let(:ch_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CL_TIN = T.let(:cl_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CN_TIN = T.let(:cn_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CO_NIT = T.let(:co_nit, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          CR_TIN = T.let(:cr_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          DO_RCN = T.let(:do_rcn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          EC_RUC = T.let(:ec_ruc, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          EG_TIN = T.let(:eg_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          ES_CIF = T.let(:es_cif, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          EU_OSS_VAT =
            T.let(:eu_oss_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          GB_VAT = T.let(:gb_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          GE_VAT = T.let(:ge_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          HK_BR = T.let(:hk_br, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          HU_TIN = T.let(:hu_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          ID_NPWP = T.let(:id_npwp, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          IL_VAT = T.let(:il_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          IN_GST = T.let(:in_gst, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          IS_VAT = T.let(:is_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          JP_CN = T.let(:jp_cn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          JP_RN = T.let(:jp_rn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          JP_TRN = T.let(:jp_trn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          KE_PIN = T.let(:ke_pin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          KR_BRN = T.let(:kr_brn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          KZ_BIN = T.let(:kz_bin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          LI_UID = T.let(:li_uid, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          MX_RFC = T.let(:mx_rfc, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          MY_FRP = T.let(:my_frp, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          MY_ITN = T.let(:my_itn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          MY_SST = T.let(:my_sst, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          NG_TIN = T.let(:ng_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          NO_VAT = T.let(:no_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          NO_VOEC = T.let(:no_voec, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          NZ_GST = T.let(:nz_gst, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          OM_VAT = T.let(:om_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          PE_RUC = T.let(:pe_ruc, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          PH_TIN = T.let(:ph_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          RO_TIN = T.let(:ro_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          RS_PIB = T.let(:rs_pib, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          RU_INN = T.let(:ru_inn, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          RU_KPP = T.let(:ru_kpp, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          SA_VAT = T.let(:sa_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          SG_GST = T.let(:sg_gst, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          SG_UEN = T.let(:sg_uen, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          SI_TIN = T.let(:si_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          SV_NIT = T.let(:sv_nit, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          TH_VAT = T.let(:th_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          TR_TIN = T.let(:tr_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          TW_VAT = T.let(:tw_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          UA_VAT = T.let(:ua_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          US_EIN = T.let(:us_ein, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          UY_RUC = T.let(:uy_ruc, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          VE_RIF = T.let(:ve_rif, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          VN_TIN = T.let(:vn_tin, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)
          ZA_VAT = T.let(:za_vat, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type::TaggedSymbol]) }
          def self.values; end
        end
      end

      module InvoiceSource
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION =
          T.let(:subscription, Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::TaggedSymbol)
        PARTIAL = T.let(:partial, Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::TaggedSymbol)
        ONE_OFF = T.let(:one_off, Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource::TaggedSymbol]) }
        def self.values; end
      end

      class LineItem < Orb::Internal::Type::BaseModel
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
        sig do
          returns(
            T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum
              )
            ]
          )
        end
        attr_accessor :adjustments

        # The final amount for a line item after all adjustments and pre paid credits have
        # been applied.
        sig { returns(String) }
        attr_accessor :amount

        # The number of prepaid credits applied.
        sig { returns(String) }
        attr_accessor :credits_applied

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
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
        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
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
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::Price::Unit,
                Orb::Models::Price::Package,
                Orb::Models::Price::Matrix,
                Orb::Models::Price::Tiered,
                Orb::Models::Price::TieredBps,
                Orb::Models::Price::Bps,
                Orb::Models::Price::BulkBps,
                Orb::Models::Price::Bulk,
                Orb::Models::Price::ThresholdTotalAmount,
                Orb::Models::Price::TieredPackage,
                Orb::Models::Price::GroupedTiered,
                Orb::Models::Price::TieredWithMinimum,
                Orb::Models::Price::TieredPackageWithMinimum,
                Orb::Models::Price::PackageWithAllocation,
                Orb::Models::Price::UnitWithPercent,
                Orb::Models::Price::MatrixWithAllocation,
                Orb::Models::Price::TieredWithProration,
                Orb::Models::Price::UnitWithProration,
                Orb::Models::Price::GroupedAllocation,
                Orb::Models::Price::GroupedWithProratedMinimum,
                Orb::Models::Price::GroupedWithMeteredMinimum,
                Orb::Models::Price::MatrixWithDisplayName,
                Orb::Models::Price::BulkWithProration,
                Orb::Models::Price::GroupedTieredPackage,
                Orb::Models::Price::MaxGroupTieredPackage,
                Orb::Models::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::Price::CumulativeGroupedBulk
              )
            )
          )
        end
        attr_accessor :price

        # Either the fixed fee quantity or the usage during the service period.
        sig { returns(Float) }
        attr_accessor :quantity

        # The start date of the range of time applied for this line item's price.
        sig { returns(Time) }
        attr_accessor :start_date

        # For complex pricing structures, the line item can be broken down further in
        # `sub_line_items`.
        sig do
          returns(
            T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null
              )
            ]
          )
        end
        attr_accessor :sub_line_items

        # The line amount before before any adjustments.
        sig { returns(String) }
        attr_accessor :subtotal

        # An array of tax rates and their incurred tax amounts. Empty if no tax
        # integration is configured.
        sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]) }
        attr_accessor :tax_amounts

        # A list of customer ids that were used to calculate the usage for this line item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :usage_customer_ids

        sig do
          params(
            id: String,
            adjusted_subtotal: String,
            adjustments: T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum
              )
            ],
            amount: String,
            credits_applied: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            end_date: Time,
            filter: T.nilable(String),
            grouping: T.nilable(String),
            maximum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(T.any(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            partially_invoiced_amount: String,
            price: T.nilable(
              T.any(
                Orb::Models::Price::Unit,
                Orb::Internal::AnyHash,
                Orb::Models::Price::Package,
                Orb::Models::Price::Matrix,
                Orb::Models::Price::Tiered,
                Orb::Models::Price::TieredBps,
                Orb::Models::Price::Bps,
                Orb::Models::Price::BulkBps,
                Orb::Models::Price::Bulk,
                Orb::Models::Price::ThresholdTotalAmount,
                Orb::Models::Price::TieredPackage,
                Orb::Models::Price::GroupedTiered,
                Orb::Models::Price::TieredWithMinimum,
                Orb::Models::Price::TieredPackageWithMinimum,
                Orb::Models::Price::PackageWithAllocation,
                Orb::Models::Price::UnitWithPercent,
                Orb::Models::Price::MatrixWithAllocation,
                Orb::Models::Price::TieredWithProration,
                Orb::Models::Price::UnitWithProration,
                Orb::Models::Price::GroupedAllocation,
                Orb::Models::Price::GroupedWithProratedMinimum,
                Orb::Models::Price::GroupedWithMeteredMinimum,
                Orb::Models::Price::MatrixWithDisplayName,
                Orb::Models::Price::BulkWithProration,
                Orb::Models::Price::GroupedTieredPackage,
                Orb::Models::Price::MaxGroupTieredPackage,
                Orb::Models::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::Price::CumulativeGroupedBulk
              )
            ),
            quantity: Float,
            start_date: Time,
            sub_line_items: T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix,
                Orb::Internal::AnyHash,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null
              )
            ],
            subtotal: String,
            tax_amounts: T::Array[T.any(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount, Orb::Internal::AnyHash)],
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                adjusted_subtotal: String,
                adjustments: T::Array[
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount,
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount,
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount,
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum,
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum
                  )
                ],
                amount: String,
                credits_applied: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                end_date: Time,
                filter: T.nilable(String),
                grouping: T.nilable(String),
                maximum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum),
                maximum_amount: T.nilable(String),
                minimum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum),
                minimum_amount: T.nilable(String),
                name: String,
                partially_invoiced_amount: String,
                price: T.nilable(
                  T.any(
                    Orb::Models::Price::Unit,
                    Orb::Models::Price::Package,
                    Orb::Models::Price::Matrix,
                    Orb::Models::Price::Tiered,
                    Orb::Models::Price::TieredBps,
                    Orb::Models::Price::Bps,
                    Orb::Models::Price::BulkBps,
                    Orb::Models::Price::Bulk,
                    Orb::Models::Price::ThresholdTotalAmount,
                    Orb::Models::Price::TieredPackage,
                    Orb::Models::Price::GroupedTiered,
                    Orb::Models::Price::TieredWithMinimum,
                    Orb::Models::Price::TieredPackageWithMinimum,
                    Orb::Models::Price::PackageWithAllocation,
                    Orb::Models::Price::UnitWithPercent,
                    Orb::Models::Price::MatrixWithAllocation,
                    Orb::Models::Price::TieredWithProration,
                    Orb::Models::Price::UnitWithProration,
                    Orb::Models::Price::GroupedAllocation,
                    Orb::Models::Price::GroupedWithProratedMinimum,
                    Orb::Models::Price::GroupedWithMeteredMinimum,
                    Orb::Models::Price::MatrixWithDisplayName,
                    Orb::Models::Price::BulkWithProration,
                    Orb::Models::Price::GroupedTieredPackage,
                    Orb::Models::Price::MaxGroupTieredPackage,
                    Orb::Models::Price::ScalableMatrixWithUnitPricing,
                    Orb::Models::Price::ScalableMatrixWithTieredPricing,
                    Orb::Models::Price::CumulativeGroupedBulk
                  )
                ),
                quantity: Float,
                start_date: Time,
                sub_line_items: T::Array[
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix,
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier,
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null
                  )
                ],
                subtotal: String,
                tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount],
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash; end

        module Adjustment
          extend Orb::Internal::Type::Union

          class UsageDiscount < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The value applied by an adjustment.
            sig { returns(String) }
            attr_accessor :amount

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            # The number of usage units by which to discount the price this adjustment applies
            # to in a given billing period.
            sig { returns(Float) }
            attr_accessor :usage_discount

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String),
                usage_discount: Float,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              # The value applied by an adjustment.
              amount:,
              # The price IDs that this adjustment applies to.
              applies_to_price_ids:,
              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              is_invoice_level:,
              # The reason for the adjustment.
              reason:,
              # The number of usage units by which to discount the price this adjustment applies
              # to in a given billing period.
              usage_discount:,
              adjustment_type: :usage_discount
            ); end
            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    reason: T.nilable(String),
                    usage_discount: Float
                  }
                )
            end
            def to_hash; end
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The value applied by an adjustment.
            sig { returns(String) }
            attr_accessor :amount

            # The amount by which to discount the prices this adjustment applies to in a given
            # billing period.
            sig { returns(String) }
            attr_accessor :amount_discount

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            sig do
              params(
                id: String,
                amount: String,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              # The value applied by an adjustment.
              amount:,
              # The amount by which to discount the prices this adjustment applies to in a given
              # billing period.
              amount_discount:,
              # The price IDs that this adjustment applies to.
              applies_to_price_ids:,
              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              is_invoice_level:,
              # The reason for the adjustment.
              reason:,
              adjustment_type: :amount_discount
            ); end
            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash; end
          end

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The value applied by an adjustment.
            sig { returns(String) }
            attr_accessor :amount

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The percentage (as a value between 0 and 1) by which to discount the price
            # intervals this adjustment applies to in a given billing period.
            sig { returns(Float) }
            attr_accessor :percentage_discount

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              # The value applied by an adjustment.
              amount:,
              # The price IDs that this adjustment applies to.
              applies_to_price_ids:,
              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              is_invoice_level:,
              # The percentage (as a value between 0 and 1) by which to discount the price
              # intervals this adjustment applies to in a given billing period.
              percentage_discount:,
              # The reason for the adjustment.
              reason:,
              adjustment_type: :percentage_discount
            ); end
            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    percentage_discount: Float,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash; end
          end

          class Minimum < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The value applied by an adjustment.
            sig { returns(String) }
            attr_accessor :amount

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            attr_accessor :item_id

            # The minimum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            sig { returns(String) }
            attr_accessor :minimum_amount

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                item_id: String,
                minimum_amount: String,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              # The value applied by an adjustment.
              amount:,
              # The price IDs that this adjustment applies to.
              applies_to_price_ids:,
              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              is_invoice_level:,
              # The item ID that revenue from this minimum will be attributed to.
              item_id:,
              # The minimum amount to charge in a given billing period for the prices this
              # adjustment applies to.
              minimum_amount:,
              # The reason for the adjustment.
              reason:,
              adjustment_type: :minimum
            ); end
            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    item_id: String,
                    minimum_amount: String,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash; end
          end

          class Maximum < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The value applied by an adjustment.
            sig { returns(String) }
            attr_accessor :amount

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The maximum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            sig { returns(String) }
            attr_accessor :maximum_amount

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              # The value applied by an adjustment.
              amount:,
              # The price IDs that this adjustment applies to.
              applies_to_price_ids:,
              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              is_invoice_level:,
              # The maximum amount to charge in a given billing period for the prices this
              # adjustment applies to.
              maximum_amount:,
              # The reason for the adjustment.
              reason:,
              adjustment_type: :maximum
            ); end
            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    maximum_amount: String,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum]
              )
          end
          def self.variants; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          # This field is deprecated in favor of `adjustments`.
          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          # This field is deprecated in favor of `adjustments`.
          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module SubLineItem
          extend Orb::Internal::Type::Union

          class Matrix < Orb::Internal::Type::BaseModel
            # The total amount for this sub line item.
            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping)) }
            attr_reader :grouping

            sig do
              params(
                grouping: T.nilable(
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :grouping

            sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig) }
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :matrix_config

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                amount: String,
                grouping: T.nilable(
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping,
                    Orb::Internal::AnyHash
                  )
                ),
                matrix_config: T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                quantity: Float,
                type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The total amount for this sub line item.
              amount:,
              grouping:,
              matrix_config:,
              name:,
              quantity:,
              type: :matrix
            ); end
            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping),
                    matrix_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig,
                    name: String,
                    quantity: Float,
                    type: Symbol
                  }
                )
            end
            def to_hash; end

            class Grouping < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :key

              # No value indicates the default group
              sig { returns(T.nilable(String)) }
              attr_accessor :value

              sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
              def self.new(
                key:,
                # No value indicates the default group
                value:
              ); end
              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash; end
            end

            class MatrixConfig < Orb::Internal::Type::BaseModel
              # The ordered dimension values for this line item.
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimension_values

              sig { params(dimension_values: T::Array[T.nilable(String)]).returns(T.attached_class) }
              def self.new(
                # The ordered dimension values for this line item.
                dimension_values:
              ); end
              sig { override.returns({dimension_values: T::Array[T.nilable(String)]}) }
              def to_hash; end
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            # The total amount for this sub line item.
            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping)) }
            attr_reader :grouping

            sig do
              params(
                grouping: T.nilable(
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :grouping

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig) }
            attr_reader :tier_config

            sig do
              params(
                tier_config: T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :tier_config

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                amount: String,
                grouping: T.nilable(
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping,
                    Orb::Internal::AnyHash
                  )
                ),
                name: String,
                quantity: Float,
                tier_config: T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig,
                  Orb::Internal::AnyHash
                ),
                type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The total amount for this sub line item.
              amount:,
              grouping:,
              name:,
              quantity:,
              tier_config:,
              type: :tier
            ); end
            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping),
                    name: String,
                    quantity: Float,
                    tier_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig,
                    type: Symbol
                  }
                )
            end
            def to_hash; end

            class Grouping < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :key

              # No value indicates the default group
              sig { returns(T.nilable(String)) }
              attr_accessor :value

              sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
              def self.new(
                key:,
                # No value indicates the default group
                value:
              ); end
              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash; end
            end

            class TierConfig < Orb::Internal::Type::BaseModel
              sig { returns(Float) }
              attr_accessor :first_unit

              sig { returns(T.nilable(Float)) }
              attr_accessor :last_unit

              sig { returns(String) }
              attr_accessor :unit_amount

              sig do
                params(
                  first_unit: Float,
                  last_unit: T.nilable(Float),
                  unit_amount: String
                ).returns(T.attached_class)
              end
              def self.new(first_unit:, last_unit:, unit_amount:); end

              sig { override.returns({first_unit: Float, last_unit: T.nilable(Float), unit_amount: String}) }
              def to_hash; end
            end
          end

          class Null < Orb::Internal::Type::BaseModel
            # The total amount for this sub line item.
            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping)) }
            attr_reader :grouping

            sig do
              params(
                grouping: T.nilable(
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :grouping

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                amount: String,
                grouping: T.nilable(
                  T.any(
                    Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping,
                    Orb::Internal::AnyHash
                  )
                ),
                name: String,
                quantity: Float,
                type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The total amount for this sub line item.
              amount:,
              grouping:,
              name:,
              quantity:,
              type: :"'null'"
            ); end
            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping),
                    name: String,
                    quantity: Float,
                    type: Symbol
                  }
                )
            end
            def to_hash; end

            class Grouping < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :key

              # No value indicates the default group
              sig { returns(T.nilable(String)) }
              attr_accessor :value

              sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
              def self.new(
                key:,
                # No value indicates the default group
                value:
              ); end
              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash; end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null]
              )
          end
          def self.variants; end
        end

        class TaxAmount < Orb::Internal::Type::BaseModel
          # The amount of additional tax incurred by this tax rate.
          sig { returns(String) }
          attr_accessor :amount

          # The human-readable description of the applied tax rate.
          sig { returns(String) }
          attr_accessor :tax_rate_description

          # The tax rate percentage, out of 100.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_rate_percentage

          sig do
            params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(
            # The amount of additional tax incurred by this tax rate.
            amount:,
            # The human-readable description of the applied tax rate.
            tax_rate_description:,
            # The tax rate percentage, out of 100.
            tax_rate_percentage:
          ); end
          sig do
            override.returns(
              {
                amount: String,
                tax_rate_description: String,
                tax_rate_percentage: T.nilable(String)
              }
            )
          end
          def to_hash; end
        end
      end

      class Maximum < Orb::Internal::Type::BaseModel
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        # maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # Maximum amount applied
        sig { returns(String) }
        attr_accessor :maximum_amount

        sig do
          params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
        end
        def self.new(
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          applies_to_price_ids:,
          # Maximum amount applied
          maximum_amount:
        ); end
        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash; end
      end

      class Minimum < Orb::Internal::Type::BaseModel
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        # minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # Minimum amount applied
        sig { returns(String) }
        attr_accessor :minimum_amount

        sig do
          params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
        end
        def self.new(
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          applies_to_price_ids:,
          # Minimum amount applied
          minimum_amount:
        ); end
        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash; end
      end

      class PaymentAttempt < Orb::Internal::Type::BaseModel
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
            T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider::TaggedSymbol)
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
            payment_provider: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider::OrSymbol),
            payment_provider_id: T.nilable(String),
            succeeded: T::Boolean
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                amount: String,
                created_at: Time,
                payment_provider: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider::TaggedSymbol),
                payment_provider_id: T.nilable(String),
                succeeded: T::Boolean
              }
            )
        end
        def to_hash; end

        # The payment provider that attempted to collect the payment.
        module PaymentProvider
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(:stripe, Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider::TaggedSymbol)

          sig do
            override
              .returns(
                T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider::TaggedSymbol]
              )
          end
          def self.values; end
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
        def self.new(city:, country:, line1:, line2:, postal_code:, state:); end

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
        def to_hash; end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::InvoiceFetchUpcomingResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ISSUED = T.let(:issued, Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol)
        PAID = T.let(:paid, Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol)
        SYNCED = T.let(:synced, Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol)
        VOID = T.let(:void, Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::Status::TaggedSymbol]) }
        def self.values; end
      end

      class Subscription < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:); end

        sig { override.returns({id: String}) }
        def to_hash; end
      end
    end
  end
end
