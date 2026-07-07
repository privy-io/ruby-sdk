# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      # Operations related to wallets
      class Transactions
        # Some parameter documentations has been truncated, see
        # {Privy::Models::Wallets::TransactionGetParams} for more details.
        #
        # Get incoming and outgoing transactions of a wallet by wallet ID.
        #
        # @overload get(wallet_id, chain:, token: nil, asset: nil, cursor: nil, include_archived: nil, limit: nil, tx_hash: nil, request_options: {})
        #
        # @param wallet_id [String] ID of the wallet.
        #
        # @param chain [Symbol, Privy::Models::TransactionChainNameInput] Chains supported for transaction history queries.
        #
        # @param token [String, Array<String>] Exactly one of `token` or `asset` is required. Cannot be used together with `ass
        #
        # @param asset [Symbol, Array<Symbol, Privy::Models::WalletAsset>, Privy::Models::Wallets::TransactionGetParams::Asset] Exactly one of `asset` or `token` is required. Cannot be used together with `tok
        #
        # @param cursor [String]
        #
        # @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
        #
        # @param limit [Float, nil]
        #
        # @param tx_hash [String]
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::Wallets::TransactionGetResponse]
        #
        # @see Privy::Models::Wallets::TransactionGetParams
        def get(wallet_id, params)
          parsed, options = Privy::Wallets::TransactionGetParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/wallets/%1$s/transactions", wallet_id],
            query: query,
            model: Privy::Models::Wallets::TransactionGetResponse,
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
