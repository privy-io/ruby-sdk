# frozen_string_literal: true

module Privy
  module Models
    class ExportSeedPhraseRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ExportSeedPhraseRpcInput::Method]
      required :method_, enum: -> { Privy::ExportSeedPhraseRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      #
      #   @return [Privy::Models::SeedPhraseExportInput]
      required :params, -> { Privy::SeedPhraseExportInput }

      # @!method initialize(address:, method_:, params:)
      #   Exports the seed phrase of the wallet.
      #
      #   @param address [String]
      #
      #   @param method_ [Symbol, Privy::Models::ExportSeedPhraseRpcInput::Method]
      #
      #   @param params [Privy::Models::SeedPhraseExportInput] Input for exporting a wallet (private key or seed phrase) with HPKE encryption.

      # @see Privy::Models::ExportSeedPhraseRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        EXPORT_SEED_PHRASE = :exportSeedPhrase

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
