# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfPosition < Privy::Internal::Type::BaseModel
        # @!attribute chain
        #   Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @return [String]
        required :chain, String

        # @!attribute fund
        #   Fund ticker, e.g. "WTGXX". Case-insensitive.
        #
        #   @return [String]
        required :fund, String

        # @!attribute nav_date
        #   Publication date of the NAV, e.g. "2026-09-25", or null without one or when the
        #   provider call fails.
        #
        #   @return [String, nil]
        required :nav_date, String, nil?: true

        # @!attribute nav_usd
        #   Latest published NAV per share in USD, or null when the provider call fails.
        #
        #   @return [String, nil]
        required :nav_usd, String, nil?: true

        # @!attribute pending_dividends_usd
        #   Accrued, undistributed income in USD that is not yet spendable, or null when the
        #   provider call fails.
        #
        #   @return [String, nil]
        required :pending_dividends_usd, String, nil?: true

        # @!attribute pending_orders
        #   Wallet actions for purchases and redemptions that are still pending.
        #
        #   @return [Array<Privy::Models::Wallets::TmmfDepositActionResponse, Privy::Models::Wallets::TmmfWithdrawActionResponse>]
        required :pending_orders,
                 -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::TmmfOrderActionResponse] }

        # @!attribute pending_since
        #   Start date of the open accrual period, e.g. "2026-09-01", or null without one or
        #   when the provider call fails.
        #
        #   @return [String, nil]
        required :pending_since, String, nil?: true

        # @!attribute provider
        #   The fund provider.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::TmmfProvider]
        required :provider, union: -> { Privy::Wallets::TmmfProvider }

        # @!attribute share_value_usd
        #   `shares` valued at `nav_usd`, or null when the provider call fails.
        #
        #   @return [String, nil]
        required :share_value_usd, String, nil?: true

        # @!attribute shares
        #   Fund shares held on-chain by the wallet.
        #
        #   @return [String]
        required :shares, String

        # @!attribute total_position_value_usd
        #   Estimated share value plus available pending dividends, excluding settlement
        #   currency and in-transit assets; null without NAV.
        #
        #   @return [String, nil]
        required :total_position_value_usd, String, nil?: true

        # @!method initialize(chain:, fund:, nav_date:, nav_usd:, pending_dividends_usd:, pending_orders:, pending_since:, provider:, share_value_usd:, shares:, total_position_value_usd:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TmmfPosition} for more details.
        #
        #   A wallet's position in one fund on one chain. Fields read from the provider are
        #   null when that call fails.
        #
        #   @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @param fund [String] Fund ticker, e.g. "WTGXX". Case-insensitive.
        #
        #   @param nav_date [String, nil] Publication date of the NAV, e.g. "2026-09-25", or null without one or when the
        #
        #   @param nav_usd [String, nil] Latest published NAV per share in USD, or null when the provider call fails.
        #
        #   @param pending_dividends_usd [String, nil] Accrued, undistributed income in USD that is not yet spendable, or null when the
        #
        #   @param pending_orders [Array<Privy::Models::Wallets::TmmfDepositActionResponse, Privy::Models::Wallets::TmmfWithdrawActionResponse>] Wallet actions for purchases and redemptions that are still pending.
        #
        #   @param pending_since [String, nil] Start date of the open accrual period, e.g. "2026-09-01", or null without one or
        #
        #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
        #
        #   @param share_value_usd [String, nil] `shares` valued at `nav_usd`, or null when the provider call fails.
        #
        #   @param shares [String] Fund shares held on-chain by the wallet.
        #
        #   @param total_position_value_usd [String, nil] Estimated share value plus available pending dividends, excluding settlement cur
      end
    end
  end
end
