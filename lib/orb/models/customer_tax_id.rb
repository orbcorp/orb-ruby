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
      #   | Country                | Type         | Description                                                                                             |
      #   | ---------------------- | ------------ | ------------------------------------------------------------------------------------------------------- |
      #   | Albania                | `al_tin`     | Albania Tax Identification Number                                                                       |
      #   | Andorra                | `ad_nrt`     | Andorran NRT Number                                                                                     |
      #   | Angola                 | `ao_tin`     | Angola Tax Identification Number                                                                        |
      #   | Argentina              | `ar_cuit`    | Argentinian Tax ID Number                                                                               |
      #   | Armenia                | `am_tin`     | Armenia Tax Identification Number                                                                       |
      #   | Aruba                  | `aw_tin`     | Aruba Tax Identification Number                                                                         |
      #   | Australia              | `au_abn`     | Australian Business Number (AU ABN)                                                                     |
      #   | Australia              | `au_arn`     | Australian Taxation Office Reference Number                                                             |
      #   | Austria                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Azerbaijan             | `az_tin`     | Azerbaijan Tax Identification Number                                                                    |
      #   | Bahamas                | `bs_tin`     | Bahamas Tax Identification Number                                                                       |
      #   | Bahrain                | `bh_vat`     | Bahraini VAT Number                                                                                     |
      #   | Bangladesh             | `bd_bin`     | Bangladesh Business Identification Number                                                               |
      #   | Barbados               | `bb_tin`     | Barbados Tax Identification Number                                                                      |
      #   | Belarus                | `by_tin`     | Belarus TIN Number                                                                                      |
      #   | Belgium                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Benin                  | `bj_ifu`     | Benin Tax Identification Number (Identifiant Fiscal Unique)                                             |
      #   | Bolivia                | `bo_tin`     | Bolivian Tax ID                                                                                         |
      #   | Bosnia and Herzegovina | `ba_tin`     | Bosnia and Herzegovina Tax Identification Number                                                        |
      #   | Brazil                 | `br_cnpj`    | Brazilian CNPJ Number                                                                                   |
      #   | Brazil                 | `br_cpf`     | Brazilian CPF Number                                                                                    |
      #   | Bulgaria               | `bg_uic`     | Bulgaria Unified Identification Code                                                                    |
      #   | Bulgaria               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Burkina Faso           | `bf_ifu`     | Burkina Faso Tax Identification Number (Numéro d'Identifiant Fiscal Unique)                             |
      #   | Cambodia               | `kh_tin`     | Cambodia Tax Identification Number                                                                      |
      #   | Cameroon               | `cm_niu`     | Cameroon Tax Identification Number (Numéro d'Identifiant fiscal Unique)                                 |
      #   | Canada                 | `ca_bn`      | Canadian BN                                                                                             |
      #   | Canada                 | `ca_gst_hst` | Canadian GST/HST Number                                                                                 |
      #   | Canada                 | `ca_pst_bc`  | Canadian PST Number (British Columbia)                                                                  |
      #   | Canada                 | `ca_pst_mb`  | Canadian PST Number (Manitoba)                                                                          |
      #   | Canada                 | `ca_pst_sk`  | Canadian PST Number (Saskatchewan)                                                                      |
      #   | Canada                 | `ca_qst`     | Canadian QST Number (Québec)                                                                            |
      #   | Cape Verde             | `cv_nif`     | Cape Verde Tax Identification Number (Número de Identificação Fiscal)                                   |
      #   | Chile                  | `cl_tin`     | Chilean TIN                                                                                             |
      #   | China                  | `cn_tin`     | Chinese Tax ID                                                                                          |
      #   | Colombia               | `co_nit`     | Colombian NIT Number                                                                                    |
      #   | Congo-Kinshasa         | `cd_nif`     | Congo (DR) Tax Identification Number (Número de Identificação Fiscal)                                   |
      #   | Costa Rica             | `cr_tin`     | Costa Rican Tax ID                                                                                      |
      #   | Croatia                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Croatia                | `hr_oib`     | Croatian Personal Identification Number (OIB)                                                           |
      #   | Cyprus                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Czech Republic         | `eu_vat`     | European VAT Number                                                                                     |
      #   | Denmark                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Dominican Republic     | `do_rcn`     | Dominican RCN Number                                                                                    |
      #   | Ecuador                | `ec_ruc`     | Ecuadorian RUC Number                                                                                   |
      #   | Egypt                  | `eg_tin`     | Egyptian Tax Identification Number                                                                      |
      #   | El Salvador            | `sv_nit`     | El Salvadorian NIT Number                                                                               |
      #   | Estonia                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Ethiopia               | `et_tin`     | Ethiopia Tax Identification Number                                                                      |
      #   | European Union         | `eu_oss_vat` | European One Stop Shop VAT Number for non-Union scheme                                                  |
      #   | Finland                | `eu_vat`     | European VAT Number                                                                                     |
      #   | France                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Georgia                | `ge_vat`     | Georgian VAT                                                                                            |
      #   | Germany                | `de_stn`     | German Tax Number (Steuernummer)                                                                        |
      #   | Germany                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Greece                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Guinea                 | `gn_nif`     | Guinea Tax Identification Number (Número de Identificação Fiscal)                                       |
      #   | Hong Kong              | `hk_br`      | Hong Kong BR Number                                                                                     |
      #   | Hungary                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Hungary                | `hu_tin`     | Hungary Tax Number (adószám)                                                                            |
      #   | Iceland                | `is_vat`     | Icelandic VAT                                                                                           |
      #   | India                  | `in_gst`     | Indian GST Number                                                                                       |
      #   | Indonesia              | `id_npwp`    | Indonesian NPWP Number                                                                                  |
      #   | Ireland                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Israel                 | `il_vat`     | Israel VAT                                                                                              |
      #   | Italy                  | `eu_vat`     | European VAT Number                                                                                     |
      #   | Japan                  | `jp_cn`      | Japanese Corporate Number (_Hōjin Bangō_)                                                               |
      #   | Japan                  | `jp_rn`      | Japanese Registered Foreign Businesses' Registration Number (_Tōroku Kokugai Jigyōsha no Tōroku Bangō_) |
      #   | Japan                  | `jp_trn`     | Japanese Tax Registration Number (_Tōroku Bangō_)                                                       |
      #   | Kazakhstan             | `kz_bin`     | Kazakhstani Business Identification Number                                                              |
      #   | Kenya                  | `ke_pin`     | Kenya Revenue Authority Personal Identification Number                                                  |
      #   | Kyrgyzstan             | `kg_tin`     | Kyrgyzstan Tax Identification Number                                                                    |
      #   | Laos                   | `la_tin`     | Laos Tax Identification Number                                                                          |
      #   | Latvia                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Liechtenstein          | `li_uid`     | Liechtensteinian UID Number                                                                             |
      #   | Liechtenstein          | `li_vat`     | Liechtenstein VAT Number                                                                                |
      #   | Lithuania              | `eu_vat`     | European VAT Number                                                                                     |
      #   | Luxembourg             | `eu_vat`     | European VAT Number                                                                                     |
      #   | Malaysia               | `my_frp`     | Malaysian FRP Number                                                                                    |
      #   | Malaysia               | `my_itn`     | Malaysian ITN                                                                                           |
      #   | Malaysia               | `my_sst`     | Malaysian SST Number                                                                                    |
      #   | Malta                  | `eu_vat`     | European VAT Number                                                                                     |
      #   | Mauritania             | `mr_nif`     | Mauritania Tax Identification Number (Número de Identificação Fiscal)                                   |
      #   | Mexico                 | `mx_rfc`     | Mexican RFC Number                                                                                      |
      #   | Moldova                | `md_vat`     | Moldova VAT Number                                                                                      |
      #   | Montenegro             | `me_pib`     | Montenegro PIB Number                                                                                   |
      #   | Morocco                | `ma_vat`     | Morocco VAT Number                                                                                      |
      #   | Nepal                  | `np_pan`     | Nepal PAN Number                                                                                        |
      #   | Netherlands            | `eu_vat`     | European VAT Number                                                                                     |
      #   | New Zealand            | `nz_gst`     | New Zealand GST Number                                                                                  |
      #   | Nigeria                | `ng_tin`     | Nigerian Tax Identification Number                                                                      |
      #   | North Macedonia        | `mk_vat`     | North Macedonia VAT Number                                                                              |
      #   | Northern Ireland       | `eu_vat`     | Northern Ireland VAT Number                                                                             |
      #   | Norway                 | `no_vat`     | Norwegian VAT Number                                                                                    |
      #   | Norway                 | `no_voec`    | Norwegian VAT on e-commerce Number                                                                      |
      #   | Oman                   | `om_vat`     | Omani VAT Number                                                                                        |
      #   | Peru                   | `pe_ruc`     | Peruvian RUC Number                                                                                     |
      #   | Philippines            | `ph_tin`     | Philippines Tax Identification Number                                                                   |
      #   | Poland                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Portugal               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Romania                | `eu_vat`     | European VAT Number                                                                                     |
      #   | Romania                | `ro_tin`     | Romanian Tax ID Number                                                                                  |
      #   | Russia                 | `ru_inn`     | Russian INN                                                                                             |
      #   | Russia                 | `ru_kpp`     | Russian KPP                                                                                             |
      #   | Saudi Arabia           | `sa_vat`     | Saudi Arabia VAT                                                                                        |
      #   | Senegal                | `sn_ninea`   | Senegal NINEA Number                                                                                    |
      #   | Serbia                 | `rs_pib`     | Serbian PIB Number                                                                                      |
      #   | Singapore              | `sg_gst`     | Singaporean GST                                                                                         |
      #   | Singapore              | `sg_uen`     | Singaporean UEN                                                                                         |
      #   | Slovakia               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Slovenia               | `eu_vat`     | European VAT Number                                                                                     |
      #   | Slovenia               | `si_tin`     | Slovenia Tax Number (davčna številka)                                                                   |
      #   | South Africa           | `za_vat`     | South African VAT Number                                                                                |
      #   | South Korea            | `kr_brn`     | Korean BRN                                                                                              |
      #   | Spain                  | `es_cif`     | Spanish NIF Number (previously Spanish CIF Number)                                                      |
      #   | Spain                  | `eu_vat`     | European VAT Number                                                                                     |
      #   | Suriname               | `sr_fin`     | Suriname FIN Number                                                                                     |
      #   | Sweden                 | `eu_vat`     | European VAT Number                                                                                     |
      #   | Switzerland            | `ch_uid`     | Switzerland UID Number                                                                                  |
      #   | Switzerland            | `ch_vat`     | Switzerland VAT Number                                                                                  |
      #   | Taiwan                 | `tw_vat`     | Taiwanese VAT                                                                                           |
      #   | Tajikistan             | `tj_tin`     | Tajikistan Tax Identification Number                                                                    |
      #   | Tanzania               | `tz_vat`     | Tanzania VAT Number                                                                                     |
      #   | Thailand               | `th_vat`     | Thai VAT                                                                                                |
      #   | Turkey                 | `tr_tin`     | Turkish Tax Identification Number                                                                       |
      #   | Uganda                 | `ug_tin`     | Uganda Tax Identification Number                                                                        |
      #   | Ukraine                | `ua_vat`     | Ukrainian VAT                                                                                           |
      #   | United Arab Emirates   | `ae_trn`     | United Arab Emirates TRN                                                                                |
      #   | United Kingdom         | `gb_vat`     | United Kingdom VAT Number                                                                               |
      #   | United States          | `us_ein`     | United States EIN                                                                                       |
      #   | Uruguay                | `uy_ruc`     | Uruguayan RUC Number                                                                                    |
      #   | Uzbekistan             | `uz_tin`     | Uzbekistan TIN Number                                                                                   |
      #   | Uzbekistan             | `uz_vat`     | Uzbekistan VAT Number                                                                                   |
      #   | Venezuela              | `ve_rif`     | Venezuelan RIF Number                                                                                   |
      #   | Vietnam                | `vn_tin`     | Vietnamese Tax ID Number                                                                                |
      #   | Zambia                 | `zm_tin`     | Zambia Tax Identification Number                                                                        |
      #   | Zimbabwe               | `zw_tin`     | Zimbabwe Tax Identification Number                                                                      |
      #
      #   @param country [Symbol, Orb::Models::CustomerTaxID::Country]
      #   @param type [Symbol, Orb::Models::CustomerTaxID::Type]
      #   @param value [String]

      # @see Orb::Models::CustomerTaxID#country
      module Country
        extend Orb::Internal::Type::Enum

        AD = :AD
        AE = :AE
        AL = :AL
        AM = :AM
        AO = :AO
        AR = :AR
        AT = :AT
        AU = :AU
        AW = :AW
        AZ = :AZ
        BA = :BA
        BB = :BB
        BD = :BD
        BE = :BE
        BF = :BF
        BG = :BG
        BH = :BH
        BJ = :BJ
        BO = :BO
        BR = :BR
        BS = :BS
        BY = :BY
        CA = :CA
        CD = :CD
        CH = :CH
        CL = :CL
        CM = :CM
        CN = :CN
        CO = :CO
        CR = :CR
        CV = :CV
        DE = :DE
        CY = :CY
        CZ = :CZ
        DK = :DK
        DO = :DO
        EC = :EC
        EE = :EE
        EG = :EG
        ES = :ES
        ET = :ET
        EU = :EU
        FI = :FI
        FR = :FR
        GB = :GB
        GE = :GE
        GN = :GN
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
        KG = :KG
        KH = :KH
        KR = :KR
        KZ = :KZ
        LA = :LA
        LI = :LI
        LT = :LT
        LU = :LU
        LV = :LV
        MA = :MA
        MD = :MD
        ME = :ME
        MK = :MK
        MR = :MR
        MT = :MT
        MX = :MX
        MY = :MY
        NG = :NG
        NL = :NL
        NO = :NO
        NP = :NP
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
        SN = :SN
        SR = :SR
        SV = :SV
        TH = :TH
        TJ = :TJ
        TR = :TR
        TW = :TW
        TZ = :TZ
        UA = :UA
        UG = :UG
        US = :US
        UY = :UY
        UZ = :UZ
        VE = :VE
        VN = :VN
        ZA = :ZA
        ZM = :ZM
        ZW = :ZW

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::CustomerTaxID#type
      module Type
        extend Orb::Internal::Type::Enum

        AD_NRT = :ad_nrt
        AE_TRN = :ae_trn
        AL_TIN = :al_tin
        AM_TIN = :am_tin
        AO_TIN = :ao_tin
        AR_CUIT = :ar_cuit
        EU_VAT = :eu_vat
        AU_ABN = :au_abn
        AU_ARN = :au_arn
        AW_TIN = :aw_tin
        AZ_TIN = :az_tin
        BA_TIN = :ba_tin
        BB_TIN = :bb_tin
        BD_BIN = :bd_bin
        BF_IFU = :bf_ifu
        BG_UIC = :bg_uic
        BH_VAT = :bh_vat
        BJ_IFU = :bj_ifu
        BO_TIN = :bo_tin
        BR_CNPJ = :br_cnpj
        BR_CPF = :br_cpf
        BS_TIN = :bs_tin
        BY_TIN = :by_tin
        CA_BN = :ca_bn
        CA_GST_HST = :ca_gst_hst
        CA_PST_BC = :ca_pst_bc
        CA_PST_MB = :ca_pst_mb
        CA_PST_SK = :ca_pst_sk
        CA_QST = :ca_qst
        CD_NIF = :cd_nif
        CH_UID = :ch_uid
        CH_VAT = :ch_vat
        CL_TIN = :cl_tin
        CM_NIU = :cm_niu
        CN_TIN = :cn_tin
        CO_NIT = :co_nit
        CR_TIN = :cr_tin
        CV_NIF = :cv_nif
        DE_STN = :de_stn
        DO_RCN = :do_rcn
        EC_RUC = :ec_ruc
        EG_TIN = :eg_tin
        ES_CIF = :es_cif
        ET_TIN = :et_tin
        EU_OSS_VAT = :eu_oss_vat
        GB_VAT = :gb_vat
        GE_VAT = :ge_vat
        GN_NIF = :gn_nif
        HK_BR = :hk_br
        HR_OIB = :hr_oib
        HU_TIN = :hu_tin
        ID_NPWP = :id_npwp
        IL_VAT = :il_vat
        IN_GST = :in_gst
        IS_VAT = :is_vat
        JP_CN = :jp_cn
        JP_RN = :jp_rn
        JP_TRN = :jp_trn
        KE_PIN = :ke_pin
        KG_TIN = :kg_tin
        KH_TIN = :kh_tin
        KR_BRN = :kr_brn
        KZ_BIN = :kz_bin
        LA_TIN = :la_tin
        LI_UID = :li_uid
        LI_VAT = :li_vat
        MA_VAT = :ma_vat
        MD_VAT = :md_vat
        ME_PIB = :me_pib
        MK_VAT = :mk_vat
        MR_NIF = :mr_nif
        MX_RFC = :mx_rfc
        MY_FRP = :my_frp
        MY_ITN = :my_itn
        MY_SST = :my_sst
        NG_TIN = :ng_tin
        NO_VAT = :no_vat
        NO_VOEC = :no_voec
        NP_PAN = :np_pan
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
        SN_NINEA = :sn_ninea
        SR_FIN = :sr_fin
        SV_NIT = :sv_nit
        TH_VAT = :th_vat
        TJ_TIN = :tj_tin
        TR_TIN = :tr_tin
        TW_VAT = :tw_vat
        TZ_VAT = :tz_vat
        UA_VAT = :ua_vat
        UG_TIN = :ug_tin
        US_EIN = :us_ein
        UY_RUC = :uy_ruc
        UZ_TIN = :uz_tin
        UZ_VAT = :uz_vat
        VE_RIF = :ve_rif
        VN_TIN = :vn_tin
        ZA_VAT = :za_vat
        ZM_TIN = :zm_tin
        ZW_TIN = :zw_tin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
