# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to wallets
        class Crypto
          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::DepositAccounts::CryptoCreateParams} for more details.
          #
          # Creates deposit source wallets and attaches them to a sweep into the path
          # wallet. Requires a dest-owner privy-authorization-signature. Accepts a
          # dest-owner user JWT or an app secret (app-secret callers use the dest owner).
          # JWT-only requests 401 when the app requires an app secret for wallet actions.
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
