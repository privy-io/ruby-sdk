# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to wallets
        class Crypto
          # Operations related to wallets
          # @return [Privy::Resources::Wallets::DepositAccounts::Crypto::Orders]
          attr_reader :orders

          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::DepositAccounts::CryptoCreateParams} for more details.
          #
          # Creates deposit source wallets that sweep into the path wallet.
          #
          # @overload create(wallet_id, create_crypto_deposit_account_request_body:, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param create_crypto_deposit_account_request_body [Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody, Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody] Body param: Request body for creating a crypto deposit account.
          #
          # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
          #
          # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
          #
          # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::CreateCryptoDepositAccountResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::CryptoCreateParams
          def create(wallet_id, params)
            parsed, options = Privy::Wallets::DepositAccounts::CryptoCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/deposit_accounts/crypto", wallet_id],
              headers: parsed.except(:create_crypto_deposit_account_request_body).transform_keys(
                privy_authorization_signature: "privy-authorization-signature",
                privy_idempotency_key: "privy-idempotency-key",
                privy_request_expiry: "privy-request-expiry"
              ),
              body: parsed[:create_crypto_deposit_account_request_body],
              model: Privy::CreateCryptoDepositAccountResponse,
              options: options
            )
          end

          # Returns active crypto deposit accounts that sweep into the path wallet. Requires
          # an app secret or a JWT for a wallet signer, plus `privy-app-id`.
          #
          # @overload list(wallet_id, cursor: nil, limit: nil, request_options: {})
          #
          # @param wallet_id [String] ID of the wallet.
          #
          # @param cursor [String]
          #
          # @param limit [Integer]
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Internal::Cursor<Privy::Models::CryptoDepositAddressRoute>]
          #
          # @see Privy::Models::Wallets::DepositAccounts::CryptoListParams
          def list(wallet_id, params = {})
            parsed, options = Privy::Wallets::DepositAccounts::CryptoListParams.dump_request(params)
            query = Privy::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/wallets/%1$s/deposit_accounts/crypto", wallet_id],
              query: query,
              page: Privy::Internal::Cursor,
              model: Privy::CryptoDepositAddressRoute,
              options: options
            )
          end

          # Returns the tokens and chains a user can send from when creating a crypto
          # deposit account.
          #
          # @overload get_config(request_options: {})
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::CryptoDepositAccountConfigResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::CryptoGetConfigParams
          def get_config(params = {})
            @client.request(
              method: :get,
              path: "v1/deposit_accounts/crypto/config",
              model: Privy::CryptoDepositAccountConfigResponse,
              options: params[:request_options]
            )
          end

          # Fetch the earliest crypto deposit-account sweep into the path wallet after
          # `after`. Returns `{order: {id, status} | null}` — the same order object as GET
          # order. The path wallet is the destination (same as create). Accepts an app
          # secret or a user / wallet-signer JWT (`privy-app-id`).
          #
          # @overload get_next_order(wallet_id, after:, request_options: {})
          #
          # @param wallet_id [String] ID of the wallet.
          #
          # @param after [Time] Return the earliest sweep strictly after this timestamp.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::GetCryptoDepositAccountNextOrderResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::CryptoGetNextOrderParams
          def get_next_order(wallet_id, params)
            parsed, options = Privy::Wallets::DepositAccounts::CryptoGetNextOrderParams.dump_request(params)
            query = Privy::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/wallets/%1$s/deposit_accounts/crypto/next_order", wallet_id],
              query: query,
              model: Privy::GetCryptoDepositAccountNextOrderResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::DepositAccounts::CryptoQuoteParams} for more details.
          #
          # Returns an indicative route quote without creating a wallet. Amounts use token
          # standard units. Accepts an app secret or user token.
          #
          # @overload quote(destination:, source:, input_amount: nil, slippage_bps: nil, request_options: {})
          #
          # @param destination [Privy::Models::DepositAccountCryptoQuoteAsset] An asset and chain for an indicative crypto deposit-account quote.
          #
          # @param source [Privy::Models::DepositAccountCryptoQuoteAsset] An asset and chain for an indicative crypto deposit-account quote.
          #
          # @param input_amount [String] A positive decimal amount in the source token’s standard unit, not its smallest
          #
          # @param slippage_bps [Integer] Value in basis points: integer from 0 to 10000 (0% to 100%).
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::DepositAccountCryptoQuoteResponse]
          #
          # @see Privy::Models::Wallets::DepositAccounts::CryptoQuoteParams
          def quote(params)
            parsed, options = Privy::Wallets::DepositAccounts::CryptoQuoteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/deposit_accounts/crypto/quote",
              body: parsed,
              model: Privy::DepositAccountCryptoQuoteResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Privy::Client]
          def initialize(client:)
            @client = client
            @orders = Privy::Resources::Wallets::DepositAccounts::Crypto::Orders.new(client: client)
          end
        end
      end
    end
  end
end
