# frozen_string_literal: true

module Privy
  module Models
    class ExportSeedPhraseRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Response containing HPKE-encrypted wallet data (private key or seed phrase).
      #
      #   @return [Privy::Models::SeedPhraseExportResponse]
      required :data, -> { Privy::SeedPhraseExportResponse }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ExportSeedPhraseRpcResponse::Method]
      required :method_, enum: -> { Privy::ExportSeedPhraseRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the `exportSeedPhrase` RPC.
      #
      #   @param data [Privy::Models::SeedPhraseExportResponse] Response containing HPKE-encrypted wallet data (private key or seed phrase).
      #
      #   @param method_ [Symbol, Privy::Models::ExportSeedPhraseRpcResponse::Method]

      # @see Privy::Models::ExportSeedPhraseRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        EXPORT_SEED_PHRASE = :exportSeedPhrase

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
