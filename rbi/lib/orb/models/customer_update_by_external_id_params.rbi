# typed: strong

module Orb
  module Models
    class CustomerUpdateByExternalIDParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration)) }
      attr_accessor :accounting_sync_configuration

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :additional_emails

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress)) }
      attr_accessor :billing_address

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :email_delivery

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :payment_provider

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_provider_id

      sig { returns(T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration)) }
      attr_accessor :reporting_configuration

      sig { returns(T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress)) }
      attr_accessor :shipping_address

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration
            )
          )
        )
      end
      attr_accessor :tax_configuration

      sig { returns(T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::TaxID)) }
      attr_accessor :tax_id

      sig do
        params(
          accounting_sync_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration),
          additional_emails: T.nilable(T::Array[String]),
          auto_collection: T.nilable(T::Boolean),
          billing_address: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress),
          currency: T.nilable(String),
          email: T.nilable(String),
          email_delivery: T.nilable(T::Boolean),
          external_customer_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          reporting_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration),
          shipping_address: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress),
          tax_configuration: T.nilable(
            T.any(
              Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration
            )
          ),
          tax_id: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::TaxID),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        accounting_sync_configuration: nil,
        additional_emails: nil,
        auto_collection: nil,
        billing_address: nil,
        currency: nil,
        email: nil,
        email_delivery: nil,
        external_customer_id: nil,
        metadata: nil,
        name: nil,
        payment_provider: nil,
        payment_provider_id: nil,
        reporting_configuration: nil,
        shipping_address: nil,
        tax_configuration: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            accounting_sync_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration),
            additional_emails: T.nilable(T::Array[String]),
            auto_collection: T.nilable(T::Boolean),
            billing_address: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::BillingAddress),
            currency: T.nilable(String),
            email: T.nilable(String),
            email_delivery: T.nilable(T::Boolean),
            external_customer_id: T.nilable(String),
            metadata: T.nilable(
              T::Hash[Symbol,
                      T.nilable(String)]
            ),
            name: T.nilable(String),
            payment_provider: T.nilable(Symbol),
            payment_provider_id: T.nilable(String),
            reporting_configuration: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ReportingConfiguration),
            shipping_address: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::ShippingAddress),
            tax_configuration: T.nilable(
              T.any(
                Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration, Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration
              )
            ),
            tax_id: T.nilable(Orb::Models::CustomerUpdateByExternalIDParams::TaxID),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AccountingSyncConfiguration < Orb::BaseModel
        sig do
          returns(T.nilable(T::Array[Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider]))
        end
        attr_accessor :accounting_providers

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :excluded

        sig do
          params(
            accounting_providers: T.nilable(T::Array[Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider]),
            excluded: T.nilable(T::Boolean)
          ).void
        end
        def initialize(accounting_providers: nil, excluded: nil)
        end

        sig do
          override.returns(
            {
              accounting_providers: T.nilable(T::Array[Orb::Models::CustomerUpdateByExternalIDParams::AccountingSyncConfiguration::AccountingProvider]), excluded: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        class AccountingProvider < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :external_provider_id

          sig { returns(String) }
          attr_accessor :provider_type

          sig { params(external_provider_id: String, provider_type: String).void }
          def initialize(external_provider_id:, provider_type:)
          end

          sig { override.returns({external_provider_id: String, provider_type: String}) }
          def to_hash
          end
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
        def initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
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
        def initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
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

      class TaxConfiguration < Orb::Union
        abstract!

        class NewAvalaraTaxConfiguration < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt

          sig { returns(Symbol) }
          attr_accessor :tax_provider

          sig { returns(T.nilable(String)) }
          attr_accessor :tax_exemption_code

          sig do
            params(tax_exempt: T::Boolean, tax_exemption_code: T.nilable(String), tax_provider: Symbol).void
          end
          def initialize(tax_exempt:, tax_exemption_code: nil, tax_provider: :avalara)
          end

          sig do
            override.returns(
              {
                tax_exempt: T::Boolean,
                tax_provider: Symbol,
                tax_exemption_code: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class NewTaxJarConfiguration < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt

          sig { returns(Symbol) }
          attr_accessor :tax_provider

          sig { params(tax_exempt: T::Boolean, tax_provider: Symbol).void }
          def initialize(tax_exempt:, tax_provider: :taxjar)
          end

          sig { override.returns({tax_exempt: T::Boolean, tax_provider: Symbol}) }
          def to_hash
          end
        end

        sig do
          override.returns(
            [
              [
                Symbol,
                Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewAvalaraTaxConfiguration
              ],
              [
                Symbol,
                Orb::Models::CustomerUpdateByExternalIDParams::TaxConfiguration::NewTaxJarConfiguration
              ]
            ]
          )
        end
        private_class_method def self.variants
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
    end
  end
end
