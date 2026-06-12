# typed: strong

module Privy
  module Models
    class RawWalletAuthenticateResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RawWalletAuthenticateResponse, Privy::Internal::AnyHash)
        end

      # The raw authorization key data.
      sig { returns(String) }
      attr_accessor :authorization_key

      # The expiration time of the authorization key in milliseconds since the epoch.
      sig { returns(Float) }
      attr_accessor :expires_at

      sig { returns(T::Array[Privy::Wallet]) }
      attr_accessor :wallets

      # The response from authenticating a wallet without encryption, containing a raw
      # authorization key and wallet data.
      sig do
        params(
          authorization_key: String,
          expires_at: Float,
          wallets: T::Array[Privy::Wallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The raw authorization key data.
        authorization_key:,
        # The expiration time of the authorization key in milliseconds since the epoch.
        expires_at:,
        wallets:
      )
      end

      sig do
        override.returns(
          {
            authorization_key: String,
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
