# typed: strong

module Privy
  module Models
    class EncryptedBoundAuthenticateResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EncryptedBoundAuthenticateResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::UserSigningKeyBinding]) }
      attr_accessor :bindings

      # HPKE-encrypted authorization key with encapsulated key and ciphertext.
      sig { returns(Privy::EncryptedAuthorizationKey) }
      attr_reader :encrypted_authorization_key

      sig do
        params(
          encrypted_authorization_key: Privy::EncryptedAuthorizationKey::OrHash
        ).void
      end
      attr_writer :encrypted_authorization_key

      sig { returns(Float) }
      attr_accessor :expires_at

      sig { returns(T::Array[Privy::Wallet]) }
      attr_accessor :wallets

      # Encrypted response from bound wallet authentication, with bindings.
      sig do
        params(
          bindings: T::Array[Privy::UserSigningKeyBinding::OrHash],
          encrypted_authorization_key: Privy::EncryptedAuthorizationKey::OrHash,
          expires_at: Float,
          wallets: T::Array[Privy::Wallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        bindings:,
        # HPKE-encrypted authorization key with encapsulated key and ciphertext.
        encrypted_authorization_key:,
        expires_at:,
        wallets:
      )
      end

      sig do
        override.returns(
          {
            bindings: T::Array[Privy::UserSigningKeyBinding],
            encrypted_authorization_key: Privy::EncryptedAuthorizationKey,
            expires_at: Float,
            wallets: T::Array[Privy::Wallet]
          }
        )
      end
      def to_hash
      end
    end
  end
end
