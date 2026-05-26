# typed: strong

module Privy
  module Resources
    class Intents
      # List intents for an app. Returns a paginated list of intents with their current
      # status and details.
      sig do
        params(
          created_by_id: String,
          current_user_has_signed:
            Privy::IntentListParams::CurrentUserHasSigned::OrSymbol,
          cursor: String,
          intent_type: Privy::IntentType::OrSymbol,
          limit: T.nilable(Float),
          pending_member_id: String,
          resource_id: String,
          sort_by: Privy::IntentListParams::SortBy::OrSymbol,
          status: Privy::IntentStatus::OrSymbol,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Internal::Cursor[Privy::IntentResponse::Variants])
      end
      def list(
        created_by_id: nil,
        current_user_has_signed: nil,
        cursor: nil,
        # Type of intent.
        intent_type: nil,
        limit: nil,
        pending_member_id: nil,
        resource_id: nil,
        sort_by: nil,
        # Current status of an intent.
        status: nil,
        request_options: {}
      )
      end

      # Create an intent to add a rule to a policy. The intent must be authorized by the
      # policy owner before it can be executed.
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
                Privy::AggregationCondition::OrHash
              )
            ],
          method_: Privy::PolicyMethod::OrSymbol,
          name: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::RuleMutateIntentResponse)
      end
      def create_policy_rule(
        # Path param: ID of the policy.
        policy_id,
        # Body param: The action to take when a policy rule matches.
        action:,
        # Body param
        conditions:,
        # Body param: Method the rule applies to.
        method_:,
        # Body param
        name:,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create an intent to delete a rule from a policy. The intent must be authorized
      # by the policy owner before it can be executed.
      sig do
        params(
          rule_id: String,
          policy_id: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::RuleDeleteIntentResponse)
      end
      def delete_policy_rule(
        # Path param: ID of the rule.
        rule_id,
        # Path param: ID of the policy.
        policy_id:,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Retrieve an intent by ID. Returns the intent details including its current
      # status, authorization details, and execution result if applicable.
      sig do
        params(
          intent_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::IntentResponse::Variants)
      end
      def get(
        # ID of the intent.
        intent_id,
        request_options: {}
      )
      end

      # Create an intent to execute an RPC method on a wallet. The intent must be
      # authorized by either the wallet owner or signers before it can be executed.
      sig do
        params(
          wallet_id: String,
          wallet_rpc_request_body:
            T.any(
              Privy::EthereumSignTransactionRpcInput::OrHash,
              Privy::EthereumSendTransactionRpcInput::OrHash,
              Privy::EthereumPersonalSignRpcInput::OrHash,
              Privy::EthereumSignTypedDataRpcInput::OrHash,
              Privy::EthereumSecp256k1SignRpcInput::OrHash,
              Privy::EthereumSign7702AuthorizationRpcInput::OrHash,
              Privy::EthereumSignUserOperationRpcInput::OrHash,
              Privy::EthereumSendCallsRpcInput::OrHash,
              Privy::SolanaSignTransactionRpcInput::OrHash,
              Privy::SolanaSignAndSendTransactionRpcInput::OrHash,
              Privy::SolanaSignMessageRpcInput::OrHash,
              Privy::SparkTransferRpcInput::OrHash,
              Privy::SparkGetBalanceRpcInput::OrHash,
              Privy::SparkTransferTokensRpcInput::OrHash,
              Privy::SparkGetStaticDepositAddressRpcInput::OrHash,
              Privy::SparkGetClaimStaticDepositQuoteRpcInput::OrHash,
              Privy::SparkClaimStaticDepositRpcInput::OrHash,
              Privy::SparkCreateLightningInvoiceRpcInput::OrHash,
              Privy::SparkPayLightningInvoiceRpcInput::OrHash,
              Privy::SparkSignMessageWithIdentityKeyRpcInput::OrHash,
              Privy::ExportPrivateKeyRpcInput::OrHash,
              Privy::ExportSeedPhraseRpcInput::OrHash
            ),
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::RpcIntentResponse)
      end
      def rpc(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: Request body for wallet RPC operations, discriminated by method.
        wallet_rpc_request_body:,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create an intent to execute a token transfer via a wallet. The intent must be
      # authorized by either the wallet owner or signers before it can be executed.
      sig do
        params(
          wallet_id: String,
          destination: Privy::TokenTransferDestination::OrHash,
          source:
            T.any(
              Privy::NamedTokenTransferSource::OrHash,
              Privy::CustomTokenTransferSource::OrHash
            ),
          amount_type: Privy::AmountType::OrSymbol,
          fee_configuration: Privy::FeeConfiguration::OrHash,
          slippage_bps: Integer,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::TransferIntentResponse)
      end
      def transfer(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: The destination address for a token transfer. Optionally specify a
        # different asset or chain for cross-asset or cross-chain transfers.
        destination:,
        # Body param: The source asset, amount, and chain for a token transfer. Specify
        # either `asset` (named) or `asset_address` (custom), not both.
        source:,
        # Body param: Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Body param: Total fees assessed on a transfer, in BPS
        fee_configuration: nil,
        # Body param: Maximum allowed slippage in basis points (1 bps = 0.01%).
        slippage_bps: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create an intent to update a key quorum. The intent must be authorized by the
      # key quorum members before it can be executed.
      sig do
        params(
          key_quorum_id: String,
          authorization_threshold: Float,
          display_name: String,
          key_quorum_ids: T::Array[String],
          public_keys: T::Array[String],
          user_ids: T::Array[String],
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::KeyQuorumIntentResponse)
      end
      def update_key_quorum(
        # Path param: ID of the key quorum.
        key_quorum_id,
        # Body param: The number of keys that must sign for an action to be valid. Must be
        # less than or equal to total number of key quorum members.
        authorization_threshold: nil,
        # Body param
        display_name: nil,
        # Body param: List of key quorum IDs that should be members of this key quorum.
        # Key quorums can only be nested 1 level deep.
        key_quorum_ids: nil,
        # Body param: List of P-256 public keys of the keys that should be authorized to
        # sign on the key quorum, in base64-encoded DER format.
        public_keys: nil,
        # Body param: List of user IDs of the users that should be authorized to sign on
        # the key quorum.
        user_ids: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create an intent to update a policy. The intent must be authorized by the policy
      # owner before it can be executed.
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
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::PolicyIntentResponse)
      end
      def update_policy(
        # Path param: ID of the policy.
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
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create an intent to update a rule on a policy. The intent must be authorized by
      # the policy owner before it can be executed.
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
                Privy::AggregationCondition::OrHash
              )
            ],
          method_: Privy::PolicyMethod::OrSymbol,
          name: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::RuleMutateIntentResponse)
      end
      def update_policy_rule(
        # Path param: ID of the rule.
        rule_id,
        # Path param: ID of the policy.
        policy_id:,
        # Body param: The action to take when a policy rule matches.
        action:,
        # Body param
        conditions:,
        # Body param: Method the rule applies to.
        method_:,
        # Body param
        name:,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Create an intent to update a wallet. The intent must be authorized by the wallet
      # owner before it can be executed.
      sig do
        params(
          wallet_id: String,
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          display_name: T.nilable(String),
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String],
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletIntentResponse)
      end
      def update_wallet(
        # Path param: ID of the wallet.
        wallet_id,
        # Body param: Additional signers for the wallet.
        additional_signers: nil,
        # Body param: A human-readable label for the wallet. Set to null to clear.
        display_name: nil,
        # Body param: The owner of the resource, specified as a Privy user ID, a P-256
        # public key, or null to remove the current owner.
        owner: nil,
        # Body param: The key quorum ID to set as the owner of the resource. If you
        # provide this, do not specify an owner.
        owner_id: nil,
        # Body param: New policy IDs to enforce on the wallet. Currently, only one policy
        # is supported per wallet.
        policy_ids: nil,
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
