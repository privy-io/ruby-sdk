# frozen_string_literal: true

module Privy
  module Models
    class ExportPrivateKeyRpcInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::ExportPrivateKeyRpcInput::Method]
      required :method_, enum: -> { Privy::ExportPrivateKeyRpcInput::Method }, api_name: :method

      # @!attribute params
      #   Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      #
      #   @return [Privy::Models::PrivateKeyExportInput]
      required :params, -> { Privy::PrivateKeyExportInput }

      # @!method initialize(address:, method_:, params:)
      #   Exports the private key of the wallet.
      #
      #   @param address [String]
      #
      #   @param method_ [Symbol, Privy::Models::ExportPrivateKeyRpcInput::Method]
      #
      #   @param params [Privy::Models::PrivateKeyExportInput] Input for exporting a wallet (private key or seed phrase) with HPKE encryption.

      # @see Privy::Models::ExportPrivateKeyRpcInput#method_
      module Method
        extend Privy::Internal::Type::Enum

        EXPORT_PRIVATE_KEY = :exportPrivateKey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
