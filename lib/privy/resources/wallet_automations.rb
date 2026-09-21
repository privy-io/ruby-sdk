# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to wallet automations
    class WalletAutomations
      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletAutomationCreateParams} for more details.
      #
      # Create a new wallet automation that triggers actions on deposit events.
      #
      # @overload create(config:, owner_id:, name: nil, request_options: {})
      #
      # @param config [Privy::Models::AutomationConfigInput] Full configuration for a wallet automation (trigger + action) accepting human-re
      #
      # @param owner_id [String, nil]
      #
      # @param name [String]
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletAutomationResponse]
      #
      # @see Privy::Models::WalletAutomationCreateParams
      def create(params)
        parsed, options = Privy::WalletAutomationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallet_automations",
          body: parsed,
          model: Privy::WalletAutomationResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletAutomationUpdateParams} for more details.
      #
      # Update a wallet automation by ID.
      #
      # @overload update(automation_id, config: nil, enabled: nil, name: nil, owner_id: nil, request_options: {})
      #
      # @param automation_id [String] ID of the wallet automation.
      #
      # @param config [Privy::Models::AutomationConfigInput] Full configuration for a wallet automation (trigger + action) accepting human-re
      #
      # @param enabled [Boolean]
      #
      # @param name [String, nil]
      #
      # @param owner_id [String, nil] A unique identifier for a key quorum.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletAutomationResponse]
      #
      # @see Privy::Models::WalletAutomationUpdateParams
      def update(automation_id, params = {})
        parsed, options = Privy::WalletAutomationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/wallet_automations/%1$s", automation_id],
          body: parsed,
          model: Privy::WalletAutomationResponse,
          options: options
        )
      end

      # List all wallet automations for your app, with optional filtering by wallet.
      #
      # @overload list(cursor: nil, limit: nil, wallet_id: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Integer]
      # @param wallet_id [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Internal::Cursor<Privy::Models::WalletAutomationResponse>]
      #
      # @see Privy::Models::WalletAutomationListParams
      def list(params = {})
        parsed, options = Privy::WalletAutomationListParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/wallet_automations",
          query: query,
          page: Privy::Internal::Cursor,
          model: Privy::WalletAutomationResponse,
          options: options
        )
      end

      # Delete a wallet automation by ID.
      #
      # @overload delete(automation_id, request_options: {})
      #
      # @param automation_id [String] ID of the wallet automation.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletAutomationSuccessResponse]
      #
      # @see Privy::Models::WalletAutomationDeleteParams
      def delete(automation_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/wallet_automations/%1$s", automation_id],
          model: Privy::WalletAutomationSuccessResponse,
          options: params[:request_options]
        )
      end

      # Get a wallet automation by ID.
      #
      # @overload get(automation_id, request_options: {})
      #
      # @param automation_id [String] ID of the wallet automation.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletAutomationResponse]
      #
      # @see Privy::Models::WalletAutomationGetParams
      def get(automation_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/wallet_automations/%1$s", automation_id],
          model: Privy::WalletAutomationResponse,
          options: params[:request_options]
        )
      end

      # List all wallet automation execution records, with optional filtering by wallet.
      #
      # @overload list_executions(cursor: nil, limit: nil, wallet_id: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Integer]
      # @param wallet_id [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Internal::Cursor<Privy::Models::WalletAutomationExecutionResponse>]
      #
      # @see Privy::Models::WalletAutomationListExecutionsParams
      def list_executions(params = {})
        parsed, options = Privy::WalletAutomationListExecutionsParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/wallet_automations/executions",
          query: query,
          page: Privy::Internal::Cursor,
          model: Privy::WalletAutomationExecutionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletAutomationReindexParams} for more details.
      #
      # Re-checks a wallet (identified by wallet_id or deposit_address) for funds
      # matching its wallet automation configs and triggers an automation run if a match
      # is found. Use this to recover a deposit whose automation trigger was missed or
      # failed.
      #
      # @overload reindex(asset_address:, caip2: nil, chain: nil, deposit_address: nil, wallet_id: nil, request_options: {})
      #
      # @param asset_address [String] Asset contract address to check; the native asset uses `native`.
      #
      # @param caip2 [String, Symbol, Privy::Models::TronCaip2] An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation r
      #
      # @param chain [String] Human-readable chain name to check. Specify exactly one of `caip2` or `chain`.
      #
      # @param deposit_address [String] On-chain deposit address of the wallet to reindex. Must match the resolved walle
      #
      # @param wallet_id [String] Privy wallet ID to reindex. Takes precedence over `deposit_address` when both ar
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletAutomationReindexResponse]
      #
      # @see Privy::Models::WalletAutomationReindexParams
      def reindex(params)
        parsed, options = Privy::WalletAutomationReindexParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallet_automations/reindex",
          body: parsed,
          model: Privy::WalletAutomationReindexResponse,
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
