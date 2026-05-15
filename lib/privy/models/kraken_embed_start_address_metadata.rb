# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedStartAddressMetadata < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [Privy::Models::KrakenEmbedStartAddressMetadata::Address, nil]
      optional :address, -> { Privy::KrakenEmbedStartAddressMetadata::Address }, nil?: true

      # @!attribute document_number
      #
      #   @return [String, nil]
      optional :document_number, String, nil?: true

      # @!attribute document_type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedStartAddressMetadata::DocumentType, nil]
      optional :document_type, enum: -> { Privy::KrakenEmbedStartAddressMetadata::DocumentType }, nil?: true

      # @!attribute expiration_date
      #
      #   @return [Date, nil]
      optional :expiration_date, Date, nil?: true

      # @!method initialize(address: nil, document_number: nil, document_type: nil, expiration_date: nil)
      #   Optional best-effort metadata hints for proof of address verification.
      #
      #   @param address [Privy::Models::KrakenEmbedStartAddressMetadata::Address, nil]
      #   @param document_number [String, nil]
      #   @param document_type [Symbol, Privy::Models::KrakenEmbedStartAddressMetadata::DocumentType, nil]
      #   @param expiration_date [Date, nil]

      # @see Privy::Models::KrakenEmbedStartAddressMetadata#address
      class Address < Privy::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #
        #   @return [Symbol, Privy::Models::KrakenEmbedStartAddressMetadata::Address::Country]
        required :country, enum: -> { Privy::KrakenEmbedStartAddressMetadata::Address::Country }

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
        #   @param city [String]
        #   @param country [Symbol, Privy::Models::KrakenEmbedStartAddressMetadata::Address::Country]
        #   @param line1 [String]
        #   @param postal_code [String]
        #   @param line2 [String, nil]
        #   @param province [String, nil]

        # @see Privy::Models::KrakenEmbedStartAddressMetadata::Address#country
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

      # @see Privy::Models::KrakenEmbedStartAddressMetadata#document_type
      module DocumentType
        extend Privy::Internal::Type::Enum

        BANK_STATEMENT = :bank_statement
        CREDIT_CARD_STATEMENT = :credit_card_statement
        EMPLOYER_LETTER_OR_WORK_CONTRACT = :employer_letter_or_work_contract
        GOVERNMENT_ISSUED_DOCUMENT = :government_issued_document
        HOME_OR_RENTAL_INSURANCE = :home_or_rental_insurance
        INTERNET_OR_CABLE_BILL = :internet_or_cable_bill
        MOBILE_PHONE_BILL = :mobile_phone_bill
        MORTGAGE_STATEMENT = :mortgage_statement
        OFFICIAL_GOVERNMENT_LETTER = :official_government_letter
        PASSPORT_ADDRESS_PAGE = :passport_address_page
        RENTAL_OR_LEASE_AGREEMENT = :rental_or_lease_agreement
        RESIDENCE_CERTIFICATE = :residence_certificate
        SOCIAL_INSURANCE_PAYMENT_RECEIPT = :social_insurance_payment_receipt
        TAX_RECEIPT = :tax_receipt
        TAX_RETURN = :tax_return
        UTILITY_BILL = :utility_bill
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
