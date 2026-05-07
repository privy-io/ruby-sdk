# frozen_string_literal: true

module Privy
  module Models
    # The wallet chain types.
    module WalletChainType
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      SOLANA = :solana
      COSMOS = :cosmos
      STELLAR = :stellar
      SUI = :sui
      APTOS = :aptos
      MOVEMENT = :movement
      TRON = :tron
      BITCOIN_SEGWIT = :"bitcoin-segwit"
      BITCOIN_TAPROOT = :"bitcoin-taproot"
      PEARL = :pearl
      NEAR = :near
      TON = :ton
      STARKNET = :starknet
      SPARK = :spark

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
