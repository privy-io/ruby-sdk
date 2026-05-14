# frozen_string_literal: true

module Privy
  module Services
    class Policies < Privy::Resources::Policies
      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end

      # Create a new policy with rules for a given chain type.
      #
      # @example Create a policy restricting ETH transfer value
      #   client.policies.create(policy_create_params: {
      #     version: "1.0",
      #     name: "Native token transfer maximums",
      #     chain_type: "ethereum",
      #     rules: [{
      #       name: "Restrict ETH transfers to a maximum value",
      #       method: "eth_sendTransaction",
      #       action: "ALLOW",
      #       conditions: [{
      #         field_source: "ethereum_transaction",
      #         field: "value",
      #         operator: "lte",
      #         value: "0x2386F26FC10000"
      #       }]
      #     }]
      #   })
      #
      # @param policy_create_params [Hash] Body parameters for policy creation.
      # @option policy_create_params [String] :version Policy version (required, e.g. "1.0").
      # @option policy_create_params [String] :name Name to assign to the policy (required).
      # @option policy_create_params [String] :chain_type Chain type the policy applies to (required).
      # @option policy_create_params [Array<Hash>] :rules Array of rule objects (required).
      # @option policy_create_params [Hash, nil] :owner Owner specified as {user_id:} or {public_key:}.
      # @option policy_create_params [String, nil] :owner_id Key quorum ID to set as owner.
      # @param idempotency_key [String, nil] Ensures the request is executed only once.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::Policy]
      def create(policy_create_params:, idempotency_key: nil, request_options: nil)
        combined_params = policy_create_params.merge(request_options: request_options)
        combined_params[:privy_idempotency_key] = idempotency_key if idempotency_key
        super(combined_params)
      end

      # Update a policy by policy ID.
      #
      # @example Update policy owner to a P-256 key
      #   client.policies.update("policy-id", policy_update_params: {
      #     owner: {public_key: base64_p256_public_key}
      #   })
      #
      # @example Remove policy owner (requires authorization)
      #   client.policies.update("policy-id", policy_update_params: {
      #     owner: nil
      #   }, authorization_context: ctx)
      #
      # @param policy_id [String] ID of the policy to update.
      # @param policy_update_params [Hash] Body parameters for the update.
      # @option policy_update_params [String, nil] :name New name for the policy.
      # @option policy_update_params [Hash, nil] :owner New owner specified as {user_id:} or {public_key:}. Set to nil to remove.
      # @option policy_update_params [String, nil] :owner_id Key quorum ID to set as owner.
      # @option policy_update_params [Array<Hash>, nil] :rules New rules for the policy.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned policies.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::Policy]
      def update(policy_id, policy_update_params:, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :patch,
          url: Privy::Authorization.signed_url(privy_client, "v1/policies/#{policy_id}"),
          body: policy_update_params,
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = policy_update_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(policy_id, combined_params)
      end

      # Delete a policy by policy ID.
      #
      # @example Delete an ownerless policy
      #   client.policies.delete("policy-id")
      #
      # @example Delete an owned policy (requires authorization)
      #   client.policies.delete("policy-id", authorization_context: ctx)
      #
      # @param policy_id [String] ID of the policy to delete.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned policies.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::SuccessResponse]
      def delete(policy_id, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :delete,
          url: Privy::Authorization.signed_url(privy_client, "v1/policies/#{policy_id}"),
          body: "",
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        # Workaround: the Stainless-generated Ruby client sends Content-Type: application/json on
        # every request (lib/privy/internal/transport/base_client.rb:204), even bodyless DELETEs.
        # The server's authorization signature verification fails when this header is present with
        # no body. The Node/Go HTTP clients don't send it for bodyless requests. Remove this once
        # Stainless fixes the Ruby generator to skip Content-Type on bodyless requests.
        opts = (request_options || {}).merge(extra_headers: {"Content-Type" => nil})
        combined_params = {request_options: opts}
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(policy_id, combined_params)
      end

      # Create a new rule for a policy.
      #
      # @example Add an allowlist rule to a policy
      #   client.policies.create_rule("policy-id", policy_create_rule_params: {
      #     name: "Allow transfers to known address",
      #     method: "eth_sendTransaction",
      #     action: "ALLOW",
      #     conditions: [{
      #       field_source: "ethereum_transaction",
      #       field: "to",
      #       operator: "eq",
      #       value: "0x0000000000000000000000000000000000000001"
      #     }]
      #   }, authorization_context: ctx)
      #
      # @param policy_id [String] ID of the policy to add the rule to.
      # @param policy_create_rule_params [Hash] Body parameters for rule creation.
      # @option policy_create_rule_params [String] :name Rule name (required).
      # @option policy_create_rule_params [String] :method RPC method the rule applies to (required).
      # @option policy_create_rule_params [String] :action Action when the rule matches ("ALLOW" or "DENY", required).
      # @option policy_create_rule_params [Array<Hash>] :conditions Array of condition objects (required).
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned policies.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::PolicyRuleResponse]
      def create_rule(policy_id, policy_create_rule_params:, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :post,
          url: Privy::Authorization.signed_url(privy_client, "v1/policies/#{policy_id}/rules"),
          body: policy_create_rule_params,
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = policy_create_rule_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(policy_id, combined_params)
      end

      # Update a rule by policy ID and rule ID.
      #
      # @example Update a rule's action to DENY
      #   client.policies.update_rule("rule-id", policy_id: "policy-id",
      #     policy_update_rule_params: {
      #       name: "Updated rule",
      #       method: "eth_sendTransaction",
      #       action: "DENY",
      #       conditions: [{
      #         field_source: "ethereum_transaction",
      #         field: "to",
      #         operator: "eq",
      #         value: "0x0000000000000000000000000000000000000001"
      #       }]
      #     }, authorization_context: ctx)
      #
      # @param rule_id [String] ID of the rule to update.
      # @param policy_id [String] ID of the policy the rule belongs to.
      # @param policy_update_rule_params [Hash] Body parameters for the rule update.
      # @option policy_update_rule_params [String] :name Rule name (required).
      # @option policy_update_rule_params [String] :method RPC method the rule applies to (required).
      # @option policy_update_rule_params [String] :action Action when the rule matches ("ALLOW" or "DENY", required).
      # @option policy_update_rule_params [Array<Hash>] :conditions Array of condition objects (required).
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned policies.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::PolicyRuleResponse]
      def update_rule(
        rule_id,
        policy_id:,
        policy_update_rule_params:,
        authorization_context: nil,
        request_expiry: nil,
        request_options: nil
      )
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :patch,
          url: Privy::Authorization.signed_url(privy_client, "v1/policies/#{policy_id}/rules/#{rule_id}"),
          body: policy_update_rule_params,
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        combined_params = policy_update_rule_params.merge(
          policy_id: policy_id,
          request_options: request_options
        )
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(rule_id, combined_params)
      end

      # Delete a rule by policy ID and rule ID.
      #
      # @example Delete a rule from a policy
      #   client.policies.delete_rule("rule-id", policy_id: "policy-id",
      #     authorization_context: ctx)
      #
      # @param rule_id [String] ID of the rule to delete.
      # @param policy_id [String] ID of the policy the rule belongs to.
      # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned policies.
      # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
      #   request expires. Defaults to the value computed by the client's
      #   PrivyRequestExpiryOptions.
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::SuccessResponse]
      def delete_rule(rule_id, policy_id:, authorization_context: nil, request_expiry: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :delete,
          url: Privy::Authorization.signed_url(privy_client, "v1/policies/#{policy_id}/rules/#{rule_id}"),
          body: "",
          authorization_context: authorization_context,
          request_expiry: privy_client.compute_request_expiry(request_expiry)
        )
        # Workaround: same Content-Type issue as delete — see comment there.
        opts = (request_options || {}).merge(extra_headers: {"Content-Type" => nil})
        combined_params = {policy_id: policy_id, request_options: opts}
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(rule_id, combined_params)
      end
    end
  end
end
