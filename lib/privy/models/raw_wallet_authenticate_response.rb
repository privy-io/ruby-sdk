# frozen_string_literal: true

module Privy
  module Models
    class RawWalletAuthenticateResponse < Privy::Internal::Type::BaseModel
      # @!attribute authorization_key
      #   The raw authorization key data.
      #
      #   @return [String]
      required :authorization_key, String

      # @!attribute expires_at
      #   The expiration time of the authorization key in milliseconds since the epoch.
      #
      #   @return [Float]
      required :expires_at, Float

      # @!attribute wallets
      #
      #   @return [Array<Privy::Models::Wallet>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::Wallet] }

      # @!method initialize(authorization_key:, expires_at:, wallets:)
      #   The response from authenticating a wallet without encryption, containing a raw
      #   authorization key and wallet data.
      #
      #   @param authorization_key [String] The raw authorization key data.
      #
      #   @param expires_at [Float] The expiration time of the authorization key in milliseconds since the epoch.
      #
      #   @param wallets [Array<Privy::Models::Wallet>]
    end
  end
end
