# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingResponse < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :amount_due

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress)) }
      attr_accessor :billing_address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote]) }
      attr_accessor :credit_notes

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::Customer) }
      attr_accessor :customer

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction]) }
      attr_accessor :customer_balance_transactions

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID)) }
      attr_accessor :customer_tax_id

      sig { returns(T.anything) }
      attr_accessor :discount

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::PercentageDiscount,
            Orb::Models::AmountDiscount,
            Orb::Models::TrialDiscount
          )]
        )
      end
      attr_accessor :discounts

      sig { returns(T.nilable(Time)) }
      attr_accessor :due_date

      sig { returns(T.nilable(Time)) }
      attr_accessor :eligible_to_issue_at

      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_invoice_url

      sig { returns(String) }
      attr_accessor :invoice_number

      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_pdf

      sig { returns(Symbol) }
      attr_accessor :invoice_source

      sig { returns(T.nilable(Time)) }
      attr_accessor :issue_failed_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :issued_at

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem]) }
      attr_accessor :line_items

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum)) }
      attr_accessor :maximum

      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum)) }
      attr_accessor :minimum

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt]) }
      attr_accessor :payment_attempts

      sig { returns(T.nilable(Time)) }
      attr_accessor :payment_failed_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :payment_started_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_issue_at

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress)) }
      attr_accessor :shipping_address

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription)) }
      attr_accessor :subscription

      sig { returns(String) }
      attr_accessor :subtotal

      sig { returns(T.nilable(Time)) }
      attr_accessor :sync_failed_at

      sig { returns(Time) }
      attr_accessor :target_date

      sig { returns(String) }
      attr_accessor :total

      sig { returns(T.nilable(Time)) }
      attr_accessor :voided_at

      sig { returns(T::Boolean) }
      attr_accessor :will_auto_issue

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
          discounts: T::Array[T.any(
            Orb::Models::PercentageDiscount,
            Orb::Models::AmountDiscount,
            Orb::Models::TrialDiscount
          )],
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
        ).void
      end
      def initialize(
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
        override.returns(
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
            discounts: T::Array[T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::AmountDiscount,
              Orb::Models::TrialDiscount
            )],
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
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :enabled

        sig { returns(T.nilable(Time)) }
        attr_accessor :next_attempt_at

        sig { returns(T.nilable(Integer)) }
        attr_accessor :num_attempts

        sig { returns(T.nilable(Time)) }
        attr_accessor :previously_attempted_at

        sig do
          params(
            enabled: T.nilable(T::Boolean),
            next_attempt_at: T.nilable(Time),
            num_attempts: T.nilable(Integer),
            previously_attempted_at: T.nilable(Time)
          ).void
        end
        def initialize(enabled:, next_attempt_at:, num_attempts:, previously_attempted_at:)
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

      class BillingAddress < Orb::BaseModel
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
          ).void
        end
        def initialize(city:, country:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override.returns(
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
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :credit_note_number

        sig { returns(T.nilable(String)) }
        attr_accessor :memo

        sig { returns(String) }
        attr_accessor :reason

        sig { returns(String) }
        attr_accessor :total

        sig { returns(String) }
        attr_accessor :type

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
          ).void
        end
        def initialize(id:, credit_note_number:, memo:, reason:, total:, type:, voided_at:)
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

      class Customer < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig { params(id: String, external_customer_id: T.nilable(String)).void }
        def initialize(id:, external_customer_id:)
        end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class CustomerBalanceTransaction < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Symbol) }
        attr_accessor :action

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote))
        end
        attr_accessor :credit_note

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :ending_balance

        sig do
          returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice))
        end
        attr_accessor :invoice

        sig { returns(String) }
        attr_accessor :starting_balance

        sig { returns(Symbol) }
        attr_accessor :type

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
          ).void
        end
        def initialize(
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
          override.returns(
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

          APPLIED_TO_INVOICE = :applied_to_invoice
          MANUAL_ADJUSTMENT = :manual_adjustment
          PRORATED_REFUND = :prorated_refund
          REVERT_PRORATED_REFUND = :revert_prorated_refund
          RETURN_FROM_VOIDING = :return_from_voiding
          CREDIT_NOTE_APPLIED = :credit_note_applied
          CREDIT_NOTE_VOIDED = :credit_note_voided
          OVERPAYMENT_REFUND = :overpayment_refund

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditNote < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Invoice < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Type < Orb::Enum
          abstract!

          INCREMENT = :increment
          DECREMENT = :decrement

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CustomerTaxID < Orb::BaseModel
        sig { returns(Symbol) }
        attr_accessor :country

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { params(country: Symbol, type: Symbol, value: String).void }
        def initialize(country:, type:, value:)
        end

        sig { override.returns({country: Symbol, type: Symbol, value: String}) }
        def to_hash
        end

        class Country < Orb::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Orb::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class InvoiceSource < Orb::Enum
        abstract!

        SUBSCRIPTION = :subscription
        PARTIAL = :partial
        ONE_OFF = :one_off

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class LineItem < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :adjusted_subtotal

        sig do
          returns(
            T::Array[T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )]
          )
        end
        attr_accessor :adjustments

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :credits_applied

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(Time) }
        attr_accessor :end_date

        sig { returns(T.nilable(String)) }
        attr_accessor :grouping

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :partially_invoiced_amount

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
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
              )
            )
          )
        end
        attr_accessor :price

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          returns(
            T::Array[T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )]
          )
        end
        attr_accessor :sub_line_items

        sig { returns(String) }
        attr_accessor :subtotal

        sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]) }
        attr_accessor :tax_amounts

        sig do
          params(
            id: String,
            adjusted_subtotal: String,
            adjustments: T::Array[T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )],
            amount: String,
            credits_applied: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            end_date: Time,
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
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
              )
            ),
            quantity: Float,
            start_date: Time,
            sub_line_items: T::Array[T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )],
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]
          ).void
        end
        def initialize(
          id:,
          adjusted_subtotal:,
          adjustments:,
          amount:,
          credits_applied:,
          discount:,
          end_date:,
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
          tax_amounts:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              adjusted_subtotal: String,
              adjustments: T::Array[T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
              )],
              amount: String,
              credits_applied: String,
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::Discount::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              ),
              end_date: Time,
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
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
                )
              ),
              quantity: Float,
              start_date: Time,
              sub_line_items: T::Array[T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
              )],
              subtotal: String,
              tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]
            }
          )
        end
        def to_hash
        end

        class Adjustment < Orb::Union
          abstract!

          class MonetaryUsageDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(T.nilable(String)) }
            attr_accessor :reason

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
              ).void
            end
            def initialize(
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
              override.returns(
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
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount

            sig { returns(String) }
            attr_accessor :amount_discount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

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
              ).void
            end
            def initialize(
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
              override.returns(
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
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(Float) }
            attr_accessor :percentage_discount

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
              ).void
            end
            def initialize(
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
              override.returns(
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
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

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
              ).void
            end
            def initialize(
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
              override.returns(
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
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            sig { returns(String) }
            attr_accessor :maximum_amount

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
              ).void
            end
            def initialize(
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
              override.returns(
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

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
                ]
              ]
            )
          end
          private_class_method def self.variants
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class SubLineItem < Orb::Union
          abstract!

          class MatrixSubLineItem < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :amount

            sig do
              returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping))
            end
            attr_accessor :grouping

            sig do
              returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig)
            end
            attr_accessor :matrix_config

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping),
                matrix_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig,
                name: String,
                quantity: Float,
                type: Symbol
              ).void
            end
            def initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
            end

            sig do
              override.returns(
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
              attr_accessor :key

              sig { returns(T.nilable(String)) }
              attr_accessor :value

              sig { params(key: String, value: T.nilable(String)).void }
              def initialize(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimension_values

              sig { params(dimension_values: T::Array[T.nilable(String)]).void }
              def initialize(dimension_values:)
              end

              sig { override.returns({dimension_values: T::Array[T.nilable(String)]}) }
              def to_hash
              end
            end
          end

          class TierSubLineItem < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :amount

            sig do
              returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping))
            end
            attr_accessor :grouping

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig do
              returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig)
            end
            attr_accessor :tier_config

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping),
                name: String,
                quantity: Float,
                tier_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig,
                type: Symbol
              ).void
            end
            def initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
            end

            sig do
              override.returns(
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
              attr_accessor :key

              sig { returns(T.nilable(String)) }
              attr_accessor :value

              sig { params(key: String, value: T.nilable(String)).void }
              def initialize(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end

            class TierConfig < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :first_unit

              sig { returns(T.nilable(Float)) }
              attr_accessor :last_unit

              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(first_unit: Float, last_unit: T.nilable(Float), unit_amount: String).void }
              def initialize(first_unit:, last_unit:, unit_amount:)
              end

              sig { override.returns({first_unit: Float, last_unit: T.nilable(Float), unit_amount: String}) }
              def to_hash
              end
            end
          end

          class OtherSubLineItem < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :amount

            sig do
              returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping))
            end
            attr_accessor :grouping

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :quantity

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping),
                name: String,
                quantity: Float,
                type: Symbol
              ).void
            end
            def initialize(amount:, grouping:, name:, quantity:, type: :"'null'")
            end

            sig do
              override.returns(
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
              attr_accessor :key

              sig { returns(T.nilable(String)) }
              attr_accessor :value

              sig { params(key: String, value: T.nilable(String)).void }
              def initialize(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem
                ],
                [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem],
                [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem]
              ]
            )
          end
          private_class_method def self.variants
          end
        end

        class TaxAmount < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :tax_rate_description

          sig { returns(T.nilable(String)) }
          attr_accessor :tax_rate_percentage

          sig do
            params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String)).void
          end
          def initialize(amount:, tax_rate_description:, tax_rate_percentage:)
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
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(String) }
        attr_accessor :maximum_amount

        sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
        def initialize(applies_to_price_ids:, maximum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash
        end
      end

      class Minimum < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(String) }
        attr_accessor :minimum_amount

        sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
        def initialize(applies_to_price_ids:, minimum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash
        end
      end

      class PaymentAttempt < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :payment_provider

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_provider_id

        sig { returns(T::Boolean) }
        attr_accessor :succeeded

        sig do
          params(
            id: String,
            amount: String,
            created_at: Time,
            payment_provider: T.nilable(Symbol),
            payment_provider_id: T.nilable(String),
            succeeded: T::Boolean
          ).void
        end
        def initialize(id:, amount:, created_at:, payment_provider:, payment_provider_id:, succeeded:)
        end

        sig do
          override.returns(
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

        class PaymentProvider < Orb::Enum
          abstract!

          STRIPE = T.let(:stripe, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class ShippingAddress < Orb::BaseModel
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
          ).void
        end
        def initialize(city:, country:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override.returns(
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

        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void
        DRAFT = :draft

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Subscription < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end
    end
  end
end
