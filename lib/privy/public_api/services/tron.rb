# frozen_string_literal: true

module Privy
  module Services
    class Tron
      def initialize(wallets:)
        @wallets = wallets
      end

      # Signs a Tron transaction without broadcasting.
      #
      # @example Sign a Tron transaction
      #   client.wallets.tron.sign_transaction(wallet_id, params: {
      #     raw_data: {
      #       contract: [{
      #         type: "TransferContract",
      #         owner_address: "41...",
      #         to_address: "41...",
      #         amount: 1
      #       }],
      #       ref_block_bytes: "1a2b",
      #       ref_block_hash: "abc1234567890def",
      #       expiration: (Time.now.to_i * 1000) + 60_000,
      #       timestamp: Time.now.to_i * 1000
      #     }
      #   })
      #
      # @param wallet_id [String] ID of the wallet.
      # @param params [Hash] Parameters for tron_signTransaction. Required key: :raw_data.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil]
      # @param idempotency_key [String, nil]
      # @param request_expiry [Integer, nil]
      # @param request_options [Privy::RequestOptions, Hash, nil]
      #
      # @return [Privy::Models::TronSignTransactionRpcResponseData]
      def sign_transaction(
        wallet_id,
        params:,
        authorization_context: nil,
        idempotency_key: nil,
        request_expiry: nil,
        request_options: nil
      )
        response = @wallets.rpc(
          wallet_id,
          wallet_rpc_request_body: {method: :tron_signTransaction, params: params},
          authorization_context: authorization_context,
          idempotency_key: idempotency_key,
          request_expiry: request_expiry,
          request_options: request_options
        )
        response.data
      end

      # Signs and broadcasts a Tron transaction.
      #
      # @example Send a Tron transaction
      #   client.wallets.tron.send_transaction(wallet_id, params: {
      #     raw_data: {
      #       contract: [{
      #         type: "TransferContract",
      #         owner_address: "41...",
      #         to_address: "41...",
      #         amount: 1
      #       }]
      #     },
      #     reference_id: "my-idempotency-key"
      #   }, caip2: "tron:0xcd8690dc")
      #
      # @param wallet_id [String] ID of the wallet.
      # @param params [Hash] Parameters for tron_sendTransaction. Required key: :raw_data.
      #   Optional key: :reference_id for idempotent broadcast.
      # @param caip2 [String, nil] A valid CAIP-2 chain ID (e.g. 'tron:0xcd8690dc').
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil]
      # @param idempotency_key [String, nil]
      # @param request_expiry [Integer, nil]
      # @param request_options [Privy::RequestOptions, Hash, nil]
      #
      # @return [Privy::Models::TronSendTransactionRpcResponseData]
      def send_transaction(
        wallet_id,
        params:,
        caip2: nil,
        authorization_context: nil,
        idempotency_key: nil,
        request_expiry: nil,
        request_options: nil
      )
        body = {method: :tron_sendTransaction, params: params}
        body[:caip2] = caip2 if caip2
        response = @wallets.rpc(
          wallet_id,
          wallet_rpc_request_body: body,
          authorization_context: authorization_context,
          idempotency_key: idempotency_key,
          request_expiry: request_expiry,
          request_options: request_options
        )
        response.data
      end
    end
  end
end
