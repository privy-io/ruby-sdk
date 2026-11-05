# frozen_string_literal: true

module Privy
  module Services
    class Payout
      class Fiat < Privy::Resources::Wallets::Payout::Fiat
        attr_reader :privy_client

        def initialize(client:, privy_client:)
          super(client: client)
          @privy_client = privy_client
        end

        # Create a fiat payout from a wallet.
        #
        # @param wallet_id [String] ID of the wallet to pay out from.
        # @param fiat_payout_params [Hash] Body parameters.
        # @option fiat_payout_params [Hash] :source Source asset, amount, and chain (required).
        # @option fiat_payout_params [Hash] :destination Destination bank account (required).
        # @option fiat_payout_params [String, nil] :developer_fee_percent Developer fee percentage.
        # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
        # @param idempotency_key [String, nil] Ensures the request is executed only once.
        # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
        #   request expires. Defaults to the value computed by the client's
        #   PrivyRequestExpiryOptions.
        # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
        #
        # @return [Privy::Models::Wallets::PayoutResponse]
        def create(
          wallet_id,
          fiat_payout_params:,
          authorization_context: nil,
          idempotency_key: nil,
          request_expiry: nil,
          request_options: nil
        )
          prepared = Privy::Authorization.prepare_request(
            privy_client,
            method: :post,
            url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}/payout/fiat"),
            body: fiat_payout_params,
            authorization_context: authorization_context,
            idempotency_key: idempotency_key,
            request_expiry: privy_client.compute_request_expiry(request_expiry)
          )
          combined_params = fiat_payout_params.merge(request_options: request_options)
          Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
          super(wallet_id, combined_params)
        end
      end
    end
  end
end
