# typed: strong

module Privy
  module Models
    class KrakenEmbedResidence < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedResidence, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :city

      sig { returns(Privy::KrakenEmbedResidence::Country::OrSymbol) }
      attr_accessor :country

      sig { returns(String) }
      attr_accessor :line1

      sig { returns(String) }
      attr_accessor :postal_code

      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      sig { returns(T.nilable(String)) }
      attr_accessor :province

      # User's residential address including street, city, postal code, and country.
      sig do
        params(
          city: String,
          country: Privy::KrakenEmbedResidence::Country::OrSymbol,
          line1: String,
          postal_code: String,
          line2: T.nilable(String),
          province: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        city:,
        country:,
        line1:,
        postal_code:,
        line2: nil,
        province: nil
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country: Privy::KrakenEmbedResidence::Country::OrSymbol,
            line1: String,
            postal_code: String,
            line2: T.nilable(String),
            province: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Country
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::KrakenEmbedResidence::Country) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD = T.let(:AD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AE = T.let(:AE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AF = T.let(:AF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AG = T.let(:AG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AI = T.let(:AI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AL = T.let(:AL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AM = T.let(:AM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AO = T.let(:AO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AQ = T.let(:AQ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AR = T.let(:AR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AS = T.let(:AS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AT = T.let(:AT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AU = T.let(:AU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AW = T.let(:AW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AX = T.let(:AX, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AZ = T.let(:AZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BA = T.let(:BA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BB = T.let(:BB, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BD = T.let(:BD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BE = T.let(:BE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BF = T.let(:BF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BG = T.let(:BG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BH = T.let(:BH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BI = T.let(:BI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BJ = T.let(:BJ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BL = T.let(:BL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BM = T.let(:BM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BN = T.let(:BN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BO = T.let(:BO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BQ = T.let(:BQ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BR = T.let(:BR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BS = T.let(:BS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BT = T.let(:BT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BV = T.let(:BV, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BW = T.let(:BW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BY = T.let(:BY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        BZ = T.let(:BZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CA = T.let(:CA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CC = T.let(:CC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CD = T.let(:CD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CF = T.let(:CF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CG = T.let(:CG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CH = T.let(:CH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CI = T.let(:CI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CK = T.let(:CK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CL = T.let(:CL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CM = T.let(:CM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CN = T.let(:CN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CO = T.let(:CO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CR = T.let(:CR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CU = T.let(:CU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CV = T.let(:CV, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CW = T.let(:CW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CX = T.let(:CX, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CY = T.let(:CY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CZ = T.let(:CZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DE = T.let(:DE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DJ = T.let(:DJ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DK = T.let(:DK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DM = T.let(:DM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DO = T.let(:DO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DZ = T.let(:DZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        EC = T.let(:EC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        EE = T.let(:EE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        EG = T.let(:EG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        EH = T.let(:EH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ER = T.let(:ER, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ES = T.let(:ES, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ET = T.let(:ET, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        FI = T.let(:FI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        FJ = T.let(:FJ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        FK = T.let(:FK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        FM = T.let(:FM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        FO = T.let(:FO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        FR = T.let(:FR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GA = T.let(:GA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GB = T.let(:GB, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GD = T.let(:GD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GE = T.let(:GE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GF = T.let(:GF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GG = T.let(:GG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GH = T.let(:GH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GI = T.let(:GI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GL = T.let(:GL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GM = T.let(:GM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GN = T.let(:GN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GP = T.let(:GP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GQ = T.let(:GQ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GR = T.let(:GR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GS = T.let(:GS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GT = T.let(:GT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GU = T.let(:GU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GW = T.let(:GW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        GY = T.let(:GY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        HK = T.let(:HK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        HM = T.let(:HM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        HN = T.let(:HN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        HR = T.let(:HR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        HT = T.let(:HT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        HU = T.let(:HU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ID = T.let(:ID, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IE = T.let(:IE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IL = T.let(:IL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IM = T.let(:IM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IN = T.let(:IN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IO = T.let(:IO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IQ = T.let(:IQ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IR = T.let(:IR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IS = T.let(:IS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IT = T.let(:IT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        JE = T.let(:JE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        JM = T.let(:JM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        JO = T.let(:JO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        JP = T.let(:JP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KE = T.let(:KE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KG = T.let(:KG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KH = T.let(:KH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KI = T.let(:KI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KM = T.let(:KM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KN = T.let(:KN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KP = T.let(:KP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KR = T.let(:KR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KW = T.let(:KW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KY = T.let(:KY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        KZ = T.let(:KZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LA = T.let(:LA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LB = T.let(:LB, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LC = T.let(:LC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LI = T.let(:LI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LK = T.let(:LK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LR = T.let(:LR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LS = T.let(:LS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LT = T.let(:LT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LU = T.let(:LU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LV = T.let(:LV, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        LY = T.let(:LY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MA = T.let(:MA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MC = T.let(:MC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MD = T.let(:MD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ME = T.let(:ME, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MF = T.let(:MF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MG = T.let(:MG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MH = T.let(:MH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MK = T.let(:MK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ML = T.let(:ML, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MM = T.let(:MM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MN = T.let(:MN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MO = T.let(:MO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MP = T.let(:MP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MQ = T.let(:MQ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MR = T.let(:MR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MS = T.let(:MS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MT = T.let(:MT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MU = T.let(:MU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MV = T.let(:MV, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MW = T.let(:MW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MX = T.let(:MX, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MY = T.let(:MY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        MZ = T.let(:MZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NA = T.let(:NA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NC = T.let(:NC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NE = T.let(:NE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NF = T.let(:NF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NG = T.let(:NG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NI = T.let(:NI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NL = T.let(:NL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NO = T.let(:NO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NP = T.let(:NP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NR = T.let(:NR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NU = T.let(:NU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        NZ = T.let(:NZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        OM = T.let(:OM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PA = T.let(:PA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PE = T.let(:PE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PF = T.let(:PF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PG = T.let(:PG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PH = T.let(:PH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PK = T.let(:PK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PL = T.let(:PL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PM = T.let(:PM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PN = T.let(:PN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PR = T.let(:PR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PS = T.let(:PS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PT = T.let(:PT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PW = T.let(:PW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        PY = T.let(:PY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        QA = T.let(:QA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        RE = T.let(:RE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        RO = T.let(:RO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        RS = T.let(:RS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        RU = T.let(:RU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        RW = T.let(:RW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SA = T.let(:SA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SB = T.let(:SB, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SC = T.let(:SC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SD = T.let(:SD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SE = T.let(:SE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SG = T.let(:SG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SH = T.let(:SH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SI = T.let(:SI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SJ = T.let(:SJ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SK = T.let(:SK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SL = T.let(:SL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SM = T.let(:SM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SN = T.let(:SN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SO = T.let(:SO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SR = T.let(:SR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SS = T.let(:SS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ST = T.let(:ST, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SV = T.let(:SV, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SX = T.let(:SX, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SY = T.let(:SY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        SZ = T.let(:SZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TC = T.let(:TC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TD = T.let(:TD, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TF = T.let(:TF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TG = T.let(:TG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TH = T.let(:TH, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TJ = T.let(:TJ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TK = T.let(:TK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TL = T.let(:TL, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TM = T.let(:TM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TN = T.let(:TN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TO = T.let(:TO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TR = T.let(:TR, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TT = T.let(:TT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TV = T.let(:TV, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TW = T.let(:TW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TZ = T.let(:TZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        UA = T.let(:UA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        UG = T.let(:UG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        UM = T.let(:UM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        US = T.let(:US, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        UY = T.let(:UY, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        UZ = T.let(:UZ, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VA = T.let(:VA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VC = T.let(:VC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VE = T.let(:VE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VG = T.let(:VG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VI = T.let(:VI, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VN = T.let(:VN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        VU = T.let(:VU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        WF = T.let(:WF, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        WS = T.let(:WS, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        YE = T.let(:YE, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        YT = T.let(:YT, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ZA = T.let(:ZA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ZM = T.let(:ZM, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        ZW = T.let(:ZW, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AC = T.let(:AC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AN = T.let(:AN, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        AP = T.let(:AP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        CP = T.let(:CP, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        DG = T.let(:DG, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        EA = T.let(:EA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        EU = T.let(:EU, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        IC = T.let(:IC, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        JX = T.let(:JX, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        TA = T.let(:TA, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        QO = T.let(:QO, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        XK = T.let(:XK, Privy::KrakenEmbedResidence::Country::TaggedSymbol)
        COUNTRY_0_C =
          T.let(:"0C", Privy::KrakenEmbedResidence::Country::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::KrakenEmbedResidence::Country::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
