# typed: strong

module Privy
  module Models
    class WalletAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletAuthenticateRequestBody, Privy::Internal::AnyHash)
        end

      # The encryption type for the authentication response. Currently only supports
      # HPKE.
      sig do
        returns(Privy::WalletAuthenticateRequestBody::EncryptionType::OrSymbol)
      end
      attr_accessor :encryption_type

      # The public key of your ECDH keypair, in base64-encoded, SPKI-format, whose
      # private key will be able to decrypt the session key.
      sig { returns(String) }
      attr_accessor :recipient_public_key

      # The user's JWT, to be used to authenticate the user.
      sig { returns(String) }
      attr_accessor :user_jwt

      # Request body for wallet authentication with HPKE-encrypted response.
      sig do
        params(
          encryption_type:
            Privy::WalletAuthenticateRequestBody::EncryptionType::OrSymbol,
          recipient_public_key: String,
          user_jwt: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The encryption type for the authentication response. Currently only supports
        # HPKE.
        encryption_type:,
        # The public key of your ECDH keypair, in base64-encoded, SPKI-format, whose
        # private key will be able to decrypt the session key.
        recipient_public_key:,
        # The user's JWT, to be used to authenticate the user.
        user_jwt:
      )
      end

      sig do
        override.returns(
          {
            encryption_type:
              Privy::WalletAuthenticateRequestBody::EncryptionType::OrSymbol,
            recipient_public_key: String,
            user_jwt: String
          }
        )
      end
      def to_hash
      end

      # The encryption type for the authentication response. Currently only supports
      # HPKE.
      module EncryptionType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::WalletAuthenticateRequestBody::EncryptionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HPKE =
          T.let(
            :HPKE,
            Privy::WalletAuthenticateRequestBody::EncryptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletAuthenticateRequestBody::EncryptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
