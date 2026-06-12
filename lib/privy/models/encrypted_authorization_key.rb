# frozen_string_literal: true

module Privy
  module Models
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
      #   @return [Symbol, Privy::Models::EncryptedAuthorizationKey::EncryptionType]
      required :encryption_type, enum: -> { Privy::EncryptedAuthorizationKey::EncryptionType }

      # @!method initialize(ciphertext:, encapsulated_key:, encryption_type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EncryptedAuthorizationKey} for more details.
      #
      #   HPKE-encrypted authorization key with encapsulated key and ciphertext.
      #
      #   @param ciphertext [String] The encrypted authorization key corresponding to the user's current authenticati
      #
      #   @param encapsulated_key [String] Base64-encoded ephemeral public key used in the HPKE encryption process. Require
      #
      #   @param encryption_type [Symbol, Privy::Models::EncryptedAuthorizationKey::EncryptionType] The encryption type used. Currently only supports HPKE.

      # The encryption type used. Currently only supports HPKE.
      #
      # @see Privy::Models::EncryptedAuthorizationKey#encryption_type
      module EncryptionType
        extend Privy::Internal::Type::Enum

        HPKE = :HPKE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
