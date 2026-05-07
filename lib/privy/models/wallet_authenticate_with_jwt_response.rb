# frozen_string_literal: true

module Privy
  module Models
    # The response from authenticating a wallet, containing an authorization key and
    # wallet data.
    #
    # @see Privy::Resources::Wallets#authenticate_with_jwt
    module WalletAuthenticateWithJwtResponse
      extend Privy::Internal::Type::Union

      variant -> { Privy::WalletAuthenticateWithJwtResponse::WithEncryption }

      variant -> { Privy::WalletAuthenticateWithJwtResponse::WithoutEncryption }

      class WithEncryption < Privy::Internal::Type::BaseModel
        # @!attribute encrypted_authorization_key
        #   The encrypted authorization key data.
        #
        #   @return [Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey]
        required :encrypted_authorization_key,
                 -> { Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey }

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
        #   @param encrypted_authorization_key [Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey] The encrypted authorization key data.
        #
        #   @param expires_at [Float] The expiration time of the authorization key in milliseconds since the epoch.
        #
        #   @param wallets [Array<Privy::Models::Wallet>]

        # @see Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption#encrypted_authorization_key
        class EncryptedAuthorizationKey < Privy::Internal::Type::BaseModel
          # @!attribute ciphertext
          #   The encrypted authorization key corresponding to the user's current
          #   authentication session.
          #
          #   @return [String]
          required :ciphertext, String

          # @!attribute encapsulated_key
          #   Base64-encoded ephemeral public key used in the HPKE encryption process.
          #   Required for decryption.
          #
          #   @return [String]
          required :encapsulated_key, String

          # @!attribute encryption_type
          #   The encryption type used. Currently only supports HPKE.
          #
          #   @return [Symbol, Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType]
          required :encryption_type,
                   enum: -> { Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType }

          # @!method initialize(ciphertext:, encapsulated_key:, encryption_type:)
          #   Some parameter documentations has been truncated, see
          #   {Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey}
          #   for more details.
          #
          #   The encrypted authorization key data.
          #
          #   @param ciphertext [String] The encrypted authorization key corresponding to the user's current authenticati
          #
          #   @param encapsulated_key [String] Base64-encoded ephemeral public key used in the HPKE encryption process. Require
          #
          #   @param encryption_type [Symbol, Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType] The encryption type used. Currently only supports HPKE.

          # The encryption type used. Currently only supports HPKE.
          #
          # @see Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey#encryption_type
          module EncryptionType
            extend Privy::Internal::Type::Enum

            HPKE = :HPKE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class WithoutEncryption < Privy::Internal::Type::BaseModel
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
        #   @param authorization_key [String] The raw authorization key data.
        #
        #   @param expires_at [Float] The expiration time of the authorization key in milliseconds since the epoch.
        #
        #   @param wallets [Array<Privy::Models::Wallet>]
      end

      # @!method self.variants
      #   @return [Array(Privy::Models::WalletAuthenticateWithJwtResponse::WithEncryption, Privy::Models::WalletAuthenticateWithJwtResponse::WithoutEncryption)]
    end
  end
end
