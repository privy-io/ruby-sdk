# typed: strong

module Privy
  module Models
    module Users
      class MfaPasskeyPubKeyCredParam < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::MfaPasskeyPubKeyCredParam,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(Float) }
        attr_accessor :alg

        sig { returns(Privy::Users::MfaPasskeyPubKeyCredParam::Type::OrSymbol) }
        attr_accessor :type

        # A public key credential parameter specifying the algorithm and credential type.
        sig do
          params(
            alg: Float,
            type: Privy::Users::MfaPasskeyPubKeyCredParam::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(alg:, type:)
        end

        sig do
          override.returns(
            {
              alg: Float,
              type: Privy::Users::MfaPasskeyPubKeyCredParam::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Users::MfaPasskeyPubKeyCredParam::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC_KEY =
            T.let(
              :"public-key",
              Privy::Users::MfaPasskeyPubKeyCredParam::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Users::MfaPasskeyPubKeyCredParam::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
