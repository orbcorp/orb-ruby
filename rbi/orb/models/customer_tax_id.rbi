# typed: strong

module Orb
  module Models
    class CustomerTaxID < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::CustomerTaxID, Orb::Internal::AnyHash) }

      sig { returns(Orb::CustomerTaxID::Country::OrSymbol) }
      attr_accessor :country

      sig { returns(Orb::CustomerTaxID::Type::OrSymbol) }
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
          country: Orb::CustomerTaxID::Country::OrSymbol,
          type: Orb::CustomerTaxID::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(country:, type:, value:)
      end

      sig do
        override.returns(
          {
            country: Orb::CustomerTaxID::Country::OrSymbol,
            type: Orb::CustomerTaxID::Type::OrSymbol,
            value: String
          }
        )
      end
      def to_hash
      end

      module Country
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::CustomerTaxID::Country) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD = T.let(:AD, Orb::CustomerTaxID::Country::TaggedSymbol)
        AE = T.let(:AE, Orb::CustomerTaxID::Country::TaggedSymbol)
        AR = T.let(:AR, Orb::CustomerTaxID::Country::TaggedSymbol)
        AT = T.let(:AT, Orb::CustomerTaxID::Country::TaggedSymbol)
        AU = T.let(:AU, Orb::CustomerTaxID::Country::TaggedSymbol)
        BE = T.let(:BE, Orb::CustomerTaxID::Country::TaggedSymbol)
        BG = T.let(:BG, Orb::CustomerTaxID::Country::TaggedSymbol)
        BH = T.let(:BH, Orb::CustomerTaxID::Country::TaggedSymbol)
        BO = T.let(:BO, Orb::CustomerTaxID::Country::TaggedSymbol)
        BR = T.let(:BR, Orb::CustomerTaxID::Country::TaggedSymbol)
        CA = T.let(:CA, Orb::CustomerTaxID::Country::TaggedSymbol)
        CH = T.let(:CH, Orb::CustomerTaxID::Country::TaggedSymbol)
        CL = T.let(:CL, Orb::CustomerTaxID::Country::TaggedSymbol)
        CN = T.let(:CN, Orb::CustomerTaxID::Country::TaggedSymbol)
        CO = T.let(:CO, Orb::CustomerTaxID::Country::TaggedSymbol)
        CR = T.let(:CR, Orb::CustomerTaxID::Country::TaggedSymbol)
        CY = T.let(:CY, Orb::CustomerTaxID::Country::TaggedSymbol)
        CZ = T.let(:CZ, Orb::CustomerTaxID::Country::TaggedSymbol)
        DE = T.let(:DE, Orb::CustomerTaxID::Country::TaggedSymbol)
        DK = T.let(:DK, Orb::CustomerTaxID::Country::TaggedSymbol)
        EE = T.let(:EE, Orb::CustomerTaxID::Country::TaggedSymbol)
        DO = T.let(:DO, Orb::CustomerTaxID::Country::TaggedSymbol)
        EC = T.let(:EC, Orb::CustomerTaxID::Country::TaggedSymbol)
        EG = T.let(:EG, Orb::CustomerTaxID::Country::TaggedSymbol)
        ES = T.let(:ES, Orb::CustomerTaxID::Country::TaggedSymbol)
        EU = T.let(:EU, Orb::CustomerTaxID::Country::TaggedSymbol)
        FI = T.let(:FI, Orb::CustomerTaxID::Country::TaggedSymbol)
        FR = T.let(:FR, Orb::CustomerTaxID::Country::TaggedSymbol)
        GB = T.let(:GB, Orb::CustomerTaxID::Country::TaggedSymbol)
        GE = T.let(:GE, Orb::CustomerTaxID::Country::TaggedSymbol)
        GR = T.let(:GR, Orb::CustomerTaxID::Country::TaggedSymbol)
        HK = T.let(:HK, Orb::CustomerTaxID::Country::TaggedSymbol)
        HR = T.let(:HR, Orb::CustomerTaxID::Country::TaggedSymbol)
        HU = T.let(:HU, Orb::CustomerTaxID::Country::TaggedSymbol)
        ID = T.let(:ID, Orb::CustomerTaxID::Country::TaggedSymbol)
        IE = T.let(:IE, Orb::CustomerTaxID::Country::TaggedSymbol)
        IL = T.let(:IL, Orb::CustomerTaxID::Country::TaggedSymbol)
        IN = T.let(:IN, Orb::CustomerTaxID::Country::TaggedSymbol)
        IS = T.let(:IS, Orb::CustomerTaxID::Country::TaggedSymbol)
        IT = T.let(:IT, Orb::CustomerTaxID::Country::TaggedSymbol)
        JP = T.let(:JP, Orb::CustomerTaxID::Country::TaggedSymbol)
        KE = T.let(:KE, Orb::CustomerTaxID::Country::TaggedSymbol)
        KR = T.let(:KR, Orb::CustomerTaxID::Country::TaggedSymbol)
        KZ = T.let(:KZ, Orb::CustomerTaxID::Country::TaggedSymbol)
        LI = T.let(:LI, Orb::CustomerTaxID::Country::TaggedSymbol)
        LT = T.let(:LT, Orb::CustomerTaxID::Country::TaggedSymbol)
        LU = T.let(:LU, Orb::CustomerTaxID::Country::TaggedSymbol)
        LV = T.let(:LV, Orb::CustomerTaxID::Country::TaggedSymbol)
        MT = T.let(:MT, Orb::CustomerTaxID::Country::TaggedSymbol)
        MX = T.let(:MX, Orb::CustomerTaxID::Country::TaggedSymbol)
        MY = T.let(:MY, Orb::CustomerTaxID::Country::TaggedSymbol)
        NG = T.let(:NG, Orb::CustomerTaxID::Country::TaggedSymbol)
        NL = T.let(:NL, Orb::CustomerTaxID::Country::TaggedSymbol)
        NO = T.let(:NO, Orb::CustomerTaxID::Country::TaggedSymbol)
        NZ = T.let(:NZ, Orb::CustomerTaxID::Country::TaggedSymbol)
        OM = T.let(:OM, Orb::CustomerTaxID::Country::TaggedSymbol)
        PE = T.let(:PE, Orb::CustomerTaxID::Country::TaggedSymbol)
        PH = T.let(:PH, Orb::CustomerTaxID::Country::TaggedSymbol)
        PL = T.let(:PL, Orb::CustomerTaxID::Country::TaggedSymbol)
        PT = T.let(:PT, Orb::CustomerTaxID::Country::TaggedSymbol)
        RO = T.let(:RO, Orb::CustomerTaxID::Country::TaggedSymbol)
        RS = T.let(:RS, Orb::CustomerTaxID::Country::TaggedSymbol)
        RU = T.let(:RU, Orb::CustomerTaxID::Country::TaggedSymbol)
        SA = T.let(:SA, Orb::CustomerTaxID::Country::TaggedSymbol)
        SE = T.let(:SE, Orb::CustomerTaxID::Country::TaggedSymbol)
        SG = T.let(:SG, Orb::CustomerTaxID::Country::TaggedSymbol)
        SI = T.let(:SI, Orb::CustomerTaxID::Country::TaggedSymbol)
        SK = T.let(:SK, Orb::CustomerTaxID::Country::TaggedSymbol)
        SV = T.let(:SV, Orb::CustomerTaxID::Country::TaggedSymbol)
        TH = T.let(:TH, Orb::CustomerTaxID::Country::TaggedSymbol)
        TR = T.let(:TR, Orb::CustomerTaxID::Country::TaggedSymbol)
        TW = T.let(:TW, Orb::CustomerTaxID::Country::TaggedSymbol)
        UA = T.let(:UA, Orb::CustomerTaxID::Country::TaggedSymbol)
        US = T.let(:US, Orb::CustomerTaxID::Country::TaggedSymbol)
        UY = T.let(:UY, Orb::CustomerTaxID::Country::TaggedSymbol)
        VE = T.let(:VE, Orb::CustomerTaxID::Country::TaggedSymbol)
        VN = T.let(:VN, Orb::CustomerTaxID::Country::TaggedSymbol)
        ZA = T.let(:ZA, Orb::CustomerTaxID::Country::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::CustomerTaxID::Country::TaggedSymbol])
        end
        def self.values
        end
      end

      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::CustomerTaxID::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD_NRT = T.let(:ad_nrt, Orb::CustomerTaxID::Type::TaggedSymbol)
        AE_TRN = T.let(:ae_trn, Orb::CustomerTaxID::Type::TaggedSymbol)
        AR_CUIT = T.let(:ar_cuit, Orb::CustomerTaxID::Type::TaggedSymbol)
        EU_VAT = T.let(:eu_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        AU_ABN = T.let(:au_abn, Orb::CustomerTaxID::Type::TaggedSymbol)
        AU_ARN = T.let(:au_arn, Orb::CustomerTaxID::Type::TaggedSymbol)
        BG_UIC = T.let(:bg_uic, Orb::CustomerTaxID::Type::TaggedSymbol)
        BH_VAT = T.let(:bh_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        BO_TIN = T.let(:bo_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        BR_CNPJ = T.let(:br_cnpj, Orb::CustomerTaxID::Type::TaggedSymbol)
        BR_CPF = T.let(:br_cpf, Orb::CustomerTaxID::Type::TaggedSymbol)
        CA_BN = T.let(:ca_bn, Orb::CustomerTaxID::Type::TaggedSymbol)
        CA_GST_HST = T.let(:ca_gst_hst, Orb::CustomerTaxID::Type::TaggedSymbol)
        CA_PST_BC = T.let(:ca_pst_bc, Orb::CustomerTaxID::Type::TaggedSymbol)
        CA_PST_MB = T.let(:ca_pst_mb, Orb::CustomerTaxID::Type::TaggedSymbol)
        CA_PST_SK = T.let(:ca_pst_sk, Orb::CustomerTaxID::Type::TaggedSymbol)
        CA_QST = T.let(:ca_qst, Orb::CustomerTaxID::Type::TaggedSymbol)
        CH_VAT = T.let(:ch_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        CL_TIN = T.let(:cl_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        CN_TIN = T.let(:cn_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        CO_NIT = T.let(:co_nit, Orb::CustomerTaxID::Type::TaggedSymbol)
        CR_TIN = T.let(:cr_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        DO_RCN = T.let(:do_rcn, Orb::CustomerTaxID::Type::TaggedSymbol)
        EC_RUC = T.let(:ec_ruc, Orb::CustomerTaxID::Type::TaggedSymbol)
        EG_TIN = T.let(:eg_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        ES_CIF = T.let(:es_cif, Orb::CustomerTaxID::Type::TaggedSymbol)
        EU_OSS_VAT = T.let(:eu_oss_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        GB_VAT = T.let(:gb_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        GE_VAT = T.let(:ge_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        HK_BR = T.let(:hk_br, Orb::CustomerTaxID::Type::TaggedSymbol)
        HU_TIN = T.let(:hu_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        ID_NPWP = T.let(:id_npwp, Orb::CustomerTaxID::Type::TaggedSymbol)
        IL_VAT = T.let(:il_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        IN_GST = T.let(:in_gst, Orb::CustomerTaxID::Type::TaggedSymbol)
        IS_VAT = T.let(:is_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        JP_CN = T.let(:jp_cn, Orb::CustomerTaxID::Type::TaggedSymbol)
        JP_RN = T.let(:jp_rn, Orb::CustomerTaxID::Type::TaggedSymbol)
        JP_TRN = T.let(:jp_trn, Orb::CustomerTaxID::Type::TaggedSymbol)
        KE_PIN = T.let(:ke_pin, Orb::CustomerTaxID::Type::TaggedSymbol)
        KR_BRN = T.let(:kr_brn, Orb::CustomerTaxID::Type::TaggedSymbol)
        KZ_BIN = T.let(:kz_bin, Orb::CustomerTaxID::Type::TaggedSymbol)
        LI_UID = T.let(:li_uid, Orb::CustomerTaxID::Type::TaggedSymbol)
        MX_RFC = T.let(:mx_rfc, Orb::CustomerTaxID::Type::TaggedSymbol)
        MY_FRP = T.let(:my_frp, Orb::CustomerTaxID::Type::TaggedSymbol)
        MY_ITN = T.let(:my_itn, Orb::CustomerTaxID::Type::TaggedSymbol)
        MY_SST = T.let(:my_sst, Orb::CustomerTaxID::Type::TaggedSymbol)
        NG_TIN = T.let(:ng_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        NO_VAT = T.let(:no_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        NO_VOEC = T.let(:no_voec, Orb::CustomerTaxID::Type::TaggedSymbol)
        NZ_GST = T.let(:nz_gst, Orb::CustomerTaxID::Type::TaggedSymbol)
        OM_VAT = T.let(:om_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        PE_RUC = T.let(:pe_ruc, Orb::CustomerTaxID::Type::TaggedSymbol)
        PH_TIN = T.let(:ph_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        RO_TIN = T.let(:ro_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        RS_PIB = T.let(:rs_pib, Orb::CustomerTaxID::Type::TaggedSymbol)
        RU_INN = T.let(:ru_inn, Orb::CustomerTaxID::Type::TaggedSymbol)
        RU_KPP = T.let(:ru_kpp, Orb::CustomerTaxID::Type::TaggedSymbol)
        SA_VAT = T.let(:sa_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        SG_GST = T.let(:sg_gst, Orb::CustomerTaxID::Type::TaggedSymbol)
        SG_UEN = T.let(:sg_uen, Orb::CustomerTaxID::Type::TaggedSymbol)
        SI_TIN = T.let(:si_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        SV_NIT = T.let(:sv_nit, Orb::CustomerTaxID::Type::TaggedSymbol)
        TH_VAT = T.let(:th_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        TR_TIN = T.let(:tr_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        TW_VAT = T.let(:tw_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        UA_VAT = T.let(:ua_vat, Orb::CustomerTaxID::Type::TaggedSymbol)
        US_EIN = T.let(:us_ein, Orb::CustomerTaxID::Type::TaggedSymbol)
        UY_RUC = T.let(:uy_ruc, Orb::CustomerTaxID::Type::TaggedSymbol)
        VE_RIF = T.let(:ve_rif, Orb::CustomerTaxID::Type::TaggedSymbol)
        VN_TIN = T.let(:vn_tin, Orb::CustomerTaxID::Type::TaggedSymbol)
        ZA_VAT = T.let(:za_vat, Orb::CustomerTaxID::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::CustomerTaxID::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
