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
    end
  end
end
