# frozen_string_literal: true

module Orb
  module Models
    class CustomerTaxID < Orb::Internal::Type::BaseModel
      # @!attribute country
      #
      #   @return [Symbol, Orb::Models::CustomerTaxID::Country]
      required :country, enum: -> { Orb::CustomerTaxID::Country }

      # @!attribute type
      #
      #   @return [Symbol, Orb::Models::CustomerTaxID::Type]
      required :type, enum: -> { Orb::CustomerTaxID::Type }

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
      #   @param country [Symbol, Orb::Models::CustomerTaxID::Country]
      #   @param type [Symbol, Orb::Models::CustomerTaxID::Type]
      #   @param value [String]

      # @see Orb::Models::CustomerTaxID#country
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

      # @see Orb::Models::CustomerTaxID#type
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
  end
end
