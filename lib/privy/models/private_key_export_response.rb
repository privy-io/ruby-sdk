# frozen_string_literal: true

module Privy
  module Models
    class PrivateKeyExportResponse < Privy::Internal::Type::BaseModel
      # @!attribute ciphertext
      #
      #   @return [String]
      required :ciphertext, String

      # @!attribute encapsulated_key
      #
      #   @return [String]
      required :encapsulated_key, String

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!method initialize(ciphertext:, encapsulated_key:, encryption_type:)
      #   Response containing HPKE-encrypted wallet data (private key or seed phrase).
      #
      #   @param ciphertext [String]
      #
      #   @param encapsulated_key [String]
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
    end
  end
end
