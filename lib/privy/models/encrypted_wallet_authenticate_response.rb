# frozen_string_literal: true

module Privy
  module Models
    class EncryptedWalletAuthenticateResponse < Privy::Internal::Type::BaseModel
      # @!attribute encrypted_authorization_key
      #   HPKE-encrypted authorization key with encapsulated key and ciphertext.
      #
      #   @return [Privy::Models::EncryptedAuthorizationKey]
      required :encrypted_authorization_key, -> { Privy::EncryptedAuthorizationKey }

      # @!attribute expires_at
      #   The expiration time of the authorization key in milliseconds since the epoch.
      #
      #   @return [Float]
      required :expires_at, Float

      # @!attribute wallets
      #
      #   @return [Array<Privy::Models::Wallet>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::Wallet] }

      # @!method initialize(encrypted_authorization_key:, expires_at:, wallets:)
      #   The response from authenticating a wallet with HPKE encryption, containing an
      #   encrypted authorization key and wallet data.
      #
      #   @param encrypted_authorization_key [Privy::Models::EncryptedAuthorizationKey] HPKE-encrypted authorization key with encapsulated key and ciphertext.
      #
      #   @param expires_at [Float] The expiration time of the authorization key in milliseconds since the epoch.
      #
      #   @param wallets [Array<Privy::Models::Wallet>]
    end
  end
end
