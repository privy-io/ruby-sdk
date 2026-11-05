# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfPosition < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::TmmfPosition, Privy::Internal::AnyHash)
          end

        # Chain the fund is held on, e.g. "ethereum_sepolia".
        sig { returns(String) }
        attr_accessor :chain

        # Fund ticker, e.g. "WTGXX". Case-insensitive.
        sig { returns(String) }
        attr_accessor :fund

        # Publication date of the NAV, e.g. "2026-09-25", or null without one or when the
        # provider call fails.
        sig { returns(T.nilable(String)) }
        attr_accessor :nav_date

        # Latest published NAV per share in USD, or null when the provider call fails.
        sig { returns(T.nilable(String)) }
        attr_accessor :nav_usd

        # Accrued, undistributed income in USD that is not yet spendable, or null when the
        # provider call fails.
        sig { returns(T.nilable(String)) }
        attr_accessor :pending_dividends_usd

        # Wallet actions for purchases and redemptions that are still pending.
        sig do
          returns(T::Array[Privy::Wallets::TmmfOrderActionResponse::Variants])
        end
        attr_accessor :pending_orders

        # Start date of the open accrual period, e.g. "2026-09-01", or null without one or
        # when the provider call fails.
        sig { returns(T.nilable(String)) }
        attr_accessor :pending_since

        # The fund provider.
        sig { returns(Privy::Wallets::TmmfProvider::Variants) }
        attr_accessor :provider

        # `shares` valued at `nav_usd`, or null when the provider call fails.
        sig { returns(T.nilable(String)) }
        attr_accessor :share_value_usd

        # Fund shares held on-chain by the wallet.
        sig { returns(String) }
        attr_accessor :shares

        # Estimated share value plus available pending dividends, excluding settlement
        # currency and in-transit assets; null without NAV.
        sig { returns(T.nilable(String)) }
        attr_accessor :total_position_value_usd

        # A wallet's position in one fund on one chain. Fields read from the provider are
        # null when that call fails.
        sig do
          params(
            chain: String,
            fund: String,
            nav_date: T.nilable(String),
            nav_usd: T.nilable(String),
            pending_dividends_usd: T.nilable(String),
            pending_orders:
              T::Array[
                T.any(
                  Privy::Wallets::TmmfDepositActionResponse::OrHash,
                  Privy::Wallets::TmmfWithdrawActionResponse::OrHash
                )
              ],
            pending_since: T.nilable(String),
            provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
            share_value_usd: T.nilable(String),
            shares: String,
            total_position_value_usd: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Chain the fund is held on, e.g. "ethereum_sepolia".
          chain:,
          # Fund ticker, e.g. "WTGXX". Case-insensitive.
          fund:,
          # Publication date of the NAV, e.g. "2026-09-25", or null without one or when the
          # provider call fails.
          nav_date:,
          # Latest published NAV per share in USD, or null when the provider call fails.
          nav_usd:,
          # Accrued, undistributed income in USD that is not yet spendable, or null when the
          # provider call fails.
          pending_dividends_usd:,
          # Wallet actions for purchases and redemptions that are still pending.
          pending_orders:,
          # Start date of the open accrual period, e.g. "2026-09-01", or null without one or
          # when the provider call fails.
          pending_since:,
          # The fund provider.
          provider:,
          # `shares` valued at `nav_usd`, or null when the provider call fails.
          share_value_usd:,
          # Fund shares held on-chain by the wallet.
          shares:,
          # Estimated share value plus available pending dividends, excluding settlement
          # currency and in-transit assets; null without NAV.
          total_position_value_usd:
        )
        end

        sig do
          override.returns(
            {
              chain: String,
              fund: String,
              nav_date: T.nilable(String),
              nav_usd: T.nilable(String),
              pending_dividends_usd: T.nilable(String),
              pending_orders:
                T::Array[Privy::Wallets::TmmfOrderActionResponse::Variants],
              pending_since: T.nilable(String),
              provider: Privy::Wallets::TmmfProvider::Variants,
              share_value_usd: T.nilable(String),
              shares: String,
              total_position_value_usd: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
