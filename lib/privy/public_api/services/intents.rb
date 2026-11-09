# frozen_string_literal: true

module Privy
  module Services
    # Intent endpoints create a pending action that the resource's owners approve
    # later, so they are not signed. Each wrapper sets `privy-request-expiry` using
    # the intent default (72 hours, or `default_intent_ms`), never the generic
    # `default_ms`.
    #
    # Every method accepts:
    # - `request_expiry:` [Integer, nil] Absolute Unix-ms timestamp, sent verbatim.
    #   Wins over `disabled: true`. Build one with
    #   {Privy::PrivyClient.request_expiry_from_now}.
    # - `request_options:` [Privy::RequestOptions, Hash, nil] Transport-level config.
    #
    # `list`, `get`, and `reject` are inherited unchanged.
    class Intents < Privy::Resources::Intents
      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      # Create an intent to sign an RPC request with a wallet.
      #
      # @param wallet_id [String]
      # @param wallet_rpc_request_body [Hash] Same shape as `wallets.rpc`.
      # @return [Privy::Models::RpcIntentResponse]
      def rpc(wallet_id, wallet_rpc_request_body:, request_expiry: nil, request_options: nil)
        params = wrapped_params(
          :wallet_rpc_request_body,
          wallet_rpc_request_body,
          request_expiry,
          request_options
        )
        super(wallet_id, params)
      end

      # Create an intent to raw-sign a hash or bytes with a wallet.
      #
      # @param wallet_id [String]
      # @param raw_sign_input [Hash] Same shape as `wallets.raw_sign` (`{params: {...}}`).
      # @return [Privy::Models::RawSignIntentResponse]
      def raw_sign(wallet_id, raw_sign_input:, request_expiry: nil, request_options: nil)
        super(wallet_id, flat_params(raw_sign_input, request_expiry, request_options))
      end

      # Create an intent to transfer tokens from a wallet.
      #
      # @param wallet_id [String]
      # @param wallet_transfer_params [Hash] Same shape as `wallets.transfer`.
      # @return [Privy::Models::TransferIntentResponse]
      def transfer(wallet_id, wallet_transfer_params:, request_expiry: nil, request_options: nil)
        super(wallet_id, flat_params(wallet_transfer_params, request_expiry, request_options))
      end

      # Create an intent to update a wallet.
      #
      # @param wallet_id [String]
      # @param wallet_update_params [Hash] Same shape as `wallets.update`.
      # @return [Privy::Models::WalletIntentResponse]
      def update_wallet(wallet_id, wallet_update_params:, request_expiry: nil, request_options: nil)
        super(wallet_id, flat_params(wallet_update_params, request_expiry, request_options))
      end

      # Create an intent to update a policy.
      #
      # @param policy_id [String]
      # @param policy_update_params [Hash] Same shape as `policies.update`.
      # @return [Privy::Models::PolicyUpdateIntentResponse]
      def update_policy(policy_id, policy_update_params:, request_expiry: nil, request_options: nil)
        super(policy_id, flat_params(policy_update_params, request_expiry, request_options))
      end

      # Create an intent to delete a policy.
      #
      # @param policy_id [String]
      # @return [Privy::Models::PolicyDeleteIntentResponse]
      def delete_policy(policy_id, request_expiry: nil, request_options: nil)
        super(policy_id, header_only_params(request_expiry, request_options))
      end

      # Create an intent to add a rule to a policy.
      #
      # @param policy_id [String]
      # @param policy_create_rule_params [Hash] Same shape as `policies.create_rule`.
      # @return [Privy::Models::RuleMutateIntentResponse]
      def create_policy_rule(policy_id, policy_create_rule_params:, request_expiry: nil, request_options: nil)
        super(policy_id, flat_params(policy_create_rule_params, request_expiry, request_options))
      end

      # Create an intent to update a policy rule.
      #
      # @param rule_id [String]
      # @param policy_id [String]
      # @param policy_update_rule_params [Hash] Same shape as `policies.update_rule`.
      # @return [Privy::Models::RuleMutateIntentResponse]
      def update_policy_rule(
        rule_id,
        policy_id:,
        policy_update_rule_params:,
        request_expiry: nil,
        request_options: nil
      )
        params = flat_params(policy_update_rule_params, request_expiry, request_options, policy_id: policy_id)
        super(rule_id, params)
      end

      # Create an intent to delete a policy rule.
      #
      # @param rule_id [String]
      # @param policy_id [String]
      # @return [Privy::Models::RuleDeleteIntentResponse]
      def delete_policy_rule(rule_id, policy_id:, request_expiry: nil, request_options: nil)
        super(rule_id, header_only_params(request_expiry, request_options, policy_id: policy_id))
      end

      # Create an intent to update a key quorum.
      #
      # @param key_quorum_id [String]
      # @param key_quorum_update_params [Hash] Same shape as `key_quorums.update`.
      # @return [Privy::Models::KeyQuorumUpdateIntentResponse]
      def update_key_quorum(
        key_quorum_id,
        key_quorum_update_params:,
        request_expiry: nil,
        request_options: nil
      )
        super(key_quorum_id, flat_params(key_quorum_update_params, request_expiry, request_options))
      end

      # Create an intent to delete a key quorum.
      #
      # @param key_quorum_id [String]
      # @return [Privy::Models::KeyQuorumDeleteIntentResponse]
      def delete_key_quorum(key_quorum_id, request_expiry: nil, request_options: nil)
        super(key_quorum_id, header_only_params(request_expiry, request_options))
      end

      # Create an intent to add items to a condition set.
      #
      # @param condition_set_id [String]
      # @param condition_set_items_request_body [Array<Hash>] Items to add.
      # @return [Privy::Models::ConditionSetItemMutateIntentResponse]
      def create_condition_set_items(
        condition_set_id,
        condition_set_items_request_body:,
        request_expiry: nil,
        request_options: nil
      )
        super(
          condition_set_id,
          wrapped_params(
            :condition_set_items_request_body,
            condition_set_items_request_body,
            request_expiry,
            request_options
          )
        )
      end

      # Create an intent to replace the items in a condition set.
      #
      # @param condition_set_id [String]
      # @param condition_set_items_request_body [Array<Hash>] Replacement items.
      # @return [Privy::Models::ConditionSetItemMutateIntentResponse]
      def update_condition_set_items(
        condition_set_id,
        condition_set_items_request_body:,
        request_expiry: nil,
        request_options: nil
      )
        super(
          condition_set_id,
          wrapped_params(
            :condition_set_items_request_body,
            condition_set_items_request_body,
            request_expiry,
            request_options
          )
        )
      end

      # Create an intent to delete a condition set.
      #
      # @param condition_set_id [String]
      # @return [Privy::Models::ConditionSetDeleteIntentResponse]
      def delete_condition_set(condition_set_id, request_expiry: nil, request_options: nil)
        super(condition_set_id, header_only_params(request_expiry, request_options))
      end

      # Create an intent to delete one item from a condition set.
      #
      # @param condition_set_item_id [String]
      # @param condition_set_id [String]
      # @return [Privy::Models::ConditionSetItemDeleteIntentResponse]
      def delete_condition_set_item(
        condition_set_item_id,
        condition_set_id:,
        request_expiry: nil,
        request_options: nil
      )
        super(
          condition_set_item_id,
          header_only_params(request_expiry, request_options, condition_set_id: condition_set_id)
        )
      end

      private

      # Body params merged at the top level (generated code splits the header out).
      def flat_params(body, request_expiry, request_options, **path_params)
        with_expiry(body.merge(path_params).merge(request_options: request_options), request_expiry)
      end

      # Body passed under a single key; headers are the remaining top-level params.
      def wrapped_params(key, body, request_expiry, request_options)
        with_expiry({key => body, request_options: request_options}, request_expiry)
      end

      # No body; every remaining param becomes a header or path param.
      def header_only_params(request_expiry, request_options, **path_params)
        with_expiry(path_params.merge(request_options: request_options), request_expiry)
      end

      def with_expiry(params, request_expiry)
        expiry = privy_client.compute_intent_request_expiry(request_expiry)
        params[:privy_request_expiry] = expiry.to_s unless expiry.nil?
        params
      end
    end
  end
end
