# typed: strong

module Orb
  module Models
    class CustomerTaxIDModel < Orb::BaseModel
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
