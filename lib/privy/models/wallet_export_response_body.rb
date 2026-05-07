# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#export
    class WalletExportResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute ciphertext
      #   The encrypted private key.
      #
      #   @return [String]
      required :ciphertext, String

      # @!attribute encapsulated_key
      #   The base64-encoded encapsulated key that was generated during encryption, for
      #   use during decryption.
      #
      #   @return [String]
      required :encapsulated_key, String

      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!method initialize(ciphertext:, encapsulated_key:, encryption_type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletExportResponseBody} for more details.
      #
      #   Response body containing the encrypted wallet private key.
      #
      #   @param ciphertext [String] The encrypted private key.
      #
      #   @param encapsulated_key [String] The base64-encoded encapsulated key that was generated during encryption, for us
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
    end
  end
end
