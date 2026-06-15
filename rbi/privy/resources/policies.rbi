# typed: strong

module Privy
  module Resources
    # Operations related to policies
    class Policies
      # Create a new policy.
      sig do
        params(
          chain_type: Privy::WalletChainType::OrSymbol,
          name: String,
          rules: T::Array[Privy::PolicyCreateParams::Rule::OrHash],
          version: Privy::PolicyCreateParams::Version::OrSymbol,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          privy_idempotency_key: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Policy)
      end
      def create(
        # Body param: The wallet chain types.
        chain_type:,
        # Body param: Name to assign to policy.
        name:,
        # Body param
        rules:,
        # Body param: Version of the policy. Currently, 1.0 is the only version.
        version:,
        # Body param: The owner of the resource, specified as a Privy user ID, a P-256
        # public key, or null to remove the current owner.
        owner: nil,
        # Body param: The key quorum ID to set as the owner of the resource. If you
        # provide this, do not specify an owner.
        owner_id: nil,
        # Header param: Idempotency keys ensure API requests are executed only once within
        # a 24-hour window.
        privy_idempotency_key: nil,
        request_options: {}
      )
      end

      # Update a policy by policy ID.
      sig do
        params(
          policy_id: String,
          name: String,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          rules: T::Array[Privy::PolicyRuleRequestBody::OrHash],
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Policy)
      end
      def update(
        # Path param
        policy_id,
        # Body param: Name to assign to policy.
        name: nil,
        # Body param: The owner of the resource, specified as a Privy user ID, a P-256
        # public key, or null to remove the current owner.
        owner: nil,
        # Body param: The key quorum ID to set as the owner of the resource. If you
        # provide this, do not specify an owner.
        owner_id: nil,
        # Body param
        rules: nil,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Delete a policy by policy ID.
      sig do
        params(
          policy_id: String,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::SuccessResponse)
      end
      def delete(
        policy_id,
        # Request authorization signature. If multiple signatures are required, they
        # should be comma separated.
        privy_authorization_signature: nil,
        # Request expiry. Value is a Unix timestamp in milliseconds representing the
        # deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create a new rule for a policy.
      sig do
        params(
          policy_id: String,
          action: Privy::PolicyAction::OrSymbol,
          conditions:
            T::Array[
              T.any(
                Privy::EthereumTransactionCondition::OrHash,
                Privy::EthereumCalldataCondition::OrHash,
                Privy::EthereumTypedDataDomainCondition::OrHash,
                Privy::EthereumTypedDataMessageCondition::OrHash,
                Privy::Ethereum7702AuthorizationCondition::OrHash,
                Privy::TempoTransactionCondition::OrHash,
                Privy::SolanaProgramInstructionCondition::OrHash,
                Privy::SolanaSystemProgramInstructionCondition::OrHash,
                Privy::SolanaTokenProgramInstructionCondition::OrHash,
                Privy::SystemCondition::OrHash,
                Privy::TronTransactionCondition::OrHash,
                Privy::TronCalldataCondition::OrHash,
                Privy::SuiTransactionCommandCondition::OrHash,
                Privy::SuiTransferObjectsCommandCondition::OrHash,
                Privy::ActionRequestBodyCondition::OrHash,
                Privy::AggregationCondition::OrHash,
                Privy::MessageSigningCondition::OrHash
              )
            ],
          method_: Privy::PolicyMethod::OrSymbol,
          name: String,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::PolicyRuleResponse)
      end
      def create_rule(
        # Path param
        policy_id,
        # Body param: The action to take when a policy rule matches.
        action:,
        # Body param
        conditions:,
        # Body param: Method the rule applies to.
        method_:,
        # Body param
        name:,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Delete a rule by policy ID and rule ID.
      sig do
        params(
          rule_id: String,
          policy_id: String,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::SuccessResponse)
      end
      def delete_rule(
        # Path param
        rule_id,
        # Path param
        policy_id:,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Get a policy by policy ID.
      sig do
        params(
          policy_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Policy)
      end
      def get(policy_id, request_options: {})
      end

      # Get a rule by policy ID and rule ID.
      sig do
        params(
          rule_id: String,
          policy_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::PolicyRuleResponse)
      end
      def get_rule(rule_id, policy_id:, request_options: {})
      end

      # Update a rule by policy ID and rule ID.
      sig do
        params(
          rule_id: String,
          policy_id: String,
          action: Privy::PolicyAction::OrSymbol,
          conditions:
            T::Array[
              T.any(
                Privy::EthereumTransactionCondition::OrHash,
                Privy::EthereumCalldataCondition::OrHash,
                Privy::EthereumTypedDataDomainCondition::OrHash,
                Privy::EthereumTypedDataMessageCondition::OrHash,
                Privy::Ethereum7702AuthorizationCondition::OrHash,
                Privy::TempoTransactionCondition::OrHash,
                Privy::SolanaProgramInstructionCondition::OrHash,
                Privy::SolanaSystemProgramInstructionCondition::OrHash,
                Privy::SolanaTokenProgramInstructionCondition::OrHash,
                Privy::SystemCondition::OrHash,
                Privy::TronTransactionCondition::OrHash,
                Privy::TronCalldataCondition::OrHash,
                Privy::SuiTransactionCommandCondition::OrHash,
                Privy::SuiTransferObjectsCommandCondition::OrHash,
                Privy::ActionRequestBodyCondition::OrHash,
                Privy::AggregationCondition::OrHash,
                Privy::MessageSigningCondition::OrHash
              )
            ],
          method_: Privy::PolicyMethod::OrSymbol,
          name: String,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::PolicyRuleResponse)
      end
      def update_rule(
        # Path param
        rule_id,
        # Path param
        policy_id:,
        # Body param: The action to take when a policy rule matches.
        action:,
        # Body param
        conditions:,
        # Body param: Method the rule applies to.
        method_:,
        # Body param
        name:,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
