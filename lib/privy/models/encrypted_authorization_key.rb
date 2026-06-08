# frozen_string_literal: true

module Privy
  module Models
    class EncryptedAuthorizationKey < Privy::Internal::Type::BaseModel
      # @!attribute ciphertext
      #
      #   @return [String]
      required :ciphertext, String

      # @!attribute encapsulated_key
      #
      #   @return [String]
      required :encapsulated_key, String

      # @!attribute encryption_type
      #
      #   @return [Symbol, Privy::Models::EncryptedAuthorizationKey::EncryptionType]
      required :encryption_type, enum: -> { Privy::EncryptedAuthorizationKey::EncryptionType }

      # @!method initialize(ciphertext:, encapsulated_key:, encryption_type:)
      #   HPKE-encrypted authorization key with encapsulated key and ciphertext.
      #
      #   @param ciphertext [String]
      #   @param encapsulated_key [String]
      #   @param encryption_type [Symbol, Privy::Models::EncryptedAuthorizationKey::EncryptionType]

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
