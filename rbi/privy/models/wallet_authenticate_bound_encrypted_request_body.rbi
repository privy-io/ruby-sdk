# typed: strong

module Privy
  module Models
    class WalletAuthenticateBoundEncryptedRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAuthenticateBoundEncryptedRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # Bindings that scope the USK. The key can only authorize the bound values.
      sig { returns(T::Array[Privy::UserSigningKeyBinding]) }
      attr_accessor :bindings

      sig do
        returns(
          Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType::OrSymbol
        )
      end
      attr_accessor :encryption_type

      sig { returns(String) }
      attr_accessor :recipient_public_key

      sig { returns(String) }
      attr_accessor :user_jwt

      # Request body for creating an encrypted, bound user signing key.
      sig do
        params(
          bindings: T::Array[Privy::UserSigningKeyBinding::OrHash],
          encryption_type:
            Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType::OrSymbol,
          recipient_public_key: String,
          user_jwt: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Bindings that scope the USK. The key can only authorize the bound values.
        bindings:,
        encryption_type:,
        recipient_public_key:,
        user_jwt:
      )
      end

      sig do
        override.returns(
          {
            bindings: T::Array[Privy::UserSigningKeyBinding],
            encryption_type:
              Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType::OrSymbol,
            recipient_public_key: String,
            user_jwt: String
          }
        )
      end
      def to_hash
      end

      module EncryptionType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HPKE =
          T.let(
            :HPKE,
            Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
