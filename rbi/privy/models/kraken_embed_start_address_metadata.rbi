# typed: strong

module Privy
  module Models
    class KrakenEmbedStartAddressMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartAddressMetadata,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Privy::KrakenEmbedStartAddressMetadata::Address))
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(Privy::KrakenEmbedStartAddressMetadata::Address::OrHash)
        ).void
      end
      attr_writer :address

      sig { returns(T.nilable(String)) }
      attr_accessor :document_number

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::OrSymbol
          )
        )
      end
      attr_accessor :document_type

      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # Optional best-effort metadata hints for proof of address verification.
      sig do
        params(
          address:
            T.nilable(Privy::KrakenEmbedStartAddressMetadata::Address::OrHash),
          document_number: T.nilable(String),
          document_type:
            T.nilable(
              Privy::KrakenEmbedStartAddressMetadata::DocumentType::OrSymbol
            ),
          expiration_date: T.nilable(Date)
        ).returns(T.attached_class)
      end
      def self.new(
        address: nil,
        document_number: nil,
        document_type: nil,
        expiration_date: nil
      )
      end

      sig do
        override.returns(
          {
            address: T.nilable(Privy::KrakenEmbedStartAddressMetadata::Address),
            document_number: T.nilable(String),
            document_type:
              T.nilable(
                Privy::KrakenEmbedStartAddressMetadata::DocumentType::OrSymbol
              ),
            expiration_date: T.nilable(Date)
          }
        )
      end
      def to_hash
      end

      class Address < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedStartAddressMetadata::Address,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :city

        sig do
          returns(
            Privy::KrakenEmbedStartAddressMetadata::Address::Country::OrSymbol
          )
        end
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :province

        sig do
          params(
            city: String,
            country:
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::OrSymbol,
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
              country:
                Privy::KrakenEmbedStartAddressMetadata::Address::Country::OrSymbol,
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
            T.type_alias do
              T.all(
                Symbol,
                Privy::KrakenEmbedStartAddressMetadata::Address::Country
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD =
            T.let(
              :AD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AE =
            T.let(
              :AE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AF =
            T.let(
              :AF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AG =
            T.let(
              :AG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AI =
            T.let(
              :AI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AL =
            T.let(
              :AL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AM =
            T.let(
              :AM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AO =
            T.let(
              :AO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AQ =
            T.let(
              :AQ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AR =
            T.let(
              :AR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AS =
            T.let(
              :AS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AT =
            T.let(
              :AT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AU =
            T.let(
              :AU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AW =
            T.let(
              :AW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AX =
            T.let(
              :AX,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AZ =
            T.let(
              :AZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BA =
            T.let(
              :BA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BB =
            T.let(
              :BB,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BD =
            T.let(
              :BD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BE =
            T.let(
              :BE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BF =
            T.let(
              :BF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BG =
            T.let(
              :BG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BH =
            T.let(
              :BH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BI =
            T.let(
              :BI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BJ =
            T.let(
              :BJ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BL =
            T.let(
              :BL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BM =
            T.let(
              :BM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BN =
            T.let(
              :BN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BO =
            T.let(
              :BO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BQ =
            T.let(
              :BQ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BR =
            T.let(
              :BR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BS =
            T.let(
              :BS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BT =
            T.let(
              :BT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BV =
            T.let(
              :BV,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BW =
            T.let(
              :BW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BY =
            T.let(
              :BY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          BZ =
            T.let(
              :BZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CA =
            T.let(
              :CA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CC =
            T.let(
              :CC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CD =
            T.let(
              :CD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CF =
            T.let(
              :CF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CG =
            T.let(
              :CG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CH =
            T.let(
              :CH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CI =
            T.let(
              :CI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CK =
            T.let(
              :CK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CL =
            T.let(
              :CL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CM =
            T.let(
              :CM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CN =
            T.let(
              :CN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CO =
            T.let(
              :CO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CR =
            T.let(
              :CR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CU =
            T.let(
              :CU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CV =
            T.let(
              :CV,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CW =
            T.let(
              :CW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CX =
            T.let(
              :CX,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CY =
            T.let(
              :CY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CZ =
            T.let(
              :CZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DJ =
            T.let(
              :DJ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DK =
            T.let(
              :DK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DM =
            T.let(
              :DM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DO =
            T.let(
              :DO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DZ =
            T.let(
              :DZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          EC =
            T.let(
              :EC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          EE =
            T.let(
              :EE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          EG =
            T.let(
              :EG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          EH =
            T.let(
              :EH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ER =
            T.let(
              :ER,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ET =
            T.let(
              :ET,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          FJ =
            T.let(
              :FJ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          FK =
            T.let(
              :FK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          FM =
            T.let(
              :FM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          FO =
            T.let(
              :FO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GA =
            T.let(
              :GA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GB =
            T.let(
              :GB,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GD =
            T.let(
              :GD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GE =
            T.let(
              :GE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GF =
            T.let(
              :GF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GG =
            T.let(
              :GG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GH =
            T.let(
              :GH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GI =
            T.let(
              :GI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GL =
            T.let(
              :GL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GM =
            T.let(
              :GM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GN =
            T.let(
              :GN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GP =
            T.let(
              :GP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GQ =
            T.let(
              :GQ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GR =
            T.let(
              :GR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GS =
            T.let(
              :GS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GT =
            T.let(
              :GT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GU =
            T.let(
              :GU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GW =
            T.let(
              :GW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          GY =
            T.let(
              :GY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          HK =
            T.let(
              :HK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          HM =
            T.let(
              :HM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          HN =
            T.let(
              :HN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          HR =
            T.let(
              :HR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          HT =
            T.let(
              :HT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          HU =
            T.let(
              :HU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ID =
            T.let(
              :ID,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IE =
            T.let(
              :IE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IL =
            T.let(
              :IL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IM =
            T.let(
              :IM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IN =
            T.let(
              :IN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IO =
            T.let(
              :IO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IQ =
            T.let(
              :IQ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IR =
            T.let(
              :IR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IS =
            T.let(
              :IS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          JE =
            T.let(
              :JE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          JM =
            T.let(
              :JM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          JO =
            T.let(
              :JO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          JP =
            T.let(
              :JP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KE =
            T.let(
              :KE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KG =
            T.let(
              :KG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KH =
            T.let(
              :KH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KI =
            T.let(
              :KI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KM =
            T.let(
              :KM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KN =
            T.let(
              :KN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KP =
            T.let(
              :KP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KR =
            T.let(
              :KR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KW =
            T.let(
              :KW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KY =
            T.let(
              :KY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          KZ =
            T.let(
              :KZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LA =
            T.let(
              :LA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LB =
            T.let(
              :LB,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LC =
            T.let(
              :LC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LI =
            T.let(
              :LI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LK =
            T.let(
              :LK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LR =
            T.let(
              :LR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LS =
            T.let(
              :LS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LT =
            T.let(
              :LT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LU =
            T.let(
              :LU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LV =
            T.let(
              :LV,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          LY =
            T.let(
              :LY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MA =
            T.let(
              :MA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MC =
            T.let(
              :MC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MD =
            T.let(
              :MD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ME =
            T.let(
              :ME,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MF =
            T.let(
              :MF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MG =
            T.let(
              :MG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MH =
            T.let(
              :MH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MK =
            T.let(
              :MK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ML =
            T.let(
              :ML,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MM =
            T.let(
              :MM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MN =
            T.let(
              :MN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MO =
            T.let(
              :MO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MP =
            T.let(
              :MP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MQ =
            T.let(
              :MQ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MR =
            T.let(
              :MR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MS =
            T.let(
              :MS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MT =
            T.let(
              :MT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MU =
            T.let(
              :MU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MV =
            T.let(
              :MV,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MW =
            T.let(
              :MW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MX =
            T.let(
              :MX,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MY =
            T.let(
              :MY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          MZ =
            T.let(
              :MZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NA =
            T.let(
              :NA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NC =
            T.let(
              :NC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NE =
            T.let(
              :NE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NF =
            T.let(
              :NF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NG =
            T.let(
              :NG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NI =
            T.let(
              :NI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NP =
            T.let(
              :NP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NR =
            T.let(
              :NR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NU =
            T.let(
              :NU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          NZ =
            T.let(
              :NZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          OM =
            T.let(
              :OM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PA =
            T.let(
              :PA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PE =
            T.let(
              :PE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PF =
            T.let(
              :PF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PG =
            T.let(
              :PG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PH =
            T.let(
              :PH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PK =
            T.let(
              :PK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PM =
            T.let(
              :PM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PN =
            T.let(
              :PN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PR =
            T.let(
              :PR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PS =
            T.let(
              :PS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PT =
            T.let(
              :PT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PW =
            T.let(
              :PW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          PY =
            T.let(
              :PY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          QA =
            T.let(
              :QA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          RE =
            T.let(
              :RE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          RO =
            T.let(
              :RO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          RS =
            T.let(
              :RS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          RU =
            T.let(
              :RU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          RW =
            T.let(
              :RW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SA =
            T.let(
              :SA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SB =
            T.let(
              :SB,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SC =
            T.let(
              :SC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SD =
            T.let(
              :SD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SE =
            T.let(
              :SE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SG =
            T.let(
              :SG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SH =
            T.let(
              :SH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SI =
            T.let(
              :SI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SJ =
            T.let(
              :SJ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SK =
            T.let(
              :SK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SL =
            T.let(
              :SL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SM =
            T.let(
              :SM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SN =
            T.let(
              :SN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SO =
            T.let(
              :SO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SR =
            T.let(
              :SR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SS =
            T.let(
              :SS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ST =
            T.let(
              :ST,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SX =
            T.let(
              :SX,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SY =
            T.let(
              :SY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          SZ =
            T.let(
              :SZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TC =
            T.let(
              :TC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TD =
            T.let(
              :TD,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TF =
            T.let(
              :TF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TG =
            T.let(
              :TG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TH =
            T.let(
              :TH,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TJ =
            T.let(
              :TJ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TK =
            T.let(
              :TK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TL =
            T.let(
              :TL,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TM =
            T.let(
              :TM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TN =
            T.let(
              :TN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TO =
            T.let(
              :TO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TR =
            T.let(
              :TR,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TT =
            T.let(
              :TT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TV =
            T.let(
              :TV,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TW =
            T.let(
              :TW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TZ =
            T.let(
              :TZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          UA =
            T.let(
              :UA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          UG =
            T.let(
              :UG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          UM =
            T.let(
              :UM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          UY =
            T.let(
              :UY,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          UZ =
            T.let(
              :UZ,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VA =
            T.let(
              :VA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VC =
            T.let(
              :VC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VE =
            T.let(
              :VE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VG =
            T.let(
              :VG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VI =
            T.let(
              :VI,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VN =
            T.let(
              :VN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          VU =
            T.let(
              :VU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          WF =
            T.let(
              :WF,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          WS =
            T.let(
              :WS,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          YE =
            T.let(
              :YE,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          YT =
            T.let(
              :YT,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ZA =
            T.let(
              :ZA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ZM =
            T.let(
              :ZM,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          ZW =
            T.let(
              :ZW,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AC =
            T.let(
              :AC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AN =
            T.let(
              :AN,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          AP =
            T.let(
              :AP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          CP =
            T.let(
              :CP,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          DG =
            T.let(
              :DG,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          EA =
            T.let(
              :EA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          EU =
            T.let(
              :EU,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          IC =
            T.let(
              :IC,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          JX =
            T.let(
              :JX,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          TA =
            T.let(
              :TA,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          QO =
            T.let(
              :QO,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          XK =
            T.let(
              :XK,
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )
          COUNTRY_0_C =
            T.let(
              :"0C",
              Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::KrakenEmbedStartAddressMetadata::Address::Country::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module DocumentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedStartAddressMetadata::DocumentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BANK_STATEMENT =
          T.let(
            :bank_statement,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        CREDIT_CARD_STATEMENT =
          T.let(
            :credit_card_statement,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        EMPLOYER_LETTER_OR_WORK_CONTRACT =
          T.let(
            :employer_letter_or_work_contract,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        GOVERNMENT_ISSUED_DOCUMENT =
          T.let(
            :government_issued_document,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        HOME_OR_RENTAL_INSURANCE =
          T.let(
            :home_or_rental_insurance,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        INTERNET_OR_CABLE_BILL =
          T.let(
            :internet_or_cable_bill,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        MOBILE_PHONE_BILL =
          T.let(
            :mobile_phone_bill,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        MORTGAGE_STATEMENT =
          T.let(
            :mortgage_statement,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        OFFICIAL_GOVERNMENT_LETTER =
          T.let(
            :official_government_letter,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        PASSPORT_ADDRESS_PAGE =
          T.let(
            :passport_address_page,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        RENTAL_OR_LEASE_AGREEMENT =
          T.let(
            :rental_or_lease_agreement,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        RESIDENCE_CERTIFICATE =
          T.let(
            :residence_certificate,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        SOCIAL_INSURANCE_PAYMENT_RECEIPT =
          T.let(
            :social_insurance_payment_receipt,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        TAX_RECEIPT =
          T.let(
            :tax_receipt,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        TAX_RETURN =
          T.let(
            :tax_return,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        UTILITY_BILL =
          T.let(
            :utility_bill,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartAddressMetadata::DocumentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
