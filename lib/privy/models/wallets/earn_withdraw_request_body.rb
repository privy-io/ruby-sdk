# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnWithdrawRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute vault_id
        #   The ID of the vault to withdraw from.
        #
        #   @return [String]
        required :vault_id, String

        # @!attribute amount
        #   Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC). Exactly one
        #   of `amount` or `raw_amount` must be provided.
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute raw_amount
        #   Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC with 6
        #   decimals). Exactly one of `amount` or `raw_amount` must be provided.
        #
        #   @return [String, nil]
        optional :raw_amount, String

        # @!method initialize(vault_id:, amount: nil, raw_amount: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::EarnWithdrawRequestBody} for more details.
        #
        #   Input for withdrawing assets from an ERC-4626 vault. Exactly one of `amount` or
        #   `raw_amount` must be provided.
        #
        #   @param vault_id [String] The ID of the vault to withdraw from.
        #
        #   @param amount [String] Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC). Exactly one
        #
        #   @param raw_amount [String] Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC with 6 decimals
      end
    end
  end
end
