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
      # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
      #
      # @return [Privy::Models::Policy]
      def update(policy_id, policy_update_params:, authorization_context: nil, request_options: nil)
        prepared = Privy::Authorization.prepare_request(
          privy_client,
          method: :patch,
          url: Privy::Authorization.signed_url(privy_client, "v1/policies/#{policy_id}"),
          body: policy_update_params,
          authorization_context: authorization_context
        )
        combined_params = policy_update_params.merge(request_options: request_options)
        Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
        super(policy_id, combined_params)
      end
    end
  end
end
