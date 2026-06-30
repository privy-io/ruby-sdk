# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      # Operations related to wallets
      class Balance
        # Some parameter documentations has been truncated, see
        # {Privy::Models::Wallets::BalanceGetParams} for more details.
        #
        # Get the balance of a wallet by wallet ID.
        #
        # @overload get(wallet_id, token: nil, asset: nil, chain: nil, include_archived: nil, include_currency: nil, request_options: {})
        #
        # @param wallet_id [String] ID of the wallet.
        #
        # @param token [String, Array<String>] The token contract address(es) to query in format "chain:address" (e.g., "base:0
        #
        # @param asset [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::BalanceGetParams::Asset] Named asset(s) to query (e.g. `eth`, `usdc`). Use together with `chain` to scope
        #
        # @param chain [Symbol, Privy::Models::WalletAssetChainNameInput, Array<Symbol, Privy::Models::WalletAssetChainNameInput>] Chain(s) to query named assets on (e.g. `base`, `ethereum`). Use together with `
        #
        # @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
        #
        # @param include_currency [Symbol, Privy::Models::Wallets::BalanceGetParams::IncludeCurrency] If set, balances are converted to the specified fiat currency. Not supported whe
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::Wallets::BalanceGetResponse]
        #
        # @see Privy::Models::Wallets::BalanceGetParams
        def get(wallet_id, params = {})
          parsed, options = Privy::Wallets::BalanceGetParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/wallets/%1$s/balance", wallet_id],
            query: query,
            model: Privy::Models::Wallets::BalanceGetResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
