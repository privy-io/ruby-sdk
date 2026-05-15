# frozen_string_literal: true

module Privy
  module Services
    class Wallets < Privy::Resources::Wallets
      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      # Create a new wallet on the requested chain and for the requested owner.
      #
      # @example Create an ownerless Ethereum wallet
      #   client.wallets.create(wallet_create_params: {chain_type: :ethereum})
      #
      # @example Create a wallet with a P-256 key owner
      #   client.wallets.create(wallet_create_params: {
      #     chain_type: :ethereum,
      #     owner: {public_key: base64_p256_public_key}
      #   })
      #
      # @param wallet_create_params [Hash] Body parameters for wallet creation.
      # @option wallet_create_params [Symbol] :chain_type The wallet chain type (required).
      # @option wallet_create_params [Hash, nil] :owner Owner specified as {user_id:} or {public_key:}.
      # @option wallet_create_params [String, nil] :owner_id Key quorum ID to set as owner.
      # @option wallet_create_params [Array<String>, nil] :policy_ids Up to one policy ID to enforce.
      # @option wallet_create_params [String, nil] :display_name A human-readable label for the wallet.
      # @option wallet_create_params [String, nil] :external_id Customer-provided identifier for external mapping.
      # @option wallet_create_params [Array<Hash>, nil] :additional_signers Additional signers for the wallet.
      # @param idempotency_key [String, nil] Ensures the request is executed only once.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::Wallet]
      def create(wallet_create_params:, idempotency_key: nil, request_options: nil)
        combined_params = wallet_create_params.merge(request_options: request_options)
        combined_params[:privy_idempotency_key] = idempotency_key if idempotency_key
        super(combined_params)
      end

      # Update a wallet's policies or authorization key configuration.
      #
      # @example Update wallet policies
      #   client.wallets.update("wallet-id", wallet_update_params: {
      #     policy_ids: ["policy-id"]
      #   }, authorization_context: ctx)
      #
      # @param wallet_id [String] ID of the wallet to update.
      # @param wallet_update_params [Hash] Body parameters for the update.
      # @option wallet_update_params [Hash, nil] :owner New owner specified as {user_id:} or {public_key:}.
      # @option wallet_update_params [String, nil] :owner_id Key quorum ID to set as owner.
      # @option wallet_update_params [Array<String>, nil] :policy_ids New policy IDs to enforce on the wallet.
      # @option wallet_update_params [String, nil] :display_name A human-readable label for the wallet. Set to nil to clear.
      # @option wallet_update_params [Array<Hash>, nil] :additional_signers Additional signers for the wallet.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::Wallet]
      def update(wallet_id, wallet_update_params:, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :patch,
          url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}"),
          body: wallet_update_params,
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = wallet_update_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(wallet_id, combined_params)
      end

      # Sign a message or transaction with a wallet by wallet ID.
      #
      # @example Personal sign on an ownerless wallet
      #   client.wallets.rpc("wallet-id", wallet_rpc_request_body: {
      #     method: "personal_sign",
      #     chain_type: "ethereum",
      #     params: {message: "hello", encoding: "utf-8"}
      #   })
      #
      # @example Sign a transaction with authorization
      #   client.wallets.rpc("wallet-id", wallet_rpc_request_body: {
      #     method: "eth_signTransaction",
      #     chain_type: "ethereum",
      #     params: {transaction: {to: "0x...", value: "0x0", chain_id: 1}}
      #   }, authorization_context: ctx)
      #
      # @param wallet_id [String] ID of the wallet.
      # @param wallet_rpc_request_body [Hash] The RPC request body, discriminated by :method.
      # @option wallet_rpc_request_body [String] :method The RPC method name (e.g. "personal_sign", "eth_signTransaction").
      # @option wallet_rpc_request_body [String] :chain_type The chain type (e.g. "ethereum", "solana").
      # @option wallet_rpc_request_body [Hash] :params Method-specific parameters.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
      # @param idempotency_key [String, nil] Ensures the request is executed only once.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::WalletRpcResponse]
      def rpc(
        wallet_id,
        wallet_rpc_request_body:,
        authorization_context: nil,
        idempotency_key: nil,
        request_expiry: nil,
        request_options: nil
      )
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :post,
          url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}/rpc"),
          body: wallet_rpc_request_body,
          authorization_context: authorization_context,
          idempotency_key: idempotency_key,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = {wallet_rpc_request_body: wallet_rpc_request_body, request_options: request_options}
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(wallet_id, combined_params)
      end

      # Sign a hash or raw bytes with a wallet by wallet ID.
      #
      # @example Sign a pre-computed hash
      #   client.wallets.raw_sign("wallet-id", raw_sign_input: {
      #     params: {hash: "0x1234...abcdef"}
      #   })
      #
      # @example Sign raw bytes with a hash function
      #   client.wallets.raw_sign("wallet-id", raw_sign_input: {
      #     params: {bytes: "0a0234ea...", encoding: "hex", hash_function: "sha256"}
      #   }, authorization_context: ctx)
      #
      # @param wallet_id [String] ID of the wallet to sign with.
      # @param raw_sign_input [Hash] Body parameters for the raw_sign operation (RawSignInput shape).
      # @option raw_sign_input [Hash] :params The signing parameters (required). Either {hash:} or {bytes:, encoding:, hash_function:}.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
      # @param idempotency_key [String, nil] Ensures the request is executed only once.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::RawSignResponse]
      def raw_sign(
        wallet_id,
        raw_sign_input:,
        authorization_context: nil,
        idempotency_key: nil,
        request_expiry: nil,
        request_options: nil
      )
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :post,
          url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}/raw_sign"),
          body: raw_sign_input,
          authorization_context: authorization_context,
          idempotency_key: idempotency_key,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = raw_sign_input.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(wallet_id, combined_params)
      end

      # Transfer tokens from a wallet to a destination address.
      #
      # @example Transfer USDC on Base
      #   client.wallets.transfer("wallet-id", wallet_transfer_params: {
      #     source: {asset: "usdc", amount: "10.5", chain: "base"},
      #     destination: {address: "0xB00F...28a2"}
      #   })
      #
      # @example Cross-asset transfer with slippage
      #   client.wallets.transfer("wallet-id", wallet_transfer_params: {
      #     source: {asset: "usdc", amount: "10.5", chain: "base"},
      #     destination: {address: "0xB00F...28a2", asset: "usdt", chain: "ethereum"},
      #     amount_type: "exact_input",
      #     slippage_bps: 100
      #   }, authorization_context: ctx)
      #
      # @param wallet_id [String] ID of the wallet to transfer from.
      # @param wallet_transfer_params [Hash] Body parameters for the transfer operation.
      # @option wallet_transfer_params [Hash] :source Source asset, amount, and chain (required).
      # @option wallet_transfer_params [Hash] :destination Destination address, and optionally asset and chain (required).
      # @option wallet_transfer_params [String] :amount_type Whether amount refers to input or output token ("exact_input" or "exact_output").
      # @option wallet_transfer_params [Integer] :slippage_bps Maximum allowed slippage in basis points (1 bps = 0.01%).
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
      # @param idempotency_key [String, nil] Ensures the request is executed only once.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::TransferActionResponse]
      def transfer(
        wallet_id,
        wallet_transfer_params:,
        authorization_context: nil,
        idempotency_key: nil,
        request_expiry: nil,
        request_options: nil
      )
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :post,
          url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}/transfer"),
          body: wallet_transfer_params,
          authorization_context: authorization_context,
          idempotency_key: idempotency_key,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = wallet_transfer_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        _transfer(wallet_id, combined_params)
      end
    end
  end
end
