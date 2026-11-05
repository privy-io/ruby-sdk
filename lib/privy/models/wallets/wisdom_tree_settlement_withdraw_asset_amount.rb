# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementWithdrawAssetAmount < Privy::Internal::Type::BaseModel
        # @!attribute amount
        #   A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @return [String]
        required :amount, String

        # @!attribute withdraw_asset
        #   Currency symbol, e.g. "USDC". Case-insensitive.
        #
        #   @return [String]
        required :withdraw_asset, String

        # @!method initialize(amount:, withdraw_asset:)
        #   An amount of the currency a tMMF withdrawal receives.
        #
        #   @param amount [String] A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @param withdraw_asset [String] Currency symbol, e.g. "USDC". Case-insensitive.
      end
    end
  end
end
