# frozen_string_literal: true

module Privy
  module Models
    class WalletExportRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!attribute recipient_public_key
      #   The base64-encoded encryption public key to encrypt the wallet private key with.
      #
      #   @return [String]
      required :recipient_public_key, String

      # @!attribute export_seed_phrase
      #
      #   @return [Boolean, nil]
      optional :export_seed_phrase, Privy::Internal::Type::Boolean

      # @!method initialize(encryption_type:, recipient_public_key:, export_seed_phrase: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletExportRequestBody} for more details.
      #
      #   Request body for exporting a wallet private key.
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @param recipient_public_key [String] The base64-encoded encryption public key to encrypt the wallet private key with.
      #
      #   @param export_seed_phrase [Boolean]
    end
  end
end
