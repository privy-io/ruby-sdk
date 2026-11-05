# frozen_string_literal: true

module Privy
  module Services
    # Wraps `wallets.swap` so `execute` and `quote` are signed and carry
    # `privy-request-expiry`.
    class Swap < Privy::Resources::Wallets::Swap
      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      # Execute a token swap from a wallet.
      #
      # @param wallet_id [String] ID of the wallet.
      # @param swap_execute_params [Hash] Body parameters (Privy::Wallets::SwapExecuteParams shape).
      # @option swap_execute_params [String] :base_amount Amount to swap (required).
      # @option swap_execute_params [Hash] :source Source asset and chain (required).
      # @option swap_execute_params [Hash] :destination Destination asset and chain (required).
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
      # @param idempotency_key [String, nil] Ensures the request is executed only once.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::Wallets::SwapActionResponse]
      def execute(
        wallet_id,
        swap_execute_params:,
        authorization_context: nil,
        idempotency_key: nil,
        request_expiry: nil,
        request_options: nil
      )
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :post,
          url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}/swap"),
          body: swap_execute_params,
          authorization_context: authorization_context,
          idempotency_key: idempotency_key,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = swap_execute_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(wallet_id, combined_params)
      end

      # Get a swap quote for a wallet.
      #
      # @param wallet_id [String] ID of the wallet.
      # @param swap_quote_params [Hash] Body parameters (Privy::Wallets::SwapQuoteParams shape).
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::SwapQuoteResponse]
      def quote(
        wallet_id,
        swap_quote_params:,
        authorization_context: nil,
        request_expiry: nil,
        request_options: nil
      )
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :post,
          url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}/swap/quote"),
          body: swap_quote_params,
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = swap_quote_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(wallet_id, combined_params)
      end
    end
  end
end
