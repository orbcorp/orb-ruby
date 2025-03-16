# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingResponse < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # This is the final amount required to be charged to the customer and reflects the
      #   application of the customer balance to the `total` of the invoice.
      sig { returns(String) }
      def amount_due
      end

      sig { params(_: String).returns(String) }
      def amount_due=(_)
      end

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection) }
      def auto_collection
      end

      sig do
        params(_: Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection)
          .returns(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection)
      end
      def auto_collection=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress)) }
      def billing_address
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress))
      end
      def billing_address=(_)
      end

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # A list of credit notes associated with the invoice
      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote]) }
      def credit_notes
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote])
      end
      def credit_notes=(_)
      end

      # An ISO 4217 currency string or `credits`
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::Customer) }
      def customer
      end

      sig do
        params(_: Orb::Models::InvoiceFetchUpcomingResponse::Customer)
          .returns(Orb::Models::InvoiceFetchUpcomingResponse::Customer)
      end
      def customer=(_)
      end

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction]) }
      def customer_balance_transactions
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction])
      end
      def customer_balance_transactions=(_)
      end

      # Tax IDs are commonly required to be displayed on customer invoices, which are
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
      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID)) }
      def customer_tax_id
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID))
      end
      def customer_tax_id=(_)
      end

      # This field is deprecated in favor of `discounts`. If a `discounts` list is
      #   provided, the first discount in the list will be returned. If the list is empty,
      #   `None` will be returned.
      sig { returns(T.anything) }
      def discount
      end

      sig { params(_: T.anything).returns(T.anything) }
      def discount=(_)
      end

      sig do
        returns(
          T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
        )
      end
      def discounts
      end

      sig do
        params(
          _: T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
        )
          .returns(
            T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
          )
      end
      def discounts=(_)
      end

      # When the invoice payment is due. The due date is null if the invoice is not yet
      #   finalized.
      sig { returns(T.nilable(Time)) }
      def due_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def due_date=(_)
      end

      # If the invoice has a status of `draft`, this will be the time that the invoice
      #   will be eligible to be issued, otherwise it will be `null`. If `auto-issue` is
      #   true, the invoice will automatically begin issuing at this time.
      sig { returns(T.nilable(Time)) }
      def eligible_to_issue_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def eligible_to_issue_at=(_)
      end

      # A URL for the customer-facing invoice portal. This URL expires 30 days after the
      #   invoice's due date, or 60 days after being re-generated through the UI.
      sig { returns(T.nilable(String)) }
      def hosted_invoice_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def hosted_invoice_url=(_)
      end

      # Automatically generated invoice number to help track and reconcile invoices.
      #   Invoice numbers have a prefix such as `RFOBWG`. These can be sequential per
      #   account or customer.
      sig { returns(String) }
      def invoice_number
      end

      sig { params(_: String).returns(String) }
      def invoice_number=(_)
      end

      # The link to download the PDF representation of the `Invoice`.
      sig { returns(T.nilable(String)) }
      def invoice_pdf
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoice_pdf=(_)
      end

      sig { returns(Symbol) }
      def invoice_source
      end

      sig { params(_: Symbol).returns(Symbol) }
      def invoice_source=(_)
      end

      # If the invoice failed to issue, this will be the last time it failed to issue
      #   (even if it is now in a different state.)
      sig { returns(T.nilable(Time)) }
      def issue_failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def issue_failed_at=(_)
      end

      # If the invoice has been issued, this will be the time it transitioned to
      #   `issued` (even if it is now in a different state.)
      sig { returns(T.nilable(Time)) }
      def issued_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def issued_at=(_)
      end

      # The breakdown of prices in this invoice.
      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum)) }
      def maximum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum))
      end
      def maximum=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      # Free-form text which is available on the invoice PDF and the Orb invoice portal.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum)) }
      def minimum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum))
      end
      def minimum=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      # If the invoice has a status of `paid`, this gives a timestamp when the invoice
      #   was paid.
      sig { returns(T.nilable(Time)) }
      def paid_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def paid_at=(_)
      end

      # A list of payment attempts associated with the invoice
      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt]) }
      def payment_attempts
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt])
      end
      def payment_attempts=(_)
      end

      # If payment was attempted on this invoice but failed, this will be the time of
      #   the most recent attempt.
      sig { returns(T.nilable(Time)) }
      def payment_failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def payment_failed_at=(_)
      end

      # If payment was attempted on this invoice, this will be the start time of the
      #   most recent attempt. This field is especially useful for delayed-notification
      #   payment mechanisms (like bank transfers), where payment can take 3 days or more.
      sig { returns(T.nilable(Time)) }
      def payment_started_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def payment_started_at=(_)
      end

      # If the invoice is in draft, this timestamp will reflect when the invoice is
      #   scheduled to be issued.
      sig { returns(T.nilable(Time)) }
      def scheduled_issue_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def scheduled_issue_at=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress)) }
      def shipping_address
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress))
      end
      def shipping_address=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription)) }
      def subscription
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription))
      end
      def subscription=(_)
      end

      # The total before any discounts and minimums are applied.
      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      # If the invoice failed to sync, this will be the last time an external invoicing
      #   provider sync was attempted. This field will always be `null` for invoices using
      #   Orb Invoicing.
      sig { returns(T.nilable(Time)) }
      def sync_failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def sync_failed_at=(_)
      end

      # The scheduled date of the invoice
      sig { returns(Time) }
      def target_date
      end

      sig { params(_: Time).returns(Time) }
      def target_date=(_)
      end

      # The total after any minimums and discounts have been applied.
      sig { returns(String) }
      def total
      end

      sig { params(_: String).returns(String) }
      def total=(_)
      end

      # If the invoice has a status of `void`, this gives a timestamp when the invoice
      #   was voided.
      sig { returns(T.nilable(Time)) }
      def voided_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def voided_at=(_)
      end

      # This is true if the invoice will be automatically issued in the future, and
      #   false otherwise.
      sig { returns(T::Boolean) }
      def will_auto_issue
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def will_auto_issue=(_)
      end

      sig do
        params(
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
          invoice_source: Symbol,
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
          status: Symbol,
          subscription: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription),
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
        amount_due:,
        auto_collection:,
        billing_address:,
        created_at:,
        credit_notes:,
        currency:,
        customer:,
        customer_balance_transactions:,
        customer_tax_id:,
        discount:,
        discounts:,
        due_date:,
        eligible_to_issue_at:,
        hosted_invoice_url:,
        invoice_number:,
        invoice_pdf:,
        invoice_source:,
        issue_failed_at:,
        issued_at:,
        line_items:,
        maximum:,
        maximum_amount:,
        memo:,
        metadata:,
        minimum:,
        minimum_amount:,
        paid_at:,
        payment_attempts:,
        payment_failed_at:,
        payment_started_at:,
        scheduled_issue_at:,
        shipping_address:,
        status:,
        subscription:,
        subtotal:,
        sync_failed_at:,
        target_date:,
        total:,
        voided_at:,
        will_auto_issue:
      )
      end

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
              invoice_source: Symbol,
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
              status: Symbol,
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
      def to_hash
      end

      class AutoCollection < Orb::BaseModel
        # True only if auto-collection is enabled for this invoice.
        sig { returns(T.nilable(T::Boolean)) }
        def enabled
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def enabled=(_)
        end

        # If the invoice is scheduled for auto-collection, this field will reflect when
        #   the next attempt will occur. If dunning has been exhausted, or auto-collection
        #   is not enabled for this invoice, this field will be `null`.
        sig { returns(T.nilable(Time)) }
        def next_attempt_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def next_attempt_at=(_)
        end

        # Number of auto-collection payment attempts.
        sig { returns(T.nilable(Integer)) }
        def num_attempts
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def num_attempts=(_)
        end

        # If Orb has ever attempted payment auto-collection for this invoice, this field
        #   will reflect when that attempt occurred. In conjunction with `next_attempt_at`,
        #   this can be used to tell whether the invoice is currently in dunning (that is,
        #   `previously_attempted_at` is non-null, and `next_attempt_time` is non-null), or
        #   if dunning has been exhausted (`previously_attempted_at` is non-null, but
        #   `next_attempt_time` is null).
        sig { returns(T.nilable(Time)) }
        def previously_attempted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def previously_attempted_at=(_)
        end

        sig do
          params(
            enabled: T.nilable(T::Boolean),
            next_attempt_at: T.nilable(Time),
            num_attempts: T.nilable(Integer),
            previously_attempted_at: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(enabled:, next_attempt_at:, num_attempts:, previously_attempted_at:)
        end

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
        def to_hash
        end
      end

      class BillingAddress < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def city
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_)
        end

        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_)
        end

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
        def self.new(city:, country:, line1:, line2:, postal_code:, state:)
        end

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
        def to_hash
        end
      end

      class CreditNote < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def credit_note_number
        end

        sig { params(_: String).returns(String) }
        def credit_note_number=(_)
        end

        # An optional memo supplied on the credit note.
        sig { returns(T.nilable(String)) }
        def memo
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def memo=(_)
        end

        sig { returns(String) }
        def reason
        end

        sig { params(_: String).returns(String) }
        def reason=(_)
        end

        sig { returns(String) }
        def total
        end

        sig { params(_: String).returns(String) }
        def total=(_)
        end

        sig { returns(String) }
        def type
        end

        sig { params(_: String).returns(String) }
        def type=(_)
        end

        # If the credit note has a status of `void`, this gives a timestamp when the
        #   credit note was voided.
        sig { returns(T.nilable(Time)) }
        def voided_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def voided_at=(_)
        end

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
        def self.new(id:, credit_note_number:, memo:, reason:, total:, type:, voided_at:)
        end

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
        def to_hash
        end
      end

      class Customer < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, external_customer_id:)
        end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class CustomerBalanceTransaction < Orb::BaseModel
        # A unique id for this transaction.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Symbol) }
        def action
        end

        sig { params(_: Symbol).returns(Symbol) }
        def action=(_)
        end

        # The value of the amount changed in the transaction.
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        # The creation time of this transaction.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote)) }
        def credit_note
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote))
        end
        def credit_note=(_)
        end

        # An optional description provided for manual customer balance adjustments.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # The new value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        sig { returns(String) }
        def ending_balance
        end

        sig { params(_: String).returns(String) }
        def ending_balance=(_)
        end

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice)) }
        def invoice
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice))
        end
        def invoice=(_)
        end

        # The original value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        sig { returns(String) }
        def starting_balance
        end

        sig { params(_: String).returns(String) }
        def starting_balance=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            id: String,
            action: Symbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice),
            starting_balance: String,
            type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          action:,
          amount:,
          created_at:,
          credit_note:,
          description:,
          ending_balance:,
          invoice:,
          starting_balance:,
          type:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                action: Symbol,
                amount: String,
                created_at: Time,
                credit_note: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote),
                description: T.nilable(String),
                ending_balance: String,
                invoice: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice),
                starting_balance: String,
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class Action < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPLIED_TO_INVOICE = :applied_to_invoice
          MANUAL_ADJUSTMENT = :manual_adjustment
          PRORATED_REFUND = :prorated_refund
          REVERT_PRORATED_REFUND = :revert_prorated_refund
          RETURN_FROM_VOIDING = :return_from_voiding
          CREDIT_NOTE_APPLIED = :credit_note_applied
          CREDIT_NOTE_VOIDED = :credit_note_voided
          OVERPAYMENT_REFUND = :overpayment_refund
          EXTERNAL_PAYMENT = :external_payment
        end

        class CreditNote < Orb::BaseModel
          # The id of the Credit note
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Invoice < Orb::BaseModel
          # The Invoice id
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Type < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          INCREMENT = :increment
          DECREMENT = :decrement
        end
      end

      class CustomerTaxID < Orb::BaseModel
        sig { returns(Symbol) }
        def country
        end

        sig { params(_: Symbol).returns(Symbol) }
        def country=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        # Tax IDs are commonly required to be displayed on customer invoices, which are
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
        sig { params(country: Symbol, type: Symbol, value: String).returns(T.attached_class) }
        def self.new(country:, type:, value:)
        end

        sig { override.returns({country: Symbol, type: Symbol, value: String}) }
        def to_hash
        end

        class Country < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end

        class Type < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end

      class InvoiceSource < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        SUBSCRIPTION = :subscription
        PARTIAL = :partial
        ONE_OFF = :one_off
      end

      class LineItem < Orb::BaseModel
        # A unique ID for this line item.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The line amount after any adjustments and before overage conversion, credits and
        #   partial invoicing.
        sig { returns(String) }
        def adjusted_subtotal
        end

        sig { params(_: String).returns(String) }
        def adjusted_subtotal=(_)
        end

        # All adjustments applied to the line item in the order they were applied based on
        #   invoice calculations (ie. usage discounts -> amount discounts -> percentage
        #   discounts -> minimums -> maximums).
        sig do
          returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )
            ]
          )
        end
        def adjustments
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
              )
              ]
            )
        end
        def adjustments=(_)
        end

        # The final amount for a line item after all adjustments and pre paid credits have
        #   been applied.
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        # The number of prepaid credits applied.
        sig { returns(String) }
        def credits_applied
        end

        sig { params(_: String).returns(String) }
        def credits_applied=(_)
        end

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
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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
        def discount=(_)
        end

        # The end date of the range of time applied for this line item's price.
        sig { returns(Time) }
        def end_date
        end

        sig { params(_: Time).returns(Time) }
        def end_date=(_)
        end

        # An additional filter that was used to calculate the usage for this line item.
        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        # [DEPRECATED] For configured prices that are split by a grouping key, this will
        #   be populated with the key and a value. The `amount` and `subtotal` will be the
        #   values for this particular grouping.
        sig { returns(T.nilable(String)) }
        def grouping
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def grouping=(_)
        end

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum))
        end
        def maximum=(_)
        end

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum))
        end
        def minimum=(_)
        end

        # This field is deprecated in favor of `adjustments`.
        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
        end

        # The name of the price associated with this line item.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # Any amount applied from a partial invoice
        sig { returns(String) }
        def partially_invoiced_amount
        end

        sig { params(_: String).returns(String) }
        def partially_invoiced_amount=(_)
        end

        # The Price resource represents a price that can be billed on a subscription,
        #   resulting in a charge on an invoice in the form of an invoice line item. Prices
        #   take a quantity and determine an amount to bill.
        #
        #   Orb supports a few different pricing models out of the box. Each of these models
        #   is serialized differently in a given Price object. The model_type field
        #   determines the key for the configuration object that is present.
        #
        #   For more on the types of prices, see
        #   [the core concepts documentation](/core-concepts#plan-and-price)
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            )
          )
        end
        def price
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::Price::UnitPrice,
                  Orb::Models::Price::PackagePrice,
                  Orb::Models::Price::MatrixPrice,
                  Orb::Models::Price::TieredPrice,
                  Orb::Models::Price::TieredBpsPrice,
                  Orb::Models::Price::BpsPrice,
                  Orb::Models::Price::BulkBpsPrice,
                  Orb::Models::Price::BulkPrice,
                  Orb::Models::Price::ThresholdTotalAmountPrice,
                  Orb::Models::Price::TieredPackagePrice,
                  Orb::Models::Price::GroupedTieredPrice,
                  Orb::Models::Price::TieredWithMinimumPrice,
                  Orb::Models::Price::TieredPackageWithMinimumPrice,
                  Orb::Models::Price::PackageWithAllocationPrice,
                  Orb::Models::Price::UnitWithPercentPrice,
                  Orb::Models::Price::MatrixWithAllocationPrice,
                  Orb::Models::Price::TieredWithProrationPrice,
                  Orb::Models::Price::UnitWithProrationPrice,
                  Orb::Models::Price::GroupedAllocationPrice,
                  Orb::Models::Price::GroupedWithProratedMinimumPrice,
                  Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                  Orb::Models::Price::MatrixWithDisplayNamePrice,
                  Orb::Models::Price::BulkWithProrationPrice,
                  Orb::Models::Price::GroupedTieredPackagePrice,
                  Orb::Models::Price::MaxGroupTieredPackagePrice,
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                  Orb::Models::Price::CumulativeGroupedBulkPrice
                )
              )
            )
        end
        def price=(_)
        end

        # Either the fixed fee quantity or the usage during the service period.
        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        # The start date of the range of time applied for this line item's price.
        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        # For complex pricing structures, the line item can be broken down further in
        #   `sub_line_items`.
        sig do
          returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )
            ]
          )
        end
        def sub_line_items
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
              )
              ]
            )
        end
        def sub_line_items=(_)
        end

        # The line amount before before any adjustments.
        sig { returns(String) }
        def subtotal
        end

        sig { params(_: String).returns(String) }
        def subtotal=(_)
        end

        # An array of tax rates and their incurred tax amounts. Empty if no tax
        #   integration is configured.
        sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]) }
        def tax_amounts
        end

        sig do
          params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount])
            .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount])
        end
        def tax_amounts=(_)
        end

        # A list of customer ids that were used to calculate the usage for this line item.
        sig { returns(T.nilable(T::Array[String])) }
        def usage_customer_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def usage_customer_ids=(_)
        end

        sig do
          params(
            id: String,
            adjusted_subtotal: String,
            adjustments: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
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
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            ),
            quantity: Float,
            start_date: Time,
            sub_line_items: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )
            ],
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount],
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          adjusted_subtotal:,
          adjustments:,
          amount:,
          credits_applied:,
          discount:,
          end_date:,
          filter:,
          grouping:,
          maximum:,
          maximum_amount:,
          minimum:,
          minimum_amount:,
          name:,
          partially_invoiced_amount:,
          price:,
          quantity:,
          start_date:,
          sub_line_items:,
          subtotal:,
          tax_amounts:,
          usage_customer_ids:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                adjusted_subtotal: String,
                adjustments: T::Array[
                T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
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
                    Orb::Models::Price::UnitPrice,
                    Orb::Models::Price::PackagePrice,
                    Orb::Models::Price::MatrixPrice,
                    Orb::Models::Price::TieredPrice,
                    Orb::Models::Price::TieredBpsPrice,
                    Orb::Models::Price::BpsPrice,
                    Orb::Models::Price::BulkBpsPrice,
                    Orb::Models::Price::BulkPrice,
                    Orb::Models::Price::ThresholdTotalAmountPrice,
                    Orb::Models::Price::TieredPackagePrice,
                    Orb::Models::Price::GroupedTieredPrice,
                    Orb::Models::Price::TieredWithMinimumPrice,
                    Orb::Models::Price::TieredPackageWithMinimumPrice,
                    Orb::Models::Price::PackageWithAllocationPrice,
                    Orb::Models::Price::UnitWithPercentPrice,
                    Orb::Models::Price::MatrixWithAllocationPrice,
                    Orb::Models::Price::TieredWithProrationPrice,
                    Orb::Models::Price::UnitWithProrationPrice,
                    Orb::Models::Price::GroupedAllocationPrice,
                    Orb::Models::Price::GroupedWithProratedMinimumPrice,
                    Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                    Orb::Models::Price::MatrixWithDisplayNamePrice,
                    Orb::Models::Price::BulkWithProrationPrice,
                    Orb::Models::Price::GroupedTieredPackagePrice,
                    Orb::Models::Price::MaxGroupTieredPackagePrice,
                    Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                    Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                    Orb::Models::Price::CumulativeGroupedBulkPrice
                  )
                ),
                quantity: Float,
                start_date: Time,
                sub_line_items: T::Array[
                T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
                )
                ],
                subtotal: String,
                tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount],
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash
        end

        class Adjustment < Orb::Union
          abstract!

          Variants = type_template(:out) do
            {
              fixed: T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
              )
            }
          end

          class MonetaryUsageDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The value applied by an adjustment.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            # The number of usage units by which to discount the price this adjustment applies
            #   to in a given billing period.
            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

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
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              reason:,
              usage_discount:,
              adjustment_type: :usage_discount
            )
            end

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
            def to_hash
            end
          end

          class MonetaryAmountDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The value applied by an adjustment.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The amount by which to discount the prices this adjustment applies to in a given
            #   billing period.
            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

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
              amount:,
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level:,
              reason:,
              adjustment_type: :amount_discount
            )
            end

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
            def to_hash
            end
          end

          class MonetaryPercentageDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The value applied by an adjustment.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The percentage (as a value between 0 and 1) by which to discount the price
            #   intervals this adjustment applies to in a given billing period.
            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

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
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              percentage_discount:,
              reason:,
              adjustment_type: :percentage_discount
            )
            end

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
            def to_hash
            end
          end

          class MonetaryMinimumAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The value applied by an adjustment.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            # The minimum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

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
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              item_id:,
              minimum_amount:,
              reason:,
              adjustment_type: :minimum
            )
            end

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
            def to_hash
            end
          end

          class MonetaryMaximumAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The value applied by an adjustment.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The maximum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

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
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              maximum_amount:,
              reason:,
              adjustment_type: :maximum
            )
            end

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
            def to_hash
            end
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # Maximum amount applied
          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          # This field is deprecated in favor of `adjustments`.
          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # Minimum amount applied
          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          # This field is deprecated in favor of `adjustments`.
          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class SubLineItem < Orb::Union
          abstract!

          Variants = type_template(:out) do
            {
              fixed: T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
              )
            }
          end

          class MatrixSubLineItem < Orb::BaseModel
            # The total amount for this sub line item.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping)
              )
            end
            def grouping
            end

            sig do
              params(
                _: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping)
              )
                .returns(
                  T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping)
                )
            end
            def grouping=(_)
            end

            sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig) }
            def matrix_config
            end

            sig do
              params(
                _: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig
              )
                .returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig)
            end
            def matrix_config=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping),
                matrix_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig,
                name: String,
                quantity: Float,
                type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping),
                    matrix_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig,
                    name: String,
                    quantity: Float,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Grouping < Orb::BaseModel
              sig { returns(String) }
              def key
              end

              sig { params(_: String).returns(String) }
              def key=(_)
              end

              # No value indicates the default group
              sig { returns(T.nilable(String)) }
              def value
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def value=(_)
              end

              sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
              def self.new(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end

            class MatrixConfig < Orb::BaseModel
              # The ordered dimension values for this line item.
              sig { returns(T::Array[T.nilable(String)]) }
              def dimension_values
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimension_values=(_)
              end

              sig { params(dimension_values: T::Array[T.nilable(String)]).returns(T.attached_class) }
              def self.new(dimension_values:)
              end

              sig { override.returns({dimension_values: T::Array[T.nilable(String)]}) }
              def to_hash
              end
            end
          end

          class TierSubLineItem < Orb::BaseModel
            # The total amount for this sub line item.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping)
              )
            end
            def grouping
            end

            sig do
              params(
                _: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping)
              )
                .returns(
                  T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping)
                )
            end
            def grouping=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig) }
            def tier_config
            end

            sig do
              params(_: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig)
                .returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig)
            end
            def tier_config=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping),
                name: String,
                quantity: Float,
                tier_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig,
                type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping),
                    name: String,
                    quantity: Float,
                    tier_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Grouping < Orb::BaseModel
              sig { returns(String) }
              def key
              end

              sig { params(_: String).returns(String) }
              def key=(_)
              end

              # No value indicates the default group
              sig { returns(T.nilable(String)) }
              def value
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def value=(_)
              end

              sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
              def self.new(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end

            class TierConfig < Orb::BaseModel
              sig { returns(Float) }
              def first_unit
              end

              sig { params(_: Float).returns(Float) }
              def first_unit=(_)
              end

              sig { returns(T.nilable(Float)) }
              def last_unit
              end

              sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
              def last_unit=(_)
              end

              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

              sig do
                params(
                  first_unit: Float,
                  last_unit: T.nilable(Float),
                  unit_amount: String
                ).returns(T.attached_class)
              end
              def self.new(first_unit:, last_unit:, unit_amount:)
              end

              sig { override.returns({first_unit: Float, last_unit: T.nilable(Float), unit_amount: String}) }
              def to_hash
              end
            end
          end

          class OtherSubLineItem < Orb::BaseModel
            # The total amount for this sub line item.
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping)
              )
            end
            def grouping
            end

            sig do
              params(
                _: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping)
              )
                .returns(
                  T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping)
                )
            end
            def grouping=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping),
                name: String,
                quantity: Float,
                type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, grouping:, name:, quantity:, type: :"'null'")
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping),
                    name: String,
                    quantity: Float,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Grouping < Orb::BaseModel
              sig { returns(String) }
              def key
              end

              sig { params(_: String).returns(String) }
              def key=(_)
              end

              # No value indicates the default group
              sig { returns(T.nilable(String)) }
              def value
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def value=(_)
              end

              sig { params(key: String, value: T.nilable(String)).returns(T.attached_class) }
              def self.new(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end
          end
        end

        class TaxAmount < Orb::BaseModel
          # The amount of additional tax incurred by this tax rate.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The human-readable description of the applied tax rate.
          sig { returns(String) }
          def tax_rate_description
          end

          sig { params(_: String).returns(String) }
          def tax_rate_description=(_)
          end

          # The tax rate percentage, out of 100.
          sig { returns(T.nilable(String)) }
          def tax_rate_percentage
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def tax_rate_percentage=(_)
          end

          sig do
            params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(amount:, tax_rate_description:, tax_rate_percentage:)
          end

          sig do
            override.returns(
              {
                amount: String,
                tax_rate_description: String,
                tax_rate_percentage: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class Maximum < Orb::BaseModel
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        #   maximums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # Maximum amount applied
        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        sig do
          params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, maximum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash
        end
      end

      class Minimum < Orb::BaseModel
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        #   minimums, this can be a subset of prices.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # Minimum amount applied
        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        sig do
          params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, minimum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash
        end
      end

      class PaymentAttempt < Orb::BaseModel
        # The ID of the payment attempt.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The amount of the payment attempt.
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        # The time at which the payment attempt was created.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # The payment provider that attempted to collect the payment.
        sig { returns(T.nilable(Symbol)) }
        def payment_provider
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def payment_provider=(_)
        end

        # The ID of the payment attempt in the payment provider.
        sig { returns(T.nilable(String)) }
        def payment_provider_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_provider_id=(_)
        end

        # Whether the payment attempt succeeded.
        sig { returns(T::Boolean) }
        def succeeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def succeeded=(_)
        end

        sig do
          params(
            id: String,
            amount: String,
            created_at: Time,
            payment_provider: T.nilable(Symbol),
            payment_provider_id: T.nilable(String),
            succeeded: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(id:, amount:, created_at:, payment_provider:, payment_provider_id:, succeeded:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: String,
                created_at: Time,
                payment_provider: T.nilable(Symbol),
                payment_provider_id: T.nilable(String),
                succeeded: T::Boolean
              }
            )
        end
        def to_hash
        end

        # The payment provider that attempted to collect the payment.
        class PaymentProvider < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          STRIPE = :stripe
        end
      end

      class ShippingAddress < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def city
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_)
        end

        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_)
        end

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
        def self.new(city:, country:, line1:, line2:, postal_code:, state:)
        end

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
        def to_hash
        end
      end

      class Status < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void
        DRAFT = :draft
      end

      class Subscription < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end
    end
  end
end
