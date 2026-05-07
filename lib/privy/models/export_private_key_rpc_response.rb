# frozen_string_literal: true

module Privy
  module Models
    class ExportPrivateKeyRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      #
      #   @return [Privy::Models::PrivateKeyExportInput]
      required :data, -> { Privy::PrivateKeyExportInput }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ExportPrivateKeyRpcResponse::Method]
      required :method_, enum: -> { Privy::ExportPrivateKeyRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the `exportPrivateKey` RPC.
      #
      #   @param data [Privy::Models::PrivateKeyExportInput] Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      #
      #   @param method_ [Symbol, Privy::Models::ExportPrivateKeyRpcResponse::Method]

      # @see Privy::Models::ExportPrivateKeyRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        EXPORT_PRIVATE_KEY = :exportPrivateKey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
