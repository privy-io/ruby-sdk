# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedResidence < Privy::Internal::Type::BaseModel
      # @!attribute city
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedResidence::Country]
      required :country, enum: -> { Privy::KrakenEmbedResidence::Country }

      # @!attribute line1
      #
      #   @return [String]
      required :line1, String

      # @!attribute postal_code
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute line2
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!attribute province
      #
      #   @return [String, nil]
      optional :province, String, nil?: true

      # @!method initialize(city:, country:, line1:, postal_code:, line2: nil, province: nil)
      #   User's residential address including street, city, postal code, and country.
      #
      #   @param city [String]
      #   @param country [Symbol, Privy::Models::KrakenEmbedResidence::Country]
      #   @param line1 [String]
      #   @param postal_code [String]
      #   @param line2 [String, nil]
      #   @param province [String, nil]

      # @see Privy::Models::KrakenEmbedResidence#country
      module Country
        extend Privy::Internal::Type::Enum

        AD = :AD
        AE = :AE
        AF = :AF
        AG = :AG
        AI = :AI
        AL = :AL
        AM = :AM
        AO = :AO
        AQ = :AQ
        AR = :AR
        AS = :AS
        AT = :AT
        AU = :AU
        AW = :AW
        AX = :AX
        AZ = :AZ
        BA = :BA
        BB = :BB
        BD = :BD
        BE = :BE
        BF = :BF
        BG = :BG
        BH = :BH
        BI = :BI
        BJ = :BJ
        BL = :BL
        BM = :BM
        BN = :BN
        BO = :BO
        BQ = :BQ
        BR = :BR
        BS = :BS
        BT = :BT
        BV = :BV
        BW = :BW
        BY = :BY
        BZ = :BZ
        CA = :CA
        CC = :CC
        CD = :CD
        CF = :CF
        CG = :CG
        CH = :CH
        CI = :CI
        CK = :CK
        CL = :CL
        CM = :CM
        CN = :CN
        CO = :CO
        CR = :CR
        CU = :CU
        CV = :CV
        CW = :CW
        CX = :CX
        CY = :CY
        CZ = :CZ
        DE = :DE
        DJ = :DJ
        DK = :DK
        DM = :DM
        DO = :DO
        DZ = :DZ
        EC = :EC
        EE = :EE
        EG = :EG
        EH = :EH
        ER = :ER
        ES = :ES
        ET = :ET
        FI = :FI
        FJ = :FJ
        FK = :FK
        FM = :FM
        FO = :FO
        FR = :FR
        GA = :GA
        GB = :GB
        GD = :GD
        GE = :GE
        GF = :GF
        GG = :GG
        GH = :GH
        GI = :GI
        GL = :GL
        GM = :GM
        GN = :GN
        GP = :GP
        GQ = :GQ
        GR = :GR
        GS = :GS
        GT = :GT
        GU = :GU
        GW = :GW
        GY = :GY
        HK = :HK
        HM = :HM
        HN = :HN
        HR = :HR
        HT = :HT
        HU = :HU
        ID = :ID
        IE = :IE
        IL = :IL
        IM = :IM
        IN = :IN
        IO = :IO
        IQ = :IQ
        IR = :IR
        IS = :IS
        IT = :IT
        JE = :JE
        JM = :JM
        JO = :JO
        JP = :JP
        KE = :KE
        KG = :KG
        KH = :KH
        KI = :KI
        KM = :KM
        KN = :KN
        KP = :KP
        KR = :KR
        KW = :KW
        KY = :KY
        KZ = :KZ
        LA = :LA
        LB = :LB
        LC = :LC
        LI = :LI
        LK = :LK
        LR = :LR
        LS = :LS
        LT = :LT
        LU = :LU
        LV = :LV
        LY = :LY
        MA = :MA
        MC = :MC
        MD = :MD
        ME = :ME
        MF = :MF
        MG = :MG
        MH = :MH
        MK = :MK
        ML = :ML
        MM = :MM
        MN = :MN
        MO = :MO
        MP = :MP
        MQ = :MQ
        MR = :MR
        MS = :MS
        MT = :MT
        MU = :MU
        MV = :MV
        MW = :MW
        MX = :MX
        MY = :MY
        MZ = :MZ
        NA = :NA
        NC = :NC
        NE = :NE
        NF = :NF
        NG = :NG
        NI = :NI
        NL = :NL
        NO = :NO
        NP = :NP
        NR = :NR
        NU = :NU
        NZ = :NZ
        OM = :OM
        PA = :PA
        PE = :PE
        PF = :PF
        PG = :PG
        PH = :PH
        PK = :PK
        PL = :PL
        PM = :PM
        PN = :PN
        PR = :PR
        PS = :PS
        PT = :PT
        PW = :PW
        PY = :PY
        QA = :QA
        RE = :RE
        RO = :RO
        RS = :RS
        RU = :RU
        RW = :RW
        SA = :SA
        SB = :SB
        SC = :SC
        SD = :SD
        SE = :SE
        SG = :SG
        SH = :SH
        SI = :SI
        SJ = :SJ
        SK = :SK
        SL = :SL
        SM = :SM
        SN = :SN
        SO = :SO
        SR = :SR
        SS = :SS
        ST = :ST
        SV = :SV
        SX = :SX
        SY = :SY
        SZ = :SZ
        TC = :TC
        TD = :TD
        TF = :TF
        TG = :TG
        TH = :TH
        TJ = :TJ
        TK = :TK
        TL = :TL
        TM = :TM
        TN = :TN
        TO = :TO
        TR = :TR
        TT = :TT
        TV = :TV
        TW = :TW
        TZ = :TZ
        UA = :UA
        UG = :UG
        UM = :UM
        US = :US
        UY = :UY
        UZ = :UZ
        VA = :VA
        VC = :VC
        VE = :VE
        VG = :VG
        VI = :VI
        VN = :VN
        VU = :VU
        WF = :WF
        WS = :WS
        YE = :YE
        YT = :YT
        ZA = :ZA
        ZM = :ZM
        ZW = :ZW
        AC = :AC
        AN = :AN
        AP = :AP
        CP = :CP
        DG = :DG
        EA = :EA
        EU = :EU
        IC = :IC
        JX = :JX
        TA = :TA
        QO = :QO
        XK = :XK
        COUNTRY_0_C = :"0C"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
