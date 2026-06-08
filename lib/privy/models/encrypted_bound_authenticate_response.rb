# frozen_string_literal: true

module Privy
  module Models
    class EncryptedBoundAuthenticateResponse < Privy::Internal::Type::BaseModel
      # @!attribute bindings
      #
      #   @return [Array<Privy::Models::UserSigningKeyBinding>]
      required :bindings, -> { Privy::Internal::Type::ArrayOf[Privy::UserSigningKeyBinding] }

      # @!attribute encrypted_authorization_key
      #   HPKE-encrypted authorization key with encapsulated key and ciphertext.
      #
      #   @return [Privy::Models::EncryptedAuthorizationKey]
      required :encrypted_authorization_key, -> { Privy::EncryptedAuthorizationKey }

      # @!attribute expires_at
      #
      #   @return [Float]
      required :expires_at, Float

      # @!attribute wallets
      #
      #   @return [Array<Privy::Models::Wallet>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::Wallet] }

      # @!method initialize(bindings:, encrypted_authorization_key:, expires_at:, wallets:)
      #   Encrypted response from bound wallet authentication, with bindings.
      #
      #   @param bindings [Array<Privy::Models::UserSigningKeyBinding>]
      #
      #   @param encrypted_authorization_key [Privy::Models::EncryptedAuthorizationKey] HPKE-encrypted authorization key with encapsulated key and ciphertext.
      #
      #   @param expires_at [Float]
      #
      #   @param wallets [Array<Privy::Models::Wallet>]
    end
  end
end
