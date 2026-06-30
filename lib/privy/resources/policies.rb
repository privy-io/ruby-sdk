# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to policies
    class Policies
      # Some parameter documentations has been truncated, see
      # {Privy::Models::PolicyCreateParams} for more details.
      #
      # Create a new policy.
      #
      # @overload create(chain_type:, name:, rules:, version:, owner: nil, owner_id: nil, privy_idempotency_key: nil, request_options: {})
      #
      # @param chain_type [Symbol, Privy::Models::WalletChainType] Body param: The wallet chain types.
      #
      # @param name [String] Body param: Name to assign to policy.
      #
      # @param rules [Array<Privy::Models::PolicyCreateParams::Rule>] Body param
      #
      # @param version [Symbol, Privy::Models::PolicyCreateParams::Version] Body param: Version of the policy. Currently, 1.0 is the only version.
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] Body param: The owner of the resource, specified as a Privy user ID, a P-256 pub
      #
      # @param owner_id [String, nil] Body param: The key quorum ID to set as the owner of the resource. If you provid
      #
      # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Policy]
      #
      # @see Privy::Models::PolicyCreateParams
      def create(params)
        parsed, options = Privy::PolicyCreateParams.dump_request(params)
        header_params = {privy_idempotency_key: "privy-idempotency-key"}
        @client.request(
          method: :post,
          path: "v1/policies",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::Policy,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::PolicyUpdateParams} for more details.
      #
      # Update a policy by policy ID.
      #
      # @overload update(policy_id, name: nil, owner: nil, owner_id: nil, rules: nil, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param policy_id [String] Path param
      #
      # @param name [String] Body param: Name to assign to policy.
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] Body param: The owner of the resource, specified as a Privy user ID, a P-256 pub
      #
      # @param owner_id [String, nil] Body param: The key quorum ID to set as the owner of the resource. If you provid
      #
      # @param rules [Array<Privy::Models::PolicyRuleRequestBody>] Body param
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Policy]
      #
      # @see Privy::Models::PolicyUpdateParams
      def update(policy_id, params = {})
        parsed, options = Privy::PolicyUpdateParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :patch,
          path: ["v1/policies/%1$s", policy_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::Policy,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::PolicyDeleteParams} for more details.
      #
      # Delete a policy by policy ID.
      #
      # @overload delete(policy_id, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param policy_id [String]
      #
      # @param privy_authorization_signature [String] Request authorization signature. If multiple signatures are required, they shoul
      #
      # @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::SuccessResponse]
      #
      # @see Privy::Models::PolicyDeleteParams
      def delete(policy_id, params = {})
        parsed, options = Privy::PolicyDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/policies/%1$s", policy_id],
          headers: parsed.transform_keys(
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          ),
          model: Privy::SuccessResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::PolicyCreateRuleParams} for more details.
      #
      # Create a new rule for a policy.
      #
      # @overload create_rule(policy_id, action:, conditions:, method_:, name:, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param policy_id [String] Path param
      #
      # @param action [Symbol, Privy::Models::PolicyAction] Body param: The action to take when a policy rule matches.
      #
      # @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition, Privy::Models::MessageSigningCondition>] Body param
      #
      # @param method_ [Symbol, Privy::Models::PolicyMethod] Body param: Method the rule applies to.
      #
      # @param name [String] Body param
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::PolicyRuleResponse]
      #
      # @see Privy::Models::PolicyCreateRuleParams
      def create_rule(policy_id, params)
        parsed, options = Privy::PolicyCreateRuleParams.dump_request(params)
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :post,
          path: ["v1/policies/%1$s/rules", policy_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::PolicyRuleResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::PolicyDeleteRuleParams} for more details.
      #
      # Delete a rule by policy ID and rule ID.
      #
      # @overload delete_rule(rule_id, policy_id:, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param rule_id [String] Path param
      #
      # @param policy_id [String] Path param
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::SuccessResponse]
      #
      # @see Privy::Models::PolicyDeleteRuleParams
      def delete_rule(rule_id, params)
        parsed, options = Privy::PolicyDeleteRuleParams.dump_request(params)
        policy_id =
          parsed.delete(:policy_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["v1/policies/%1$s/rules/%2$s", policy_id, rule_id],
          headers: parsed.transform_keys(
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          ),
          model: Privy::SuccessResponse,
          options: options
        )
      end

      # Get a policy by policy ID.
      #
      # @overload get(policy_id, request_options: {})
      #
      # @param policy_id [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Policy]
      #
      # @see Privy::Models::PolicyGetParams
      def get(policy_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/policies/%1$s", policy_id],
          model: Privy::Policy,
          options: params[:request_options]
        )
      end

      # Get a rule by policy ID and rule ID.
      #
      # @overload get_rule(rule_id, policy_id:, request_options: {})
      #
      # @param rule_id [String]
      # @param policy_id [String]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::PolicyRuleResponse]
      #
      # @see Privy::Models::PolicyGetRuleParams
      def get_rule(rule_id, params)
        parsed, options = Privy::PolicyGetRuleParams.dump_request(params)
        policy_id =
          parsed.delete(:policy_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/policies/%1$s/rules/%2$s", policy_id, rule_id],
          model: Privy::PolicyRuleResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::PolicyUpdateRuleParams} for more details.
      #
      # Update a rule by policy ID and rule ID.
      #
      # @overload update_rule(rule_id, policy_id:, action:, conditions:, method_:, name:, privy_authorization_signature: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param rule_id [String] Path param
      #
      # @param policy_id [String] Path param
      #
      # @param action [Symbol, Privy::Models::PolicyAction] Body param: The action to take when a policy rule matches.
      #
      # @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition, Privy::Models::MessageSigningCondition>] Body param
      #
      # @param method_ [Symbol, Privy::Models::PolicyMethod] Body param: Method the rule applies to.
      #
      # @param name [String] Body param
      #
      # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::PolicyRuleResponse]
      #
      # @see Privy::Models::PolicyUpdateRuleParams
      def update_rule(rule_id, params)
        parsed, options = Privy::PolicyUpdateRuleParams.dump_request(params)
        policy_id =
          parsed.delete(:policy_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        header_params =
          {
            privy_authorization_signature: "privy-authorization-signature",
            privy_request_expiry: "privy-request-expiry"
          }
        @client.request(
          method: :patch,
          path: ["v1/policies/%1$s/rules/%2$s", policy_id, rule_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::PolicyRuleResponse,
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
