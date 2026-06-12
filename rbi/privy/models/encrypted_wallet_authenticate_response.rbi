# typed: strong

module Privy
  module Models
    class EncryptedWalletAuthenticateResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EncryptedWalletAuthenticateResponse,
            Privy::Internal::AnyHash
          )
        end

      # HPKE-encrypted authorization key with encapsulated key and ciphertext.
      sig { returns(Privy::EncryptedAuthorizationKey) }
      attr_reader :encrypted_authorization_key

      sig do
        params(
          encrypted_authorization_key: Privy::EncryptedAuthorizationKey::OrHash
        ).void
      end
      attr_writer :encrypted_authorization_key

      # The expiration time of the authorization key in milliseconds since the epoch.
      sig { returns(Float) }
      attr_accessor :expires_at

      sig { returns(T::Array[Privy::Wallet]) }
      attr_accessor :wallets

      # The response from authenticating a wallet with HPKE encryption, containing an
      # encrypted authorization key and wallet data.
      sig do
        params(
          encrypted_authorization_key: Privy::EncryptedAuthorizationKey::OrHash,
          expires_at: Float,
          wallets: T::Array[Privy::Wallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # HPKE-encrypted authorization key with encapsulated key and ciphertext.
        encrypted_authorization_key:,
        # The expiration time of the authorization key in milliseconds since the epoch.
        expires_at:,
        wallets:
      )
      end

      sig do
        override.returns(
          {
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
