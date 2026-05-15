# typed: strong

module Privy
  module Models
    class KrakenEmbedStartIdentityMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartIdentityMetadata,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :document_number

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedStartIdentityMetadata::DocumentType::OrSymbol
          )
        )
      end
      attr_accessor :document_type

      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # Identity information hints including full name and date of birth for proof of
      # identity verification.
      sig do
        returns(T.nilable(Privy::KrakenEmbedStartIdentityMetadata::Identity))
      end
      attr_reader :identity

      sig do
        params(
          identity: Privy::KrakenEmbedStartIdentityMetadata::Identity::OrHash
        ).void
      end
      attr_writer :identity

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::OrSymbol
          )
        )
      end
      attr_accessor :issuing_country

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::OrSymbol
          )
        )
      end
      attr_accessor :nationality

      # Optional best-effort metadata hints for proof of identity verification.
      sig do
        params(
          document_number: T.nilable(String),
          document_type:
            T.nilable(
              Privy::KrakenEmbedStartIdentityMetadata::DocumentType::OrSymbol
            ),
          expiration_date: T.nilable(Date),
          identity: Privy::KrakenEmbedStartIdentityMetadata::Identity::OrHash,
          issuing_country:
            T.nilable(
              Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::OrSymbol
            ),
          nationality:
            T.nilable(
              Privy::KrakenEmbedStartIdentityMetadata::Nationality::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        document_number: nil,
        document_type: nil,
        expiration_date: nil,
        # Identity information hints including full name and date of birth for proof of
        # identity verification.
        identity: nil,
        issuing_country: nil,
        nationality: nil
      )
      end

      sig do
        override.returns(
          {
            document_number: T.nilable(String),
            document_type:
              T.nilable(
                Privy::KrakenEmbedStartIdentityMetadata::DocumentType::OrSymbol
              ),
            expiration_date: T.nilable(Date),
            identity: Privy::KrakenEmbedStartIdentityMetadata::Identity,
            issuing_country:
              T.nilable(
                Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::OrSymbol
              ),
            nationality:
              T.nilable(
                Privy::KrakenEmbedStartIdentityMetadata::Nationality::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      module DocumentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedStartIdentityMetadata::DocumentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PASSPORT =
          T.let(
            :passport,
            Privy::KrakenEmbedStartIdentityMetadata::DocumentType::TaggedSymbol
          )
        DRIVERS_LICENSE =
          T.let(
            :drivers_license,
            Privy::KrakenEmbedStartIdentityMetadata::DocumentType::TaggedSymbol
          )
        ID_CARD =
          T.let(
            :id_card,
            Privy::KrakenEmbedStartIdentityMetadata::DocumentType::TaggedSymbol
          )
        RESIDENCE_CARD =
          T.let(
            :residence_card,
            Privy::KrakenEmbedStartIdentityMetadata::DocumentType::TaggedSymbol
          )
        SPECIAL_PERMANENT_RESIDENCE_CARD =
          T.let(
            :special_permanent_residence_card,
            Privy::KrakenEmbedStartIdentityMetadata::DocumentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartIdentityMetadata::DocumentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Identity < Privy::Models::KrakenEmbedStartIdentityInfo
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedStartIdentityMetadata::Identity,
              Privy::Internal::AnyHash
            )
          end

        # Identity information hints including full name and date of birth for proof of
        # identity verification.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end

      module IssuingCountry
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(
            :AD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AE =
          T.let(
            :AE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AF =
          T.let(
            :AF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AG =
          T.let(
            :AG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AI =
          T.let(
            :AI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AL =
          T.let(
            :AL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AM =
          T.let(
            :AM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AO =
          T.let(
            :AO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AQ =
          T.let(
            :AQ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AR =
          T.let(
            :AR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AS =
          T.let(
            :AS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AT =
          T.let(
            :AT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AU =
          T.let(
            :AU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AW =
          T.let(
            :AW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AX =
          T.let(
            :AX,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AZ =
          T.let(
            :AZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BA =
          T.let(
            :BA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BB =
          T.let(
            :BB,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BD =
          T.let(
            :BD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BE =
          T.let(
            :BE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BF =
          T.let(
            :BF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BG =
          T.let(
            :BG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BH =
          T.let(
            :BH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BI =
          T.let(
            :BI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BJ =
          T.let(
            :BJ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BL =
          T.let(
            :BL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BM =
          T.let(
            :BM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BN =
          T.let(
            :BN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BO =
          T.let(
            :BO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BQ =
          T.let(
            :BQ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BR =
          T.let(
            :BR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BS =
          T.let(
            :BS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BT =
          T.let(
            :BT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BV =
          T.let(
            :BV,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BW =
          T.let(
            :BW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BY =
          T.let(
            :BY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        BZ =
          T.let(
            :BZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CA =
          T.let(
            :CA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CC =
          T.let(
            :CC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CD =
          T.let(
            :CD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CF =
          T.let(
            :CF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CG =
          T.let(
            :CG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CH =
          T.let(
            :CH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CI =
          T.let(
            :CI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CK =
          T.let(
            :CK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CL =
          T.let(
            :CL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CM =
          T.let(
            :CM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CN =
          T.let(
            :CN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CO =
          T.let(
            :CO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CR =
          T.let(
            :CR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CU =
          T.let(
            :CU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CV =
          T.let(
            :CV,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CW =
          T.let(
            :CW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CX =
          T.let(
            :CX,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CY =
          T.let(
            :CY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CZ =
          T.let(
            :CZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DE =
          T.let(
            :DE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DJ =
          T.let(
            :DJ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DK =
          T.let(
            :DK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DM =
          T.let(
            :DM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DO =
          T.let(
            :DO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DZ =
          T.let(
            :DZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        EC =
          T.let(
            :EC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        EE =
          T.let(
            :EE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        EG =
          T.let(
            :EG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        EH =
          T.let(
            :EH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ER =
          T.let(
            :ER,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ES =
          T.let(
            :ES,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ET =
          T.let(
            :ET,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        FI =
          T.let(
            :FI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        FJ =
          T.let(
            :FJ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        FK =
          T.let(
            :FK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        FM =
          T.let(
            :FM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        FO =
          T.let(
            :FO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        FR =
          T.let(
            :FR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GA =
          T.let(
            :GA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GB =
          T.let(
            :GB,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GD =
          T.let(
            :GD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GE =
          T.let(
            :GE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GF =
          T.let(
            :GF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GG =
          T.let(
            :GG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GH =
          T.let(
            :GH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GI =
          T.let(
            :GI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GL =
          T.let(
            :GL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GM =
          T.let(
            :GM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GN =
          T.let(
            :GN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GP =
          T.let(
            :GP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GQ =
          T.let(
            :GQ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GR =
          T.let(
            :GR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GS =
          T.let(
            :GS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GT =
          T.let(
            :GT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GU =
          T.let(
            :GU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GW =
          T.let(
            :GW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        GY =
          T.let(
            :GY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        HK =
          T.let(
            :HK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        HM =
          T.let(
            :HM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        HN =
          T.let(
            :HN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        HR =
          T.let(
            :HR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        HT =
          T.let(
            :HT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        HU =
          T.let(
            :HU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ID =
          T.let(
            :ID,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IE =
          T.let(
            :IE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IL =
          T.let(
            :IL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IM =
          T.let(
            :IM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IN =
          T.let(
            :IN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IO =
          T.let(
            :IO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IQ =
          T.let(
            :IQ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IR =
          T.let(
            :IR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IS =
          T.let(
            :IS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IT =
          T.let(
            :IT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        JE =
          T.let(
            :JE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        JM =
          T.let(
            :JM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        JO =
          T.let(
            :JO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        JP =
          T.let(
            :JP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KE =
          T.let(
            :KE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KG =
          T.let(
            :KG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KH =
          T.let(
            :KH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KI =
          T.let(
            :KI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KM =
          T.let(
            :KM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KN =
          T.let(
            :KN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KP =
          T.let(
            :KP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KR =
          T.let(
            :KR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KW =
          T.let(
            :KW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KY =
          T.let(
            :KY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        KZ =
          T.let(
            :KZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LA =
          T.let(
            :LA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LB =
          T.let(
            :LB,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LC =
          T.let(
            :LC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LI =
          T.let(
            :LI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LK =
          T.let(
            :LK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LR =
          T.let(
            :LR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LS =
          T.let(
            :LS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LT =
          T.let(
            :LT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LU =
          T.let(
            :LU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LV =
          T.let(
            :LV,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        LY =
          T.let(
            :LY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MA =
          T.let(
            :MA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MC =
          T.let(
            :MC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MD =
          T.let(
            :MD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ME =
          T.let(
            :ME,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MF =
          T.let(
            :MF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MG =
          T.let(
            :MG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MH =
          T.let(
            :MH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MK =
          T.let(
            :MK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ML =
          T.let(
            :ML,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MM =
          T.let(
            :MM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MN =
          T.let(
            :MN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MO =
          T.let(
            :MO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MP =
          T.let(
            :MP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MQ =
          T.let(
            :MQ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MR =
          T.let(
            :MR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MS =
          T.let(
            :MS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MT =
          T.let(
            :MT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MU =
          T.let(
            :MU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MV =
          T.let(
            :MV,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MW =
          T.let(
            :MW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MX =
          T.let(
            :MX,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MY =
          T.let(
            :MY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        MZ =
          T.let(
            :MZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NA =
          T.let(
            :NA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NC =
          T.let(
            :NC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NE =
          T.let(
            :NE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NF =
          T.let(
            :NF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NG =
          T.let(
            :NG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NI =
          T.let(
            :NI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NL =
          T.let(
            :NL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NO =
          T.let(
            :NO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NP =
          T.let(
            :NP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NR =
          T.let(
            :NR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NU =
          T.let(
            :NU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        NZ =
          T.let(
            :NZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        OM =
          T.let(
            :OM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PA =
          T.let(
            :PA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PE =
          T.let(
            :PE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PF =
          T.let(
            :PF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PG =
          T.let(
            :PG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PH =
          T.let(
            :PH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PK =
          T.let(
            :PK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PL =
          T.let(
            :PL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PM =
          T.let(
            :PM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PN =
          T.let(
            :PN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PR =
          T.let(
            :PR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PS =
          T.let(
            :PS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PT =
          T.let(
            :PT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PW =
          T.let(
            :PW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        PY =
          T.let(
            :PY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        QA =
          T.let(
            :QA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        RE =
          T.let(
            :RE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        RO =
          T.let(
            :RO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        RS =
          T.let(
            :RS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        RU =
          T.let(
            :RU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        RW =
          T.let(
            :RW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SA =
          T.let(
            :SA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SB =
          T.let(
            :SB,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SC =
          T.let(
            :SC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SD =
          T.let(
            :SD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SE =
          T.let(
            :SE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SG =
          T.let(
            :SG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SH =
          T.let(
            :SH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SI =
          T.let(
            :SI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SJ =
          T.let(
            :SJ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SK =
          T.let(
            :SK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SL =
          T.let(
            :SL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SM =
          T.let(
            :SM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SN =
          T.let(
            :SN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SO =
          T.let(
            :SO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SR =
          T.let(
            :SR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SS =
          T.let(
            :SS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ST =
          T.let(
            :ST,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SV =
          T.let(
            :SV,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SX =
          T.let(
            :SX,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SY =
          T.let(
            :SY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        SZ =
          T.let(
            :SZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TC =
          T.let(
            :TC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TD =
          T.let(
            :TD,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TF =
          T.let(
            :TF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TG =
          T.let(
            :TG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TH =
          T.let(
            :TH,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TJ =
          T.let(
            :TJ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TK =
          T.let(
            :TK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TL =
          T.let(
            :TL,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TM =
          T.let(
            :TM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TN =
          T.let(
            :TN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TO =
          T.let(
            :TO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TR =
          T.let(
            :TR,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TT =
          T.let(
            :TT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TV =
          T.let(
            :TV,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TW =
          T.let(
            :TW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TZ =
          T.let(
            :TZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        UA =
          T.let(
            :UA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        UG =
          T.let(
            :UG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        UM =
          T.let(
            :UM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        US =
          T.let(
            :US,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        UY =
          T.let(
            :UY,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        UZ =
          T.let(
            :UZ,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VA =
          T.let(
            :VA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VC =
          T.let(
            :VC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VE =
          T.let(
            :VE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VG =
          T.let(
            :VG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VI =
          T.let(
            :VI,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VN =
          T.let(
            :VN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        VU =
          T.let(
            :VU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        WF =
          T.let(
            :WF,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        WS =
          T.let(
            :WS,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        YE =
          T.let(
            :YE,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        YT =
          T.let(
            :YT,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ZA =
          T.let(
            :ZA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ZM =
          T.let(
            :ZM,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ZW =
          T.let(
            :ZW,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AC =
          T.let(
            :AC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AN =
          T.let(
            :AN,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        AP =
          T.let(
            :AP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        CP =
          T.let(
            :CP,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        DG =
          T.let(
            :DG,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        EA =
          T.let(
            :EA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        EU =
          T.let(
            :EU,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        IC =
          T.let(
            :IC,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        JX =
          T.let(
            :JX,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        TA =
          T.let(
            :TA,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        QO =
          T.let(
            :QO,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        XK =
          T.let(
            :XK,
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )
        ISSUING_COUNTRY_0_C =
          T.let(
            :"0C",
            Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartIdentityMetadata::IssuingCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Nationality
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedStartIdentityMetadata::Nationality)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(
            :AD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AE =
          T.let(
            :AE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AF =
          T.let(
            :AF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AG =
          T.let(
            :AG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AI =
          T.let(
            :AI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AL =
          T.let(
            :AL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AM =
          T.let(
            :AM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AO =
          T.let(
            :AO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AQ =
          T.let(
            :AQ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AR =
          T.let(
            :AR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AS =
          T.let(
            :AS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AT =
          T.let(
            :AT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AU =
          T.let(
            :AU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AW =
          T.let(
            :AW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AX =
          T.let(
            :AX,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AZ =
          T.let(
            :AZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BA =
          T.let(
            :BA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BB =
          T.let(
            :BB,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BD =
          T.let(
            :BD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BE =
          T.let(
            :BE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BF =
          T.let(
            :BF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BG =
          T.let(
            :BG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BH =
          T.let(
            :BH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BI =
          T.let(
            :BI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BJ =
          T.let(
            :BJ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BL =
          T.let(
            :BL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BM =
          T.let(
            :BM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BN =
          T.let(
            :BN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BO =
          T.let(
            :BO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BQ =
          T.let(
            :BQ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BR =
          T.let(
            :BR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BS =
          T.let(
            :BS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BT =
          T.let(
            :BT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BV =
          T.let(
            :BV,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BW =
          T.let(
            :BW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BY =
          T.let(
            :BY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        BZ =
          T.let(
            :BZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CA =
          T.let(
            :CA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CC =
          T.let(
            :CC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CD =
          T.let(
            :CD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CF =
          T.let(
            :CF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CG =
          T.let(
            :CG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CH =
          T.let(
            :CH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CI =
          T.let(
            :CI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CK =
          T.let(
            :CK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CL =
          T.let(
            :CL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CM =
          T.let(
            :CM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CN =
          T.let(
            :CN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CO =
          T.let(
            :CO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CR =
          T.let(
            :CR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CU =
          T.let(
            :CU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CV =
          T.let(
            :CV,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CW =
          T.let(
            :CW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CX =
          T.let(
            :CX,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CY =
          T.let(
            :CY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CZ =
          T.let(
            :CZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DE =
          T.let(
            :DE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DJ =
          T.let(
            :DJ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DK =
          T.let(
            :DK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DM =
          T.let(
            :DM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DO =
          T.let(
            :DO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DZ =
          T.let(
            :DZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        EC =
          T.let(
            :EC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        EE =
          T.let(
            :EE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        EG =
          T.let(
            :EG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        EH =
          T.let(
            :EH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ER =
          T.let(
            :ER,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ES =
          T.let(
            :ES,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ET =
          T.let(
            :ET,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        FI =
          T.let(
            :FI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        FJ =
          T.let(
            :FJ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        FK =
          T.let(
            :FK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        FM =
          T.let(
            :FM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        FO =
          T.let(
            :FO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        FR =
          T.let(
            :FR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GA =
          T.let(
            :GA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GB =
          T.let(
            :GB,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GD =
          T.let(
            :GD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GE =
          T.let(
            :GE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GF =
          T.let(
            :GF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GG =
          T.let(
            :GG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GH =
          T.let(
            :GH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GI =
          T.let(
            :GI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GL =
          T.let(
            :GL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GM =
          T.let(
            :GM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GN =
          T.let(
            :GN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GP =
          T.let(
            :GP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GQ =
          T.let(
            :GQ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GR =
          T.let(
            :GR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GS =
          T.let(
            :GS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GT =
          T.let(
            :GT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GU =
          T.let(
            :GU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GW =
          T.let(
            :GW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        GY =
          T.let(
            :GY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        HK =
          T.let(
            :HK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        HM =
          T.let(
            :HM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        HN =
          T.let(
            :HN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        HR =
          T.let(
            :HR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        HT =
          T.let(
            :HT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        HU =
          T.let(
            :HU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ID =
          T.let(
            :ID,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IE =
          T.let(
            :IE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IL =
          T.let(
            :IL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IM =
          T.let(
            :IM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IN =
          T.let(
            :IN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IO =
          T.let(
            :IO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IQ =
          T.let(
            :IQ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IR =
          T.let(
            :IR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IS =
          T.let(
            :IS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IT =
          T.let(
            :IT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        JE =
          T.let(
            :JE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        JM =
          T.let(
            :JM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        JO =
          T.let(
            :JO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        JP =
          T.let(
            :JP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KE =
          T.let(
            :KE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KG =
          T.let(
            :KG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KH =
          T.let(
            :KH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KI =
          T.let(
            :KI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KM =
          T.let(
            :KM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KN =
          T.let(
            :KN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KP =
          T.let(
            :KP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KR =
          T.let(
            :KR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KW =
          T.let(
            :KW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KY =
          T.let(
            :KY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        KZ =
          T.let(
            :KZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LA =
          T.let(
            :LA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LB =
          T.let(
            :LB,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LC =
          T.let(
            :LC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LI =
          T.let(
            :LI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LK =
          T.let(
            :LK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LR =
          T.let(
            :LR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LS =
          T.let(
            :LS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LT =
          T.let(
            :LT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LU =
          T.let(
            :LU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LV =
          T.let(
            :LV,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        LY =
          T.let(
            :LY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MA =
          T.let(
            :MA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MC =
          T.let(
            :MC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MD =
          T.let(
            :MD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ME =
          T.let(
            :ME,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MF =
          T.let(
            :MF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MG =
          T.let(
            :MG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MH =
          T.let(
            :MH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MK =
          T.let(
            :MK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ML =
          T.let(
            :ML,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MM =
          T.let(
            :MM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MN =
          T.let(
            :MN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MO =
          T.let(
            :MO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MP =
          T.let(
            :MP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MQ =
          T.let(
            :MQ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MR =
          T.let(
            :MR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MS =
          T.let(
            :MS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MT =
          T.let(
            :MT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MU =
          T.let(
            :MU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MV =
          T.let(
            :MV,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MW =
          T.let(
            :MW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MX =
          T.let(
            :MX,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MY =
          T.let(
            :MY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        MZ =
          T.let(
            :MZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NA =
          T.let(
            :NA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NC =
          T.let(
            :NC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NE =
          T.let(
            :NE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NF =
          T.let(
            :NF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NG =
          T.let(
            :NG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NI =
          T.let(
            :NI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NL =
          T.let(
            :NL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NO =
          T.let(
            :NO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NP =
          T.let(
            :NP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NR =
          T.let(
            :NR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NU =
          T.let(
            :NU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NZ =
          T.let(
            :NZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        OM =
          T.let(
            :OM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PA =
          T.let(
            :PA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PE =
          T.let(
            :PE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PF =
          T.let(
            :PF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PG =
          T.let(
            :PG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PH =
          T.let(
            :PH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PK =
          T.let(
            :PK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PL =
          T.let(
            :PL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PM =
          T.let(
            :PM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PN =
          T.let(
            :PN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PR =
          T.let(
            :PR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PS =
          T.let(
            :PS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PT =
          T.let(
            :PT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PW =
          T.let(
            :PW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        PY =
          T.let(
            :PY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        QA =
          T.let(
            :QA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        RE =
          T.let(
            :RE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        RO =
          T.let(
            :RO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        RS =
          T.let(
            :RS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        RU =
          T.let(
            :RU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        RW =
          T.let(
            :RW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SA =
          T.let(
            :SA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SB =
          T.let(
            :SB,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SC =
          T.let(
            :SC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SD =
          T.let(
            :SD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SE =
          T.let(
            :SE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SG =
          T.let(
            :SG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SH =
          T.let(
            :SH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SI =
          T.let(
            :SI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SJ =
          T.let(
            :SJ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SK =
          T.let(
            :SK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SL =
          T.let(
            :SL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SM =
          T.let(
            :SM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SN =
          T.let(
            :SN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SO =
          T.let(
            :SO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SR =
          T.let(
            :SR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SS =
          T.let(
            :SS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ST =
          T.let(
            :ST,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SV =
          T.let(
            :SV,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SX =
          T.let(
            :SX,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SY =
          T.let(
            :SY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        SZ =
          T.let(
            :SZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TC =
          T.let(
            :TC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TD =
          T.let(
            :TD,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TF =
          T.let(
            :TF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TG =
          T.let(
            :TG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TH =
          T.let(
            :TH,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TJ =
          T.let(
            :TJ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TK =
          T.let(
            :TK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TL =
          T.let(
            :TL,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TM =
          T.let(
            :TM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TN =
          T.let(
            :TN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TO =
          T.let(
            :TO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TR =
          T.let(
            :TR,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TT =
          T.let(
            :TT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TV =
          T.let(
            :TV,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TW =
          T.let(
            :TW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TZ =
          T.let(
            :TZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        UA =
          T.let(
            :UA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        UG =
          T.let(
            :UG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        UM =
          T.let(
            :UM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        US =
          T.let(
            :US,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        UY =
          T.let(
            :UY,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        UZ =
          T.let(
            :UZ,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VA =
          T.let(
            :VA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VC =
          T.let(
            :VC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VE =
          T.let(
            :VE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VG =
          T.let(
            :VG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VI =
          T.let(
            :VI,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VN =
          T.let(
            :VN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        VU =
          T.let(
            :VU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        WF =
          T.let(
            :WF,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        WS =
          T.let(
            :WS,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        YE =
          T.let(
            :YE,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        YT =
          T.let(
            :YT,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ZA =
          T.let(
            :ZA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ZM =
          T.let(
            :ZM,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        ZW =
          T.let(
            :ZW,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AC =
          T.let(
            :AC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AN =
          T.let(
            :AN,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        AP =
          T.let(
            :AP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        CP =
          T.let(
            :CP,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        DG =
          T.let(
            :DG,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        EA =
          T.let(
            :EA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        EU =
          T.let(
            :EU,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        IC =
          T.let(
            :IC,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        JX =
          T.let(
            :JX,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        TA =
          T.let(
            :TA,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        QO =
          T.let(
            :QO,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        XK =
          T.let(
            :XK,
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )
        NATIONALITY_0_C =
          T.let(
            :"0C",
            Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartIdentityMetadata::Nationality::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
