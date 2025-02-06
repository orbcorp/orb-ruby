# typed: strong

module Orb
  module Models
    class Customer < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[String]) }
      attr_accessor :additional_emails

      sig { returns(T::Boolean) }
      attr_accessor :auto_collection

      sig { returns(String) }
      attr_accessor :balance

      sig { returns(T.nilable(Orb::Models::Customer::BillingAddress)) }
      attr_accessor :billing_address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :email

      sig { returns(T::Boolean) }
      attr_accessor :email_delivery

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :exempt_from_automated_tax

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :payment_provider

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig { returns(T.nilable(String)) }
      attr_accessor :portal_url

      sig { returns(T.nilable(Orb::Models::Customer::ShippingAddress)) }
      attr_accessor :shipping_address

      sig { returns(T.nilable(Orb::Models::Customer::TaxID)) }
      attr_accessor :tax_id

      sig { returns(String) }
      attr_accessor :timezone

      sig { returns(T.nilable(Orb::Models::Customer::AccountingSyncConfiguration)) }
      attr_accessor :accounting_sync_configuration

      sig { returns(T.nilable(Orb::Models::Customer::ReportingConfiguration)) }
      attr_accessor :reporting_configuration

      sig do
        params(
          id: String,
          additional_emails: T::Array[String],
          auto_collection: T::Boolean,
          balance: String,
          billing_address: T.nilable(Orb::Models::Customer::BillingAddress),
          created_at: Time,
          currency: T.nilable(String),
          email: String,
          email_delivery: T::Boolean,
          exempt_from_automated_tax: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          portal_url: T.nilable(String),
          shipping_address: T.nilable(Orb::Models::Customer::ShippingAddress),
          tax_id: T.nilable(Orb::Models::Customer::TaxID),
          timezone: String,
          accounting_sync_configuration: T.nilable(Orb::Models::Customer::AccountingSyncConfiguration),
          reporting_configuration: T.nilable(Orb::Models::Customer::ReportingConfiguration)
        ).void
      end
      def initialize(
        id:,
        additional_emails:,
        auto_collection:,
        balance:,
        billing_address:,
        created_at:,
        currency:,
        email:,
        email_delivery:,
        exempt_from_automated_tax:,
        external_customer_id:,
        metadata:,
        name:,
        payment_provider:,
        payment_provider_id:,
        portal_url:,
        shipping_address:,
        tax_id:,
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
            billing_address: T.nilable(Orb::Models::Customer::BillingAddress),
            created_at: Time,
            currency: T.nilable(String),
            email: String,
            email_delivery: T::Boolean,
            exempt_from_automated_tax: T.nilable(T::Boolean),
            external_customer_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: String,
            payment_provider: T.nilable(Symbol),
            payment_provider_id: T.nilable(String),
            portal_url: T.nilable(String),
            shipping_address: T.nilable(Orb::Models::Customer::ShippingAddress),
            tax_id: T.nilable(Orb::Models::Customer::TaxID),
            timezone: String,
            accounting_sync_configuration: T.nilable(Orb::Models::Customer::AccountingSyncConfiguration),
            reporting_configuration: T.nilable(Orb::Models::Customer::ReportingConfiguration)
          }
        )
      end
      def to_hash
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

      class PaymentProvider < Orb::Enum
        abstract!

        QUICKBOOKS = T.let(:quickbooks, T.nilable(Symbol))
        BILL_COM = T.let(:"bill.com", T.nilable(Symbol))
        STRIPE_CHARGE = T.let(:stripe_charge, T.nilable(Symbol))
        STRIPE_INVOICE = T.let(:stripe_invoice, T.nilable(Symbol))
        NETSUITE = T.let(:netsuite, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
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

      class TaxID < Orb::BaseModel
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

      class AccountingSyncConfiguration < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider]) }
        attr_accessor :accounting_providers

        sig { returns(T::Boolean) }
        attr_accessor :excluded

        sig do
          params(
            accounting_providers: T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider],
            excluded: T::Boolean
          ).void
        end
        def initialize(accounting_providers:, excluded:)
        end

        sig do
          override.returns(
            {
              accounting_providers: T::Array[Orb::Models::Customer::AccountingSyncConfiguration::AccountingProvider], excluded: T::Boolean
            }
          )
        end
        def to_hash
        end

        class AccountingProvider < Orb::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :external_provider_id

          sig { returns(Symbol) }
          attr_accessor :provider_type

          sig { params(external_provider_id: T.nilable(String), provider_type: Symbol).void }
          def initialize(external_provider_id:, provider_type:)
          end

          sig { override.returns({external_provider_id: T.nilable(String), provider_type: Symbol}) }
          def to_hash
          end

          class ProviderType < Orb::Enum
            abstract!

            QUICKBOOKS = :quickbooks
            NETSUITE = :netsuite

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class ReportingConfiguration < Orb::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :exempt

        sig { params(exempt: T::Boolean).void }
        def initialize(exempt:)
        end

        sig { override.returns({exempt: T::Boolean}) }
        def to_hash
        end
      end
    end
  end
end
