# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#fetch_upcoming
    class InvoiceFetchUpcomingResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_due
      #   This is the final amount required to be charged to the customer and reflects the
      #   application of the customer balance to the `total` of the invoice.
      #
      #   @return [String]
      required :amount_due, String

      # @!attribute auto_collection
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection]
      required :auto_collection, -> { Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection }

      # @!attribute billing_address
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress, nil]
      required :billing_address, -> { Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress }, nil?: true

      # @!attribute created_at
      #   The creation time of the resource in Orb.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credit_notes
      #   A list of credit notes associated with the invoice
      #
      #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::CreditNote>]
      required :credit_notes,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote] }

      # @!attribute currency
      #   An ISO 4217 currency string or `credits`
      #
      #   @return [String]
      required :currency, String

      # @!attribute customer
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::Customer]
      required :customer, -> { Orb::Models::InvoiceFetchUpcomingResponse::Customer }

      # @!attribute customer_balance_transactions
      #
      #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction>]
      required :customer_balance_transactions,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction] }

      # @!attribute customer_tax_id
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
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID, nil]
      required :customer_tax_id, -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID }, nil?: true

      # @!attribute discount
      #   @deprecated
      #
      #   This field is deprecated in favor of `discounts`. If a `discounts` list is
      #   provided, the first discount in the list will be returned. If the list is empty,
      #   `None` will be returned.
      #
      #   @return [Object]
      required :discount, Orb::Internal::Type::Unknown

      # @!attribute discounts
      #
      #   @return [Array<Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount>]
      required :discounts, -> { Orb::Internal::Type::ArrayOf[union: Orb::InvoiceLevelDiscount] }

      # @!attribute due_date
      #   When the invoice payment is due. The due date is null if the invoice is not yet
      #   finalized.
      #
      #   @return [Time, nil]
      required :due_date, Time, nil?: true

      # @!attribute eligible_to_issue_at
      #   If the invoice has a status of `draft`, this will be the time that the invoice
      #   will be eligible to be issued, otherwise it will be `null`. If `auto-issue` is
      #   true, the invoice will automatically begin issuing at this time.
      #
      #   @return [Time, nil]
      required :eligible_to_issue_at, Time, nil?: true

      # @!attribute hosted_invoice_url
      #   A URL for the customer-facing invoice portal. This URL expires 30 days after the
      #   invoice's due date, or 60 days after being re-generated through the UI.
      #
      #   @return [String, nil]
      required :hosted_invoice_url, String, nil?: true

      # @!attribute invoice_number
      #   Automatically generated invoice number to help track and reconcile invoices.
      #   Invoice numbers have a prefix such as `RFOBWG`. These can be sequential per
      #   account or customer.
      #
      #   @return [String]
      required :invoice_number, String

      # @!attribute invoice_pdf
      #   The link to download the PDF representation of the `Invoice`.
      #
      #   @return [String, nil]
      required :invoice_pdf, String, nil?: true

      # @!attribute invoice_source
      #
      #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource]
      required :invoice_source, enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource }

      # @!attribute issue_failed_at
      #   If the invoice failed to issue, this will be the last time it failed to issue
      #   (even if it is now in a different state.)
      #
      #   @return [Time, nil]
      required :issue_failed_at, Time, nil?: true

      # @!attribute issued_at
      #   If the invoice has been issued, this will be the time it transitioned to
      #   `issued` (even if it is now in a different state.)
      #
      #   @return [Time, nil]
      required :issued_at, Time, nil?: true

      # @!attribute line_items
      #   The breakdown of prices in this invoice.
      #
      #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem>]
      required :line_items,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceFetchUpcomingResponse::LineItem] }

      # @!attribute maximum
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::Maximum, nil]
      required :maximum, -> { Orb::Models::InvoiceFetchUpcomingResponse::Maximum }, nil?: true

      # @!attribute maximum_amount
      #
      #   @return [String, nil]
      required :maximum_amount, String, nil?: true

      # @!attribute memo
      #   Free-form text which is available on the invoice PDF and the Orb invoice portal.
      #
      #   @return [String, nil]
      required :memo, String, nil?: true

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute minimum
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::Minimum, nil]
      required :minimum, -> { Orb::Models::InvoiceFetchUpcomingResponse::Minimum }, nil?: true

      # @!attribute minimum_amount
      #
      #   @return [String, nil]
      required :minimum_amount, String, nil?: true

      # @!attribute paid_at
      #   If the invoice has a status of `paid`, this gives a timestamp when the invoice
      #   was paid.
      #
      #   @return [Time, nil]
      required :paid_at, Time, nil?: true

      # @!attribute payment_attempts
      #   A list of payment attempts associated with the invoice
      #
      #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt>]
      required :payment_attempts,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt] }

      # @!attribute payment_failed_at
      #   If payment was attempted on this invoice but failed, this will be the time of
      #   the most recent attempt.
      #
      #   @return [Time, nil]
      required :payment_failed_at, Time, nil?: true

      # @!attribute payment_started_at
      #   If payment was attempted on this invoice, this will be the start time of the
      #   most recent attempt. This field is especially useful for delayed-notification
      #   payment mechanisms (like bank transfers), where payment can take 3 days or more.
      #
      #   @return [Time, nil]
      required :payment_started_at, Time, nil?: true

      # @!attribute scheduled_issue_at
      #   If the invoice is in draft, this timestamp will reflect when the invoice is
      #   scheduled to be issued.
      #
      #   @return [Time, nil]
      required :scheduled_issue_at, Time, nil?: true

      # @!attribute shipping_address
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress, nil]
      required :shipping_address, -> { Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress }, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::Status]
      required :status, enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::Status }

      # @!attribute subscription
      #
      #   @return [Orb::Models::InvoiceFetchUpcomingResponse::Subscription, nil]
      required :subscription, -> { Orb::Models::InvoiceFetchUpcomingResponse::Subscription }, nil?: true

      # @!attribute subtotal
      #   The total before any discounts and minimums are applied.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute sync_failed_at
      #   If the invoice failed to sync, this will be the last time an external invoicing
      #   provider sync was attempted. This field will always be `null` for invoices using
      #   Orb Invoicing.
      #
      #   @return [Time, nil]
      required :sync_failed_at, Time, nil?: true

      # @!attribute target_date
      #   The scheduled date of the invoice
      #
      #   @return [Time]
      required :target_date, Time

      # @!attribute total
      #   The total after any minimums and discounts have been applied.
      #
      #   @return [String]
      required :total, String

      # @!attribute voided_at
      #   If the invoice has a status of `void`, this gives a timestamp when the invoice
      #   was voided.
      #
      #   @return [Time, nil]
      required :voided_at, Time, nil?: true

      # @!attribute will_auto_issue
      #   This is true if the invoice will be automatically issued in the future, and
      #   false otherwise.
      #
      #   @return [Boolean]
      required :will_auto_issue, Orb::Internal::Type::Boolean

      # @!method initialize(id:, amount_due:, auto_collection:, billing_address:, created_at:, credit_notes:, currency:, customer:, customer_balance_transactions:, customer_tax_id:, discount:, discounts:, due_date:, eligible_to_issue_at:, hosted_invoice_url:, invoice_number:, invoice_pdf:, invoice_source:, issue_failed_at:, issued_at:, line_items:, maximum:, maximum_amount:, memo:, metadata:, minimum:, minimum_amount:, paid_at:, payment_attempts:, payment_failed_at:, payment_started_at:, scheduled_issue_at:, shipping_address:, status:, subscription:, subtotal:, sync_failed_at:, target_date:, total:, voided_at:, will_auto_issue:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceFetchUpcomingResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param amount_due [String] This is the final amount required to be charged to the customer and reflects the
      #
      #   @param auto_collection [Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection]
      #
      #   @param billing_address [Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress, nil]
      #
      #   @param created_at [Time] The creation time of the resource in Orb.
      #
      #   @param credit_notes [Array<Orb::Models::InvoiceFetchUpcomingResponse::CreditNote>] A list of credit notes associated with the invoice
      #
      #   @param currency [String] An ISO 4217 currency string or `credits`
      #
      #   @param customer [Orb::Models::InvoiceFetchUpcomingResponse::Customer]
      #
      #   @param customer_balance_transactions [Array<Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction>]
      #
      #   @param customer_tax_id [Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID, nil] Tax IDs are commonly required to be displayed on customer invoices, which are ad
      #
      #   @param discount [Object] This field is deprecated in favor of `discounts`. If a `discounts` list is provi
      #
      #   @param discounts [Array<Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount>]
      #
      #   @param due_date [Time, nil] When the invoice payment is due. The due date is null if the invoice is not yet
      #
      #   @param eligible_to_issue_at [Time, nil] If the invoice has a status of `draft`, this will be the time that the invoice w
      #
      #   @param hosted_invoice_url [String, nil] A URL for the customer-facing invoice portal. This URL expires 30 days after the
      #
      #   @param invoice_number [String] Automatically generated invoice number to help track and reconcile invoices. Inv
      #
      #   @param invoice_pdf [String, nil] The link to download the PDF representation of the `Invoice`.
      #
      #   @param invoice_source [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::InvoiceSource]
      #
      #   @param issue_failed_at [Time, nil] If the invoice failed to issue, this will be the last time it failed to issue (e
      #
      #   @param issued_at [Time, nil] If the invoice has been issued, this will be the time it transitioned to `issued
      #
      #   @param line_items [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem>] The breakdown of prices in this invoice.
      #
      #   @param maximum [Orb::Models::InvoiceFetchUpcomingResponse::Maximum, nil]
      #
      #   @param maximum_amount [String, nil]
      #
      #   @param memo [String, nil] Free-form text which is available on the invoice PDF and the Orb invoice portal.
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param minimum [Orb::Models::InvoiceFetchUpcomingResponse::Minimum, nil]
      #
      #   @param minimum_amount [String, nil]
      #
      #   @param paid_at [Time, nil] If the invoice has a status of `paid`, this gives a timestamp when the invoice w
      #
      #   @param payment_attempts [Array<Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt>] A list of payment attempts associated with the invoice
      #
      #   @param payment_failed_at [Time, nil] If payment was attempted on this invoice but failed, this will be the time of th
      #
      #   @param payment_started_at [Time, nil] If payment was attempted on this invoice, this will be the start time of the mos
      #
      #   @param scheduled_issue_at [Time, nil] If the invoice is in draft, this timestamp will reflect when the invoice is sche
      #
      #   @param shipping_address [Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress, nil]
      #
      #   @param status [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::Status]
      #
      #   @param subscription [Orb::Models::InvoiceFetchUpcomingResponse::Subscription, nil]
      #
      #   @param subtotal [String] The total before any discounts and minimums are applied.
      #
      #   @param sync_failed_at [Time, nil] If the invoice failed to sync, this will be the last time an external invoicing
      #
      #   @param target_date [Time] The scheduled date of the invoice
      #
      #   @param total [String] The total after any minimums and discounts have been applied.
      #
      #   @param voided_at [Time, nil] If the invoice has a status of `void`, this gives a timestamp when the invoice w
      #
      #   @param will_auto_issue [Boolean] This is true if the invoice will be automatically issued in the future, and fals

      # @see Orb::Models::InvoiceFetchUpcomingResponse#auto_collection
      class AutoCollection < Orb::Internal::Type::BaseModel
        # @!attribute enabled
        #   True only if auto-collection is enabled for this invoice.
        #
        #   @return [Boolean, nil]
        required :enabled, Orb::Internal::Type::Boolean, nil?: true

        # @!attribute next_attempt_at
        #   If the invoice is scheduled for auto-collection, this field will reflect when
        #   the next attempt will occur. If dunning has been exhausted, or auto-collection
        #   is not enabled for this invoice, this field will be `null`.
        #
        #   @return [Time, nil]
        required :next_attempt_at, Time, nil?: true

        # @!attribute num_attempts
        #   Number of auto-collection payment attempts.
        #
        #   @return [Integer, nil]
        required :num_attempts, Integer, nil?: true

        # @!attribute previously_attempted_at
        #   If Orb has ever attempted payment auto-collection for this invoice, this field
        #   will reflect when that attempt occurred. In conjunction with `next_attempt_at`,
        #   this can be used to tell whether the invoice is currently in dunning (that is,
        #   `previously_attempted_at` is non-null, and `next_attempt_time` is non-null), or
        #   if dunning has been exhausted (`previously_attempted_at` is non-null, but
        #   `next_attempt_time` is null).
        #
        #   @return [Time, nil]
        required :previously_attempted_at, Time, nil?: true

        # @!method initialize(enabled:, next_attempt_at:, num_attempts:, previously_attempted_at:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection} for more details.
        #
        #   @param enabled [Boolean, nil] True only if auto-collection is enabled for this invoice.
        #
        #   @param next_attempt_at [Time, nil] If the invoice is scheduled for auto-collection, this field will reflect when th
        #
        #   @param num_attempts [Integer, nil] Number of auto-collection payment attempts.
        #
        #   @param previously_attempted_at [Time, nil] If Orb has ever attempted payment auto-collection for this invoice, this field w
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#billing_address
      class BillingAddress < Orb::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute postal_code
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, postal_code:, state:)
        #   @param city [String, nil]
        #   @param country [String, nil]
        #   @param line1 [String, nil]
        #   @param line2 [String, nil]
        #   @param postal_code [String, nil]
        #   @param state [String, nil]
      end

      class CreditNote < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute credit_note_number
        #
        #   @return [String]
        required :credit_note_number, String

        # @!attribute memo
        #   An optional memo supplied on the credit note.
        #
        #   @return [String, nil]
        required :memo, String, nil?: true

        # @!attribute reason
        #
        #   @return [String]
        required :reason, String

        # @!attribute total
        #
        #   @return [String]
        required :total, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute voided_at
        #   If the credit note has a status of `void`, this gives a timestamp when the
        #   credit note was voided.
        #
        #   @return [Time, nil]
        required :voided_at, Time, nil?: true

        # @!method initialize(id:, credit_note_number:, memo:, reason:, total:, type:, voided_at:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceFetchUpcomingResponse::CreditNote} for more details.
        #
        #   @param id [String]
        #
        #   @param credit_note_number [String]
        #
        #   @param memo [String, nil] An optional memo supplied on the credit note.
        #
        #   @param reason [String]
        #
        #   @param total [String]
        #
        #   @param type [String]
        #
        #   @param voided_at [Time, nil] If the credit note has a status of `void`, this gives a timestamp when the credi
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#customer
      class Customer < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute external_customer_id
        #
        #   @return [String, nil]
        required :external_customer_id, String, nil?: true

        # @!method initialize(id:, external_customer_id:)
        #   @param id [String]
        #   @param external_customer_id [String, nil]
      end

      class CustomerBalanceTransaction < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   A unique id for this transaction.
        #
        #   @return [String]
        required :id, String

        # @!attribute action
        #
        #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action]
        required :action,
                 enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action }

        # @!attribute amount
        #   The value of the amount changed in the transaction.
        #
        #   @return [String]
        required :amount, String

        # @!attribute created_at
        #   The creation time of this transaction.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_note
        #
        #   @return [Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote, nil]
        required :credit_note,
                 -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote },
                 nil?: true

        # @!attribute description
        #   An optional description provided for manual customer balance adjustments.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute ending_balance
        #   The new value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        #
        #   @return [String]
        required :ending_balance, String

        # @!attribute invoice
        #
        #   @return [Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice, nil]
        required :invoice,
                 -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice },
                 nil?: true

        # @!attribute starting_balance
        #   The original value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        #
        #   @return [String]
        required :starting_balance, String

        # @!attribute type
        #
        #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type]
        required :type, enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type }

        # @!method initialize(id:, action:, amount:, created_at:, credit_note:, description:, ending_balance:, invoice:, starting_balance:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction} for more
        #   details.
        #
        #   @param id [String] A unique id for this transaction.
        #
        #   @param action [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Action]
        #
        #   @param amount [String] The value of the amount changed in the transaction.
        #
        #   @param created_at [Time] The creation time of this transaction.
        #
        #   @param credit_note [Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote, nil]
        #
        #   @param description [String, nil] An optional description provided for manual customer balance adjustments.
        #
        #   @param ending_balance [String] The new value of the customer's balance prior to the transaction, in the custome
        #
        #   @param invoice [Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice, nil]
        #
        #   @param starting_balance [String] The original value of the customer's balance prior to the transaction, in the cu
        #
        #   @param type [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Type]

        # @see Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction#action
        module Action
          extend Orb::Internal::Type::Enum

          APPLIED_TO_INVOICE = :applied_to_invoice
          MANUAL_ADJUSTMENT = :manual_adjustment
          PRORATED_REFUND = :prorated_refund
          REVERT_PRORATED_REFUND = :revert_prorated_refund
          RETURN_FROM_VOIDING = :return_from_voiding
          CREDIT_NOTE_APPLIED = :credit_note_applied
          CREDIT_NOTE_VOIDED = :credit_note_voided
          OVERPAYMENT_REFUND = :overpayment_refund
          EXTERNAL_PAYMENT = :external_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction#credit_note
        class CreditNote < Orb::Internal::Type::BaseModel
          # @!attribute id
          #   The id of the Credit note
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String] The id of the Credit note
        end

        # @see Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction#invoice
        class Invoice < Orb::Internal::Type::BaseModel
          # @!attribute id
          #   The Invoice id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String] The Invoice id
        end

        # @see Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction#type
        module Type
          extend Orb::Internal::Type::Enum

          INCREMENT = :increment
          DECREMENT = :decrement

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#customer_tax_id
      class CustomerTaxID < Orb::Internal::Type::BaseModel
        # @!attribute country
        #
        #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country]
        required :country, enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country }

        # @!attribute type
        #
        #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type]
        required :type, enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type }

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
        #   @param country [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Country]
        #   @param type [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID::Type]
        #   @param value [String]

        # @see Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID#country
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

        # @see Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID#type
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

      # @see Orb::Models::InvoiceFetchUpcomingResponse#invoice_source
      module InvoiceSource
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION = :subscription
        PARTIAL = :partial
        ONE_OFF = :one_off

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class LineItem < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   A unique ID for this line item.
        #
        #   @return [String]
        required :id, String

        # @!attribute adjusted_subtotal
        #   The line amount after any adjustments and before overage conversion, credits and
        #   partial invoicing.
        #
        #   @return [String]
        required :adjusted_subtotal, String

        # @!attribute adjustments
        #   All adjustments applied to the line item in the order they were applied based on
        #   invoice calculations (ie. usage discounts -> amount discounts -> percentage
        #   discounts -> minimums -> maximums).
        #
        #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum>]
        required :adjustments,
                 -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment] }

        # @!attribute amount
        #   The final amount for a line item after all adjustments and pre paid credits have
        #   been applied.
        #
        #   @return [String]
        required :amount, String

        # @!attribute credits_applied
        #   The number of prepaid credits applied.
        #
        #   @return [String]
        required :credits_applied, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute end_date
        #   The end date of the range of time applied for this line item's price.
        #
        #   @return [Time]
        required :end_date, Time

        # @!attribute filter
        #   An additional filter that was used to calculate the usage for this line item.
        #
        #   @return [String, nil]
        required :filter, String, nil?: true

        # @!attribute grouping
        #   [DEPRECATED] For configured prices that are split by a grouping key, this will
        #   be populated with the key and a value. The `amount` and `subtotal` will be the
        #   values for this particular grouping.
        #
        #   @return [String, nil]
        required :grouping, String, nil?: true

        # @!attribute maximum
        #   @deprecated
        #
        #   This field is deprecated in favor of `adjustments`.
        #
        #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum, nil]
        required :maximum, -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   This field is deprecated in favor of `adjustments`.
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute minimum
        #   @deprecated
        #
        #   This field is deprecated in favor of `adjustments`.
        #
        #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum, nil]
        required :minimum, -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   This field is deprecated in favor of `adjustments`.
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute name
        #   The name of the price associated with this line item.
        #
        #   @return [String]
        required :name, String

        # @!attribute partially_invoiced_amount
        #   Any amount applied from a partial invoice
        #
        #   @return [String]
        required :partially_invoiced_amount, String

        # @!attribute price
        #   The Price resource represents a price that can be billed on a subscription,
        #   resulting in a charge on an invoice in the form of an invoice line item. Prices
        #   take a quantity and determine an amount to bill.
        #
        #   Orb supports a few different pricing models out of the box. Each of these models
        #   is serialized differently in a given Price object. The model_type field
        #   determines the key for the configuration object that is present.
        #
        #   For more on the types of prices, see
        #   [the core concepts documentation](/core-concepts#plan-and-price)
        #
        #   @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, nil]
        required :price, union: -> { Orb::Price }, nil?: true

        # @!attribute quantity
        #   Either the fixed fee quantity or the usage during the service period.
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute start_date
        #   The start date of the range of time applied for this line item's price.
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute sub_line_items
        #   For complex pricing structures, the line item can be broken down further in
        #   `sub_line_items`.
        #
        #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null>]
        required :sub_line_items,
                 -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem] }

        # @!attribute subtotal
        #   The line amount before before any adjustments.
        #
        #   @return [String]
        required :subtotal, String

        # @!attribute tax_amounts
        #   An array of tax rates and their incurred tax amounts. Empty if no tax
        #   integration is configured.
        #
        #   @return [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount>]
        required :tax_amounts,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount] }

        # @!attribute usage_customer_ids
        #   A list of customer ids that were used to calculate the usage for this line item.
        #
        #   @return [Array<String>, nil]
        required :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(id:, adjusted_subtotal:, adjustments:, amount:, credits_applied:, discount:, end_date:, filter:, grouping:, maximum:, maximum_amount:, minimum:, minimum_amount:, name:, partially_invoiced_amount:, price:, quantity:, start_date:, sub_line_items:, subtotal:, tax_amounts:, usage_customer_ids:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem} for more details.
        #
        #   @param id [String] A unique ID for this line item.
        #
        #   @param adjusted_subtotal [String] The line amount after any adjustments and before overage conversion, credits and
        #
        #   @param adjustments [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum>] All adjustments applied to the line item in the order they were applied based on
        #
        #   @param amount [String] The final amount for a line item after all adjustments and pre paid credits have
        #
        #   @param credits_applied [String] The number of prepaid credits applied.
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param end_date [Time] The end date of the range of time applied for this line item's price.
        #
        #   @param filter [String, nil] An additional filter that was used to calculate the usage for this line item.
        #
        #   @param grouping [String, nil] [DEPRECATED] For configured prices that are split by a grouping key, this will b
        #
        #   @param maximum [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum, nil] This field is deprecated in favor of `adjustments`.
        #
        #   @param maximum_amount [String, nil] This field is deprecated in favor of `adjustments`.
        #
        #   @param minimum [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum, nil] This field is deprecated in favor of `adjustments`.
        #
        #   @param minimum_amount [String, nil] This field is deprecated in favor of `adjustments`.
        #
        #   @param name [String] The name of the price associated with this line item.
        #
        #   @param partially_invoiced_amount [String] Any amount applied from a partial invoice
        #
        #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, nil] The Price resource represents a price that can be billed on a subscription, resu
        #
        #   @param quantity [Float] Either the fixed fee quantity or the usage during the service period.
        #
        #   @param start_date [Time] The start date of the range of time applied for this line item's price.
        #
        #   @param sub_line_items [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null>] For complex pricing structures, the line item can be broken down further in `sub
        #
        #   @param subtotal [String] The line amount before before any adjustments.
        #
        #   @param tax_amounts [Array<Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount>] An array of tax rates and their incurred tax amounts. Empty if no tax integratio
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer ids that were used to calculate the usage for this line item.

        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :usage_discount,
                  -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount }

          variant :percentage_discount,
                  -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount }

          variant :minimum, -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum }

          variant :maximum, -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum }

          class UsageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute amount
            #   The value applied by an adjustment.
            #
            #   @return [String]
            required :amount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!attribute usage_discount
            #   The number of usage units by which to discount the price this adjustment applies
            #   to in a given billing period.
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!method initialize(id:, amount:, applies_to_price_ids:, is_invoice_level:, reason:, usage_discount:, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [String] The value applied by an adjustment.
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param usage_discount [Float] The number of usage units by which to discount the price this adjustment applies
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :amount_discount]
            required :adjustment_type, const: :amount_discount

            # @!attribute amount
            #   The value applied by an adjustment.
            #
            #   @return [String]
            required :amount, String

            # @!attribute amount_discount
            #   The amount by which to discount the prices this adjustment applies to in a given
            #   billing period.
            #
            #   @return [String]
            required :amount_discount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, amount:, amount_discount:, applies_to_price_ids:, is_invoice_level:, reason:, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [String] The value applied by an adjustment.
            #
            #   @param amount_discount [String] The amount by which to discount the prices this adjustment applies to in a given
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute amount
            #   The value applied by an adjustment.
            #
            #   @return [String]
            required :amount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute percentage_discount
            #   The percentage (as a value between 0 and 1) by which to discount the price
            #   intervals this adjustment applies to in a given billing period.
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, amount:, applies_to_price_ids:, is_invoice_level:, percentage_discount:, reason:, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [String] The value applied by an adjustment.
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #
            #   @param percentage_discount [Float] The percentage (as a value between 0 and 1) by which to discount the price inter
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class Minimum < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute amount
            #   The value applied by an adjustment.
            #
            #   @return [String]
            required :amount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #   The minimum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, amount:, applies_to_price_ids:, is_invoice_level:, item_id:, minimum_amount:, reason:, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param amount [String] The value applied by an adjustment.
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String] The minimum amount to charge in a given billing period for the prices this adjus
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class Maximum < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute amount
            #   The value applied by an adjustment.
            #
            #   @return [String]
            required :amount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute maximum_amount
            #   The maximum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, amount:, applies_to_price_ids:, is_invoice_level:, maximum_amount:, reason:, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param amount [String] The value applied by an adjustment.
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #
            #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the prices this adjus
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::UsageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::AmountDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::PercentageDiscount, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Minimum, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::Maximum)]
        end

        # @deprecated
        #
        # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum} for more details.
          #
          #   This field is deprecated in favor of `adjustments`.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @deprecated
        #
        # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum} for more details.
          #
          #   This field is deprecated in favor of `adjustments`.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        module SubLineItem
          extend Orb::Internal::Type::Union

          discriminator :type

          variant :matrix, -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix }

          variant :tier, -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier }

          variant :"'null'", -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null }

          class Matrix < Orb::Internal::Type::BaseModel
            # @!attribute amount
            #   The total amount for this sub line item.
            #
            #   @return [String]
            required :amount, String

            # @!attribute grouping
            #
            #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping, nil]
            required :grouping,
                     -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping },
                     nil?: true

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!attribute type
            #
            #   @return [Symbol, :matrix]
            required :type, const: :matrix

            # @!method initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
            #   @param amount [String] The total amount for this sub line item.
            #
            #   @param grouping [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::Grouping, nil]
            #
            #   @param matrix_config [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix::MatrixConfig]
            #
            #   @param name [String]
            #
            #   @param quantity [Float]
            #
            #   @param type [Symbol, :matrix]

            # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix#grouping
            class Grouping < Orb::Internal::Type::BaseModel
              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #   No value indicates the default group
              #
              #   @return [String, nil]
              required :value, String, nil?: true

              # @!method initialize(key:, value:)
              #   @param key [String]
              #
              #   @param value [String, nil] No value indicates the default group
            end

            # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix#matrix_config
            class MatrixConfig < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The ordered dimension values for this line item.
              #
              #   @return [Array<String, nil>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!method initialize(dimension_values:)
              #   @param dimension_values [Array<String, nil>] The ordered dimension values for this line item.
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            # @!attribute amount
            #   The total amount for this sub line item.
            #
            #   @return [String]
            required :amount, String

            # @!attribute grouping
            #
            #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping, nil]
            required :grouping,
                     -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping },
                     nil?: true

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!attribute tier_config
            #
            #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig]
            required :tier_config,
                     -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig }

            # @!attribute type
            #
            #   @return [Symbol, :tier]
            required :type, const: :tier

            # @!method initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
            #   @param amount [String] The total amount for this sub line item.
            #
            #   @param grouping [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::Grouping, nil]
            #
            #   @param name [String]
            #
            #   @param quantity [Float]
            #
            #   @param tier_config [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier::TierConfig]
            #
            #   @param type [Symbol, :tier]

            # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier#grouping
            class Grouping < Orb::Internal::Type::BaseModel
              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #   No value indicates the default group
              #
              #   @return [String, nil]
              required :value, String, nil?: true

              # @!method initialize(key:, value:)
              #   @param key [String]
              #
              #   @param value [String, nil] No value indicates the default group
            end

            # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier#tier_config
            class TierConfig < Orb::Internal::Type::BaseModel
              # @!attribute first_unit
              #
              #   @return [Float]
              required :first_unit, Float

              # @!attribute last_unit
              #
              #   @return [Float, nil]
              required :last_unit, Float, nil?: true

              # @!attribute unit_amount
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(first_unit:, last_unit:, unit_amount:)
              #   @param first_unit [Float]
              #   @param last_unit [Float, nil]
              #   @param unit_amount [String]
            end
          end

          class Null < Orb::Internal::Type::BaseModel
            # @!attribute amount
            #   The total amount for this sub line item.
            #
            #   @return [String]
            required :amount, String

            # @!attribute grouping
            #
            #   @return [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping, nil]
            required :grouping,
                     -> { Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping },
                     nil?: true

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!attribute type
            #
            #   @return [Symbol, :"'null'"]
            required :type, const: :"'null'"

            # @!method initialize(amount:, grouping:, name:, quantity:, type: :"'null'")
            #   @param amount [String] The total amount for this sub line item.
            #
            #   @param grouping [Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null::Grouping, nil]
            #
            #   @param name [String]
            #
            #   @param quantity [Float]
            #
            #   @param type [Symbol, :"'null'"]

            # @see Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null#grouping
            class Grouping < Orb::Internal::Type::BaseModel
              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #   No value indicates the default group
              #
              #   @return [String, nil]
              required :value, String, nil?: true

              # @!method initialize(key:, value:)
              #   @param key [String]
              #
              #   @param value [String, nil] No value indicates the default group
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Matrix, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Tier, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::Null)]
        end

        class TaxAmount < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of additional tax incurred by this tax rate.
          #
          #   @return [String]
          required :amount, String

          # @!attribute tax_rate_description
          #   The human-readable description of the applied tax rate.
          #
          #   @return [String]
          required :tax_rate_description, String

          # @!attribute tax_rate_percentage
          #   The tax rate percentage, out of 100.
          #
          #   @return [String, nil]
          required :tax_rate_percentage, String, nil?: true

          # @!method initialize(amount:, tax_rate_description:, tax_rate_percentage:)
          #   @param amount [String] The amount of additional tax incurred by this tax rate.
          #
          #   @param tax_rate_description [String] The human-readable description of the applied tax rate.
          #
          #   @param tax_rate_percentage [String, nil] The tax rate percentage, out of 100.
        end
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#maximum
      class Maximum < Orb::Internal::Type::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this maximum amount applies to. For plan/plan phase
        #   maximums, this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute maximum_amount
        #   Maximum amount applied
        #
        #   @return [String]
        required :maximum_amount, String

        # @!method initialize(applies_to_price_ids:, maximum_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceFetchUpcomingResponse::Maximum} for more details.
        #
        #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
        #
        #   @param maximum_amount [String] Maximum amount applied
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#minimum
      class Minimum < Orb::Internal::Type::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this minimum amount applies to. For plan/plan phase
        #   minimums, this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute minimum_amount
        #   Minimum amount applied
        #
        #   @return [String]
        required :minimum_amount, String

        # @!method initialize(applies_to_price_ids:, minimum_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceFetchUpcomingResponse::Minimum} for more details.
        #
        #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
        #
        #   @param minimum_amount [String] Minimum amount applied
      end

      class PaymentAttempt < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment attempt.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the payment attempt.
        #
        #   @return [String]
        required :amount, String

        # @!attribute created_at
        #   The time at which the payment attempt was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_provider
        #   The payment provider that attempted to collect the payment.
        #
        #   @return [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider, nil]
        required :payment_provider,
                 enum: -> { Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider },
                 nil?: true

        # @!attribute payment_provider_id
        #   The ID of the payment attempt in the payment provider.
        #
        #   @return [String, nil]
        required :payment_provider_id, String, nil?: true

        # @!attribute succeeded
        #   Whether the payment attempt succeeded.
        #
        #   @return [Boolean]
        required :succeeded, Orb::Internal::Type::Boolean

        # @!method initialize(id:, amount:, created_at:, payment_provider:, payment_provider_id:, succeeded:)
        #   @param id [String] The ID of the payment attempt.
        #
        #   @param amount [String] The amount of the payment attempt.
        #
        #   @param created_at [Time] The time at which the payment attempt was created.
        #
        #   @param payment_provider [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt::PaymentProvider, nil] The payment provider that attempted to collect the payment.
        #
        #   @param payment_provider_id [String, nil] The ID of the payment attempt in the payment provider.
        #
        #   @param succeeded [Boolean] Whether the payment attempt succeeded.

        # The payment provider that attempted to collect the payment.
        #
        # @see Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt#payment_provider
        module PaymentProvider
          extend Orb::Internal::Type::Enum

          STRIPE = :stripe

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#shipping_address
      class ShippingAddress < Orb::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute postal_code
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, postal_code:, state:)
        #   @param city [String, nil]
        #   @param country [String, nil]
        #   @param line1 [String, nil]
        #   @param line2 [String, nil]
        #   @param postal_code [String, nil]
        #   @param state [String, nil]
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#status
      module Status
        extend Orb::Internal::Type::Enum

        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void
        DRAFT = :draft

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::InvoiceFetchUpcomingResponse#subscription
      class Subscription < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String]
      end
    end
  end
end
