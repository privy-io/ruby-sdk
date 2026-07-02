# frozen_string_literal: true

module Privy
  module Models
    # A named asset on Tron.
    module WalletTronAsset
      extend Privy::Internal::Type::Enum

      TRX = :trx
      USDT = :usdt
      USDC = :usdc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
