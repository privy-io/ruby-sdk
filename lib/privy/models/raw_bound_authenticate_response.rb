# frozen_string_literal: true

module Privy
  module Models
    class RawBoundAuthenticateResponse < Privy::Internal::Type::BaseModel
      # @!attribute authorization_key
      #
      #   @return [String]
      required :authorization_key, String

      # @!attribute bindings
      #
      #   @return [Array<Privy::Models::UserSigningKeyBinding>]
      required :bindings, -> { Privy::Internal::Type::ArrayOf[Privy::UserSigningKeyBinding] }

      # @!attribute expires_at
      #
      #   @return [Float]
      required :expires_at, Float

      # @!attribute wallets
      #
      #   @return [Array<Privy::Models::Wallet>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::Wallet] }

      # @!method initialize(authorization_key:, bindings:, expires_at:, wallets:)
      #   Unencrypted response from bound wallet authentication, with bindings.
      #
      #   @param authorization_key [String]
      #   @param bindings [Array<Privy::Models::UserSigningKeyBinding>]
      #   @param expires_at [Float]
      #   @param wallets [Array<Privy::Models::Wallet>]
    end
  end
end
