# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class Earn
        # Operations related to wallet actions
        class Tmmf
          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::Earn::TmmfDepositParams} for more details.
          #
          # Sends `deposit_asset` from the registered wallet to the fund provider and tracks
          # delivery of the shares as a wallet action. The wallet owner or signers authorize
          # the request.
          #
          # @overload deposit(wallet_id, amount:, chain:, deposit_asset:, fund:, order_type:, nonce: nil, reference_id: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param amount [String] Body param: A positive decimal amount in the asset's standard unit, e.g. "1000.0
          #
          # @param chain [String] Body param: Chain the fund is held on, e.g. "ethereum_sepolia".
          #
          # @param deposit_asset [String] Body param: Currency symbol, e.g. "USDC". Case-insensitive.
          #
          # @param fund [String] Body param: Fund ticker, e.g. "WTGXX". Case-insensitive.
          #
          # @param order_type [Symbol, Privy::Models::Wallets::TmmfOrderType] Body param: How a tMMF order fills: `secondary` from the provider pool in minute
          #
          # @param nonce [String] Body param: Unique caller-generated nonce used to prevent replaying a signed wal
          #
          # @param reference_id [String] Body param: Developer-provided identifier for this request. Must be unique per a
          #
          # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
          #
          # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
          #
          # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::TmmfDepositActionResponse]
          #
          # @see Privy::Models::Wallets::Earn::TmmfDepositParams
          def deposit(wallet_id, params)
            parsed, options = Privy::Wallets::Earn::TmmfDepositParams.dump_request(params)
            header_params =
              {
                privy_authorization_signature: "privy-authorization-signature",
                privy_idempotency_key: "privy-idempotency-key",
                privy_request_expiry: "privy-request-expiry"
              }
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/earn/tmmf/deposit", wallet_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Privy::Wallets::TmmfDepositActionResponse,
              options: options
            )
          end

          # Returns a page of the wallet's tMMF positions for all providers: shares, their
          # USD value at the latest NAV, pending dividends, and pending orders.
          #
          # @overload list_positions(wallet_id, chain: nil, cursor: nil, fund: nil, limit: nil, provider: nil, request_options: {})
          #
          # @param wallet_id [String] ID of the wallet.
          #
          # @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
          #
          # @param cursor [String] Cursor returned by the previous page.
          #
          # @param fund [String] Fund ticker, e.g. "WTGXX". Case-insensitive.
          #
          # @param limit [Integer]
          #
          # @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::TmmfPositionResponse]
          #
          # @see Privy::Models::Wallets::Earn::TmmfListPositionsParams
          def list_positions(wallet_id, params = {})
            parsed, options = Privy::Wallets::Earn::TmmfListPositionsParams.dump_request(params)
            query = Privy::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/wallets/%1$s/earn/tmmf/positions", wallet_id],
              query: query,
              model: Privy::Wallets::TmmfPositionResponse,
              options: options
            )
          end

          # Registers the wallet with a tMMF provider on one chain. The provider must have
          # approved the wallet's user, e.g. an organization; the response reports whether
          # it also approved the wallet.
          #
          # @overload register(wallet_id, chain:, provider:, request_options: {})
          #
          # @param wallet_id [String] ID of the wallet.
          #
          # @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
          #
          # @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::TmmfWalletResponse]
          #
          # @see Privy::Models::Wallets::Earn::TmmfRegisterParams
          def register(wallet_id, params)
            parsed, options = Privy::Wallets::Earn::TmmfRegisterParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/earn/tmmf/register", wallet_id],
              body: parsed,
              model: Privy::Wallets::TmmfWalletResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::Earn::TmmfWithdrawParams} for more details.
          #
          # Sends fund shares from the registered wallet to the fund provider and tracks
          # delivery of `withdraw_asset` as a wallet action. The wallet owner or signers
          # authorize the request.
          #
          # @overload withdraw(wallet_id, chain:, fund:, order_type:, shares:, withdraw_asset:, nonce: nil, reference_id: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param chain [String] Body param: Chain the fund is held on, e.g. "ethereum_sepolia".
          #
          # @param fund [String] Body param: Fund ticker, e.g. "WTGXX". Case-insensitive.
          #
          # @param order_type [Symbol, Privy::Models::Wallets::TmmfOrderType] Body param: How a tMMF order fills: `secondary` from the provider pool in minute
          #
          # @param shares [String] Body param: A positive decimal amount in the asset's standard unit, e.g. "1000.0
          #
          # @param withdraw_asset [String] Body param: Currency symbol, e.g. "USDC". Case-insensitive.
          #
          # @param nonce [String] Body param: Unique caller-generated nonce used to prevent replaying a signed wal
          #
          # @param reference_id [String] Body param: Developer-provided identifier for this request. Must be unique per a
          #
          # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
          #
          # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
          #
          # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::TmmfWithdrawActionResponse]
          #
          # @see Privy::Models::Wallets::Earn::TmmfWithdrawParams
          def withdraw(wallet_id, params)
            parsed, options = Privy::Wallets::Earn::TmmfWithdrawParams.dump_request(params)
            header_params =
              {
                privy_authorization_signature: "privy-authorization-signature",
                privy_idempotency_key: "privy-idempotency-key",
                privy_request_expiry: "privy-request-expiry"
              }
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/earn/tmmf/withdraw", wallet_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Privy::Wallets::TmmfWithdrawActionResponse,
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
