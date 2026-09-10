# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        class Crypto
          # Operations related to wallets
          class Orders
            # Fetch a crypto deposit-account sweep by wallet action ID. Returns
            # `{id, status}`. The path wallet is the destination (same as create). Accepts an
            # app secret or a user / wallet-signer JWT (`privy-app-id`).
            #
            # @overload get(order_id, wallet_id:, request_options: {})
            #
            # @param order_id [String] Wallet action ID of the deposit sweep.
            #
            # @param wallet_id [String] ID of the wallet.
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::GetCryptoDepositAccountOrderResponse]
            #
            # @see Privy::Models::Wallets::DepositAccounts::Crypto::OrderGetParams
            def get(order_id, params)
              parsed, options = Privy::Wallets::DepositAccounts::Crypto::OrderGetParams.dump_request(params)
              wallet_id =
                parsed.delete(:wallet_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["v1/wallets/%1$s/deposit_accounts/crypto/orders/%2$s", wallet_id, order_id],
                model: Privy::GetCryptoDepositAccountOrderResponse,
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
  end
end
