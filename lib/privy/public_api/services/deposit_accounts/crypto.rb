# frozen_string_literal: true

module Privy
  module Services
    class DepositAccounts
      class Crypto < Privy::Resources::Wallets::DepositAccounts::Crypto
        attr_reader :privy_client

        def initialize(client:, privy_client:)
          super(client: client)
          @privy_client = privy_client
        end

        # Create a crypto deposit account for a wallet.
        #
        # @param wallet_id [String] ID of the wallet.
        # @param create_crypto_deposit_account_request_body [Hash] Request body
        #   (Privy::CreateCryptoDepositAccountRequestBody shape).
        # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
        # @param idempotency_key [String, nil] Ensures the request is executed only once.
        # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
        #   request expires. Defaults to the value computed by the client's
        #   PrivyRequestExpiryOptions.
        # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
        #
        # @return [Privy::Models::CreateCryptoDepositAccountResponse]
        def create(
          wallet_id,
          create_crypto_deposit_account_request_body:,
          authorization_context: nil,
          idempotency_key: nil,
          request_expiry: nil,
          request_options: nil
        )
          prepared = Privy::Authorization.prepare_request(
            privy_client,
            method: :post,
            url: Privy::Authorization.signed_url(
              privy_client,
              "v1/wallets/#{wallet_id}/deposit_accounts/crypto"
            ),
            body: create_crypto_deposit_account_request_body,
            authorization_context: authorization_context,
            idempotency_key: idempotency_key,
            request_expiry: privy_client.compute_request_expiry(request_expiry)
          )
          combined_params = {
            create_crypto_deposit_account_request_body: create_crypto_deposit_account_request_body,
            request_options: request_options
          }
          Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
          super(wallet_id, combined_params)
        end
      end
    end
  end
end
