# typed: strong

module Privy
  module Resources
    class Wallets
      # Operations related to wallets
      class Balance
        # Get the balance of a wallet by wallet ID.
        sig do
          params(
            wallet_id: String,
            token: Privy::Wallets::BalanceGetParams::Token::Variants,
            asset:
              T.any(
                Privy::Wallets::BalanceGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              ),
            chain:
              T.any(
                Privy::WalletAssetChainNameInput::OrSymbol,
                T::Array[Privy::WalletAssetChainNameInput::OrSymbol]
              ),
            include_archived: T::Boolean,
            include_currency:
              Privy::Wallets::BalanceGetParams::IncludeCurrency::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::Models::Wallets::BalanceGetResponse)
        end
        def get(
          # ID of the wallet.
          wallet_id,
          # The token contract address(es) to query in format "chain:address" (e.g.,
          # "tempo:0x20c000000000000000000000b9537d11c60e8b50" or
          # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"). Cannot be used together
          # with `asset`/`chain` or with `include_currency`.
          token: nil,
          # Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
          # the query. Cannot be used with `token`.
          asset: nil,
          # Chain(s) to query named assets on (e.g. `tempo`, `base`). Use together with
          # `asset`. Cannot be used with `token`.
          chain: nil,
          # Include archived wallets in lookup. Defaults to false.
          include_archived: nil,
          # If set, balances are converted to the specified fiat currency. Not supported
          # when `token` is provided.
          include_currency: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
