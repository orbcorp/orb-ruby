# frozen_string_literal: true

module Orb
  module Models
    class Invoice < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_due
      #   This is the final amount required to be charged to the customer and reflects the
      #     application of the customer balance to the `total` of the invoice.
      #
      #   @return [String]
      required :amount_due, String

      # @!attribute auto_collection
      #
      #   @return [Orb::Models::AutoCollectionModel]
      required :auto_collection, -> { Orb::Models::AutoCollectionModel }

      # @!attribute billing_address
      #
      #   @return [Orb::Models::AddressModel, nil]
      required :billing_address, -> { Orb::Models::AddressModel }, nil?: true

      # @!attribute created_at
      #   The creation time of the resource in Orb.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credit_notes
      #   A list of credit notes associated with the invoice
      #
      #   @return [Array<Orb::Models::CreditNoteSummaryModel>]
      required :credit_notes, -> { Orb::ArrayOf[Orb::Models::CreditNoteSummaryModel] }

      # @!attribute currency
      #   An ISO 4217 currency string or `credits`
      #
      #   @return [String]
      required :currency, String

      # @!attribute customer
      #
      #   @return [Orb::Models::CustomerMinifiedModel]
      required :customer, -> { Orb::Models::CustomerMinifiedModel }

      # @!attribute customer_balance_transactions
      #
      #   @return [Array<Orb::Models::CustomerBalanceTransactionModel>]
      required :customer_balance_transactions, -> { Orb::ArrayOf[Orb::Models::CustomerBalanceTransactionModel] }

      # @!attribute customer_tax_id
      #   Tax IDs are commonly required to be displayed on customer invoices, which are
      #     added to the headers of invoices.
      #
      #     ### Supported Tax ID Countries and Types
      #
      #     | Country              | Type         | Description                                                                                             |
      #     | -------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #     | Andorra              | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #     | Argentina            | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #     | Australia            | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #     | Australia            | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #     | Austria              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bahrain              | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #     | Belgium              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Bolivia              | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #     | Brazil               | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #     | Brazil               | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #     | Bulgaria             | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #     | Bulgaria             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Canada               | `ca_bn`      | Canadian BN                                                                                             |
      #     | Canada               | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #     | Canada               | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #     | Canada               | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #     | Canada               | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #     | Canada               | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #     | Chile                | `cl_tin`     | Chilean TIN                                                                                             |
      #     | China                | `cn_tin`     | Chinese Tax ID                                                                                          |
      #     | Colombia             | `co_nit`     | Colombian NIT Number                                                                                    |
      #     | Costa Rica           | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #     | Croatia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Cyprus               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Czech Republic       | `eu_vat`     | European VAT Number                                                                                     |
      #     | Denmark              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Dominican Republic   | `do_rcn`     | Dominican RCN Number                                                                                    |
      #     | Ecuador              | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #     | Egypt                | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #     | El Salvador          | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #     | Estonia              | `eu_vat`     | European VAT Number                                                                                     |
      #     | EU                   | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #     | Finland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | France               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Georgia              | `ge_vat`     | Georgian VAT                                                                                            |
      #     | Germany              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Greece               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hong Kong            | `hk_br`      | Hong Kong BR Number                                                                                     |
      #     | Hungary              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Hungary              | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #     | Iceland              | `is_vat`     | Icelandic VAT                                                                                           |
      #     | India                | `in_gst`     | Indian GST Number                                                                                       |
      #     | Indonesia            | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #     | Ireland              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Israel               | `il_vat`     | Israel VAT                                                                                              |
      #     | Italy                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Japan                | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #     | Japan                | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #     | Japan                | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #     | Kazakhstan           | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #     | Kenya                | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #     | Latvia               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Liechtenstein        | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #     | Lithuania            | `eu_vat`     | European VAT Number                                                                                     |
      #     | Luxembourg           | `eu_vat`     | European VAT Number                                                                                     |
      #     | Malaysia             | `my_frp`     | Malaysian FRP Number                                                                                    |
      #     | Malaysia             | `my_itn`     | Malaysian ITN                                                                                           |
      #     | Malaysia             | `my_sst`     | Malaysian SST Number                                                                                    |
      #     | Malta                | `eu_vat `    | European VAT Number                                                                                     |
      #     | Mexico               | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #     | Netherlands          | `eu_vat`     | European VAT Number                                                                                     |
      #     | New Zealand          | `nz_gst`     | New Zealand GST Number                                                                                  |
      #     | Nigeria              | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #     | Norway               | `no_vat`     | Norwegian VAT Number                                                                                    |
      #     | Norway               | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #     | Oman                 | `om_vat`     | Omani VAT Number                                                                                        |
      #     | Peru                 | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #     | Philippines          | `ph_tin `    | Philippines Tax Identification Number                                                                   |
      #     | Poland               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Portugal             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `eu_vat`     | European VAT Number                                                                                     |
      #     | Romania              | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #     | Russia               | `ru_inn`     | Russian INN                                                                                             |
      #     | Russia               | `ru_kpp`     | Russian KPP                                                                                             |
      #     | Saudi Arabia         | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #     | Serbia               | `rs_pib`     | Serbian PIB Number                                                                                      |
      #     | Singapore            | `sg_gst`     | Singaporean GST                                                                                         |
      #     | Singapore            | `sg_uen`     | Singaporean UEN                                                                                         |
      #     | Slovakia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `eu_vat`     | European VAT Number                                                                                     |
      #     | Slovenia             | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #     | South Africa         | `za_vat`     | South African VAT Number                                                                                |
      #     | South Korea          | `kr_brn`     | Korean BRN                                                                                              |
      #     | Spain                | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #     | Spain                | `eu_vat`     | European VAT Number                                                                                     |
      #     | Sweden               | `eu_vat`     | European VAT Number                                                                                     |
      #     | Switzerland          | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #     | Taiwan               | `tw_vat`     | Taiwanese VAT                                                                                           |
      #     | Thailand             | `th_vat`     | Thai VAT                                                                                                |
      #     | Turkey               | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #     | Ukraine              | `ua_vat`     | Ukrainian VAT                                                                                           |
      #     | United Arab Emirates | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #     | United Kingdom       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #     | United Kingdom       | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #     | United States        | `us_ein`     | United States EIN                                                                                       |
      #     | Uruguay              | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #     | Venezuela            | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #     | Vietnam              | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      #
      #   @return [Orb::Models::CustomerTaxIDModel, nil]
      required :customer_tax_id, -> { Orb::Models::CustomerTaxIDModel }, nil?: true

      # @!attribute discount
      #   This field is deprecated in favor of `discounts`. If a `discounts` list is
      #     provided, the first discount in the list will be returned. If the list is empty,
      #     `None` will be returned.
      #
      #   @return [Object]
      required :discount, Orb::Unknown

      # @!attribute discounts
      #
      #   @return [Array<Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount>]
      required :discounts, -> { Orb::ArrayOf[union: Orb::Models::InvoiceLevelDiscount] }

      # @!attribute due_date
      #   When the invoice payment is due. The due date is null if the invoice is not yet
      #     finalized.
      #
      #   @return [Time, nil]
      required :due_date, Time, nil?: true

      # @!attribute eligible_to_issue_at
      #   If the invoice has a status of `draft`, this will be the time that the invoice
      #     will be eligible to be issued, otherwise it will be `null`. If `auto-issue` is
      #     true, the invoice will automatically begin issuing at this time.
      #
      #   @return [Time, nil]
      required :eligible_to_issue_at, Time, nil?: true

      # @!attribute hosted_invoice_url
      #   A URL for the customer-facing invoice portal. This URL expires 30 days after the
      #     invoice's due date, or 60 days after being re-generated through the UI.
      #
      #   @return [String, nil]
      required :hosted_invoice_url, String, nil?: true

      # @!attribute invoice_date
      #   The scheduled date of the invoice
      #
      #   @return [Time]
      required :invoice_date, Time

      # @!attribute invoice_number
      #   Automatically generated invoice number to help track and reconcile invoices.
      #     Invoice numbers have a prefix such as `RFOBWG`. These can be sequential per
      #     account or customer.
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
      #   @return [Symbol, Orb::Models::Invoice::InvoiceSource]
      required :invoice_source, enum: -> { Orb::Models::Invoice::InvoiceSource }

      # @!attribute issue_failed_at
      #   If the invoice failed to issue, this will be the last time it failed to issue
      #     (even if it is now in a different state.)
      #
      #   @return [Time, nil]
      required :issue_failed_at, Time, nil?: true

      # @!attribute issued_at
      #   If the invoice has been issued, this will be the time it transitioned to
      #     `issued` (even if it is now in a different state.)
      #
      #   @return [Time, nil]
      required :issued_at, Time, nil?: true

      # @!attribute line_items
      #   The breakdown of prices in this invoice.
      #
      #   @return [Array<Orb::Models::InvoiceLineItemModel>]
      required :line_items, -> { Orb::ArrayOf[Orb::Models::InvoiceLineItemModel] }

      # @!attribute maximum
      #
      #   @return [Orb::Models::MaximumModel, nil]
      required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

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
      #     to an empty dictionary. Individual keys can be removed by setting the value to
      #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #     `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::HashOf[String]

      # @!attribute minimum
      #
      #   @return [Orb::Models::MinimumModel, nil]
      required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

      # @!attribute minimum_amount
      #
      #   @return [String, nil]
      required :minimum_amount, String, nil?: true

      # @!attribute paid_at
      #   If the invoice has a status of `paid`, this gives a timestamp when the invoice
      #     was paid.
      #
      #   @return [Time, nil]
      required :paid_at, Time, nil?: true

      # @!attribute payment_attempts
      #   A list of payment attempts associated with the invoice
      #
      #   @return [Array<Orb::Models::PaymentAttemptModel>]
      required :payment_attempts, -> { Orb::ArrayOf[Orb::Models::PaymentAttemptModel] }

      # @!attribute payment_failed_at
      #   If payment was attempted on this invoice but failed, this will be the time of
      #     the most recent attempt.
      #
      #   @return [Time, nil]
      required :payment_failed_at, Time, nil?: true

      # @!attribute payment_started_at
      #   If payment was attempted on this invoice, this will be the start time of the
      #     most recent attempt. This field is especially useful for delayed-notification
      #     payment mechanisms (like bank transfers), where payment can take 3 days or more.
      #
      #   @return [Time, nil]
      required :payment_started_at, Time, nil?: true

      # @!attribute scheduled_issue_at
      #   If the invoice is in draft, this timestamp will reflect when the invoice is
      #     scheduled to be issued.
      #
      #   @return [Time, nil]
      required :scheduled_issue_at, Time, nil?: true

      # @!attribute shipping_address
      #
      #   @return [Orb::Models::AddressModel, nil]
      required :shipping_address, -> { Orb::Models::AddressModel }, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::Invoice::Status]
      required :status, enum: -> { Orb::Models::Invoice::Status }

      # @!attribute subscription
      #
      #   @return [Orb::Models::SubscriptionMinifiedModel, nil]
      required :subscription, -> { Orb::Models::SubscriptionMinifiedModel }, nil?: true

      # @!attribute subtotal
      #   The total before any discounts and minimums are applied.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute sync_failed_at
      #   If the invoice failed to sync, this will be the last time an external invoicing
      #     provider sync was attempted. This field will always be `null` for invoices using
      #     Orb Invoicing.
      #
      #   @return [Time, nil]
      required :sync_failed_at, Time, nil?: true

      # @!attribute total
      #   The total after any minimums and discounts have been applied.
      #
      #   @return [String]
      required :total, String

      # @!attribute voided_at
      #   If the invoice has a status of `void`, this gives a timestamp when the invoice
      #     was voided.
      #
      #   @return [Time, nil]
      required :voided_at, Time, nil?: true

      # @!attribute will_auto_issue
      #   This is true if the invoice will be automatically issued in the future, and
      #     false otherwise.
      #
      #   @return [Boolean]
      required :will_auto_issue, Orb::BooleanModel

      # @!parse
      #   # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
      #   #   representing the request for payment for a single subscription. This includes a
      #   #   set of line items, which correspond to prices in the subscription's plan and can
      #   #   represent fixed recurring fees or usage-based fees. They are generated at the
      #   #   end of a billing period, or as the result of an action, such as a cancellation.
      #   #
      #   # @param id [String]
      #   # @param amount_due [String]
      #   # @param auto_collection [Orb::Models::AutoCollectionModel]
      #   # @param billing_address [Orb::Models::AddressModel, nil]
      #   # @param created_at [Time]
      #   # @param credit_notes [Array<Orb::Models::CreditNoteSummaryModel>]
      #   # @param currency [String]
      #   # @param customer [Orb::Models::CustomerMinifiedModel]
      #   # @param customer_balance_transactions [Array<Orb::Models::CustomerBalanceTransactionModel>]
      #   # @param customer_tax_id [Orb::Models::CustomerTaxIDModel, nil]
      #   # @param discount [Object]
      #   # @param discounts [Array<Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount>]
      #   # @param due_date [Time, nil]
      #   # @param eligible_to_issue_at [Time, nil]
      #   # @param hosted_invoice_url [String, nil]
      #   # @param invoice_date [Time]
      #   # @param invoice_number [String]
      #   # @param invoice_pdf [String, nil]
      #   # @param invoice_source [Symbol, Orb::Models::Invoice::InvoiceSource]
      #   # @param issue_failed_at [Time, nil]
      #   # @param issued_at [Time, nil]
      #   # @param line_items [Array<Orb::Models::InvoiceLineItemModel>]
      #   # @param maximum [Orb::Models::MaximumModel, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param memo [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param minimum [Orb::Models::MinimumModel, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param paid_at [Time, nil]
      #   # @param payment_attempts [Array<Orb::Models::PaymentAttemptModel>]
      #   # @param payment_failed_at [Time, nil]
      #   # @param payment_started_at [Time, nil]
      #   # @param scheduled_issue_at [Time, nil]
      #   # @param shipping_address [Orb::Models::AddressModel, nil]
      #   # @param status [Symbol, Orb::Models::Invoice::Status]
      #   # @param subscription [Orb::Models::SubscriptionMinifiedModel, nil]
      #   # @param subtotal [String]
      #   # @param sync_failed_at [Time, nil]
      #   # @param total [String]
      #   # @param voided_at [Time, nil]
      #   # @param will_auto_issue [Boolean]
      #   #
      #   def initialize(
      #     id:,
      #     amount_due:,
      #     auto_collection:,
      #     billing_address:,
      #     created_at:,
      #     credit_notes:,
      #     currency:,
      #     customer:,
      #     customer_balance_transactions:,
      #     customer_tax_id:,
      #     discount:,
      #     discounts:,
      #     due_date:,
      #     eligible_to_issue_at:,
      #     hosted_invoice_url:,
      #     invoice_date:,
      #     invoice_number:,
      #     invoice_pdf:,
      #     invoice_source:,
      #     issue_failed_at:,
      #     issued_at:,
      #     line_items:,
      #     maximum:,
      #     maximum_amount:,
      #     memo:,
      #     metadata:,
      #     minimum:,
      #     minimum_amount:,
      #     paid_at:,
      #     payment_attempts:,
      #     payment_failed_at:,
      #     payment_started_at:,
      #     scheduled_issue_at:,
      #     shipping_address:,
      #     status:,
      #     subscription:,
      #     subtotal:,
      #     sync_failed_at:,
      #     total:,
      #     voided_at:,
      #     will_auto_issue:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case invoice_source
      # in :subscription
      #   # ...
      # in :partial
      #   # ...
      # in :one_off
      #   # ...
      # end
      # ```
      class InvoiceSource < Orb::Enum
        SUBSCRIPTION = :subscription
        PARTIAL = :partial
        ONE_OFF = :one_off

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case status
      # in :issued
      #   # ...
      # in :paid
      #   # ...
      # in :synced
      #   # ...
      # in :void
      #   # ...
      # in :draft
      #   # ...
      # end
      # ```
      class Status < Orb::Enum
        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void
        DRAFT = :draft

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
