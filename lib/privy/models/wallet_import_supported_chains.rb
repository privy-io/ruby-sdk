# frozen_string_literal: true

module Privy
  module Models
    # The chain type of the wallet to import. Supports `ethereum`, `solana`,
    # `stellar`, `tron`, `sui`, and `aptos`.
    module WalletImportSupportedChains
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      SOLANA = :solana
      STELLAR = :stellar
      TRON = :tron
      SUI = :sui
      APTOS = :aptos

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
