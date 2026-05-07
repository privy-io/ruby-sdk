# frozen_string_literal: true

module Privy
  module Models
    class SeedPhraseExportInput < Privy::Internal::Type::BaseModel
      # @!attribute encryption_type
      #   The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @return [Symbol, Privy::Models::HpkeEncryption]
      required :encryption_type, enum: -> { Privy::HpkeEncryption }

      # @!attribute recipient_public_key
      #   The recipient public key for HPKE encryption, in PEM or DER (base64-encoded)
      #   format.
      #
      #   @return [String]
      required :recipient_public_key, String

      # @!attribute export_seed_phrase
      #
      #   @return [Boolean, nil]
      optional :export_seed_phrase, Privy::Internal::Type::Boolean

      # @!attribute export_type
      #   The export type. 'display' is for showing the key to the user in the UI,
      #   'client' is for exporting to the client application.
      #
      #   @return [Symbol, Privy::Models::ExportType, nil]
      optional :export_type, enum: -> { Privy::ExportType }

      # @!method initialize(encryption_type:, recipient_public_key:, export_seed_phrase: nil, export_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SeedPhraseExportInput} for more details.
      #
      #   Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      #
      #   @param encryption_type [Symbol, Privy::Models::HpkeEncryption] The encryption type of the wallet to import. Currently only supports `HPKE`.
      #
      #   @param recipient_public_key [String] The recipient public key for HPKE encryption, in PEM or DER (base64-encoded) for
      #
      #   @param export_seed_phrase [Boolean]
      #
      #   @param export_type [Symbol, Privy::Models::ExportType] The export type. 'display' is for showing the key to the user in the UI, 'client
    end
  end
end
