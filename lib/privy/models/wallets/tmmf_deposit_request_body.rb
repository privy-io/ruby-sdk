# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfDepositRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute amount
        #   A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @return [String]
        required :amount, String

        # @!attribute chain
        #   Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @return [String]
        required :chain, String

        # @!attribute deposit_asset
        #   Currency symbol, e.g. "USDC". Case-insensitive.
        #
        #   @return [String]
        required :deposit_asset, String

        # @!attribute fund
        #   Fund ticker, e.g. "WTGXX". Case-insensitive.
        #
        #   @return [String]
        required :fund, String

        # @!attribute order_type
        #   How a tMMF order fills: `secondary` from the provider pool in minutes, or
        #   `primary` at the next NAV strike.
        #
        #   @return [Symbol, Privy::Models::Wallets::TmmfOrderType]
        required :order_type, enum: -> { Privy::Wallets::TmmfOrderType }

        # @!attribute nonce
        #   Unique caller-generated nonce used to prevent replaying a signed wallet action
        #   request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        #
        #   @return [String, nil]
        optional :nonce, String

        # @!attribute reference_id
        #   Developer-provided identifier for this request. Must be unique per app.
        #
        #   @return [String, nil]
        optional :reference_id, String

        # @!method initialize(amount:, chain:, deposit_asset:, fund:, order_type:, nonce: nil, reference_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TmmfDepositRequestBody} for more details.
        #
        #   Request body for buying tMMF shares with a currency the wallet holds.
        #
        #   @param amount [String] A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @param deposit_asset [String] Currency symbol, e.g. "USDC". Case-insensitive.
        #
        #   @param fund [String] Fund ticker, e.g. "WTGXX". Case-insensitive.
        #
        #   @param order_type [Symbol, Privy::Models::Wallets::TmmfOrderType] How a tMMF order fills: `secondary` from the provider pool in minutes, or `prima
        #
        #   @param nonce [String] Unique caller-generated nonce used to prevent replaying a signed wallet action r
        #
        #   @param reference_id [String] Developer-provided identifier for this request. Must be unique per app.
      end
    end
  end
end
