# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementDepositAssetAmount < Privy::Internal::Type::BaseModel
        # @!attribute amount
        #   A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @return [String]
        required :amount, String

        # @!attribute deposit_asset
        #   Currency symbol, e.g. "USDC". Case-insensitive.
        #
        #   @return [String]
        required :deposit_asset, String

        # @!method initialize(amount:, deposit_asset:)
        #   An amount of the currency a tMMF deposit sends.
        #
        #   @param amount [String] A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @param deposit_asset [String] Currency symbol, e.g. "USDC". Case-insensitive.
      end
    end
  end
end
