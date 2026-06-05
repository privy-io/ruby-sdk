# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to authorization intents for wallet actions
    class Intents
      # List intents for an app. Returns a paginated list of intents with their current
      # status and details.
      #
      # @overload list(created_by_id: nil, current_user_has_signed: nil, cursor: nil, intent_type: nil, limit: nil, pending_member_id: nil, resource_id: nil, sort_by: nil, status: nil, request_options: {})
      #
      # @param created_by_id [String]
      #
      # @param current_user_has_signed [Symbol, Privy::Models::IntentListParams::CurrentUserHasSigned]
      #
      # @param cursor [String]
      #
      # @param intent_type [Symbol, Privy::Models::IntentType] Type of intent.
      #
      # @param limit [Float, nil]
      #
      # @param pending_member_id [String]
      #
      # @param resource_id [String]
      #
      # @param sort_by [Symbol, Privy::Models::IntentListParams::SortBy]
      #
      # @param status [Symbol, Privy::Models::IntentStatus] Current status of an intent.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Internal::Cursor<Privy::Models::RpcIntentResponse, Privy::Models::TransferIntentResponse, Privy::Models::WalletIntentResponse, Privy::Models::PolicyIntentResponse, Privy::Models::RuleIntentResponse, Privy::Models::KeyQuorumIntentResponse>]
      #
      # @see Privy::Models::IntentListParams
      def list(params = {})
        parsed, options = Privy::IntentListParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/intents",
          query: query,
          page: Privy::Internal::Cursor,
          model: Privy::IntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentCreatePolicyRuleParams} for more details.
      #
      # Create an intent to add a rule to a policy. The intent must be authorized by the
      # policy owner before it can be executed.
      #
      # @overload create_policy_rule(policy_id, action:, conditions:, method_:, name:, privy_request_expiry: nil, request_options: {})
      #
      # @param policy_id [String] Path param: ID of the policy.
      #
      # @param action [Symbol, Privy::Models::PolicyAction] Body param: The action to take when a policy rule matches.
      #
      # @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>] Body param
      #
      # @param method_ [Symbol, Privy::Models::PolicyMethod] Body param: Method the rule applies to.
      #
      # @param name [String] Body param
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::RuleMutateIntentResponse]
      #
      # @see Privy::Models::IntentCreatePolicyRuleParams
      def create_policy_rule(policy_id, params)
        parsed, options = Privy::IntentCreatePolicyRuleParams.dump_request(params)
        header_params = {privy_request_expiry: "privy-request-expiry"}
        @client.request(
          method: :post,
          path: ["v1/intents/policies/%1$s/rules", policy_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::RuleMutateIntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentDeletePolicyRuleParams} for more details.
      #
      # Create an intent to delete a rule from a policy. The intent must be authorized
      # by the policy owner before it can be executed.
      #
      # @overload delete_policy_rule(rule_id, policy_id:, privy_request_expiry: nil, request_options: {})
      #
      # @param rule_id [String] Path param: ID of the rule.
      #
      # @param policy_id [String] Path param: ID of the policy.
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::RuleDeleteIntentResponse]
      #
      # @see Privy::Models::IntentDeletePolicyRuleParams
      def delete_policy_rule(rule_id, params)
        parsed, options = Privy::IntentDeletePolicyRuleParams.dump_request(params)
        policy_id =
          parsed.delete(:policy_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["v1/intents/policies/%1$s/rules/%2$s", policy_id, rule_id],
          headers: parsed.transform_keys(privy_request_expiry: "privy-request-expiry"),
          model: Privy::RuleDeleteIntentResponse,
          options: options
        )
      end

      # Retrieve an intent by ID. Returns the intent details including its current
      # status, authorization details, and execution result if applicable.
      #
      # @overload get(intent_id, request_options: {})
      #
      # @param intent_id [String] ID of the intent.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::RpcIntentResponse, Privy::Models::TransferIntentResponse, Privy::Models::WalletIntentResponse, Privy::Models::PolicyIntentResponse, Privy::Models::RuleIntentResponse, Privy::Models::KeyQuorumIntentResponse]
      #
      # @see Privy::Models::IntentGetParams
      def get(intent_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/intents/%1$s", intent_id],
          model: Privy::IntentResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentRpcParams} for more details.
      #
      # Create an intent to execute an RPC method on a wallet. The intent must be
      # authorized by either the wallet owner or signers before it can be executed.
      #
      # @overload rpc(wallet_id, wallet_rpc_request_body:, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param wallet_rpc_request_body [Privy::Models::EthereumSignTransactionRpcInput, Privy::Models::EthereumSendTransactionRpcInput, Privy::Models::EthereumPersonalSignRpcInput, Privy::Models::EthereumSignTypedDataRpcInput, Privy::Models::EthereumSecp256k1SignRpcInput, Privy::Models::EthereumSign7702AuthorizationRpcInput, Privy::Models::EthereumSignUserOperationRpcInput, Privy::Models::EthereumSendCallsRpcInput, Privy::Models::SolanaSignTransactionRpcInput, Privy::Models::SolanaSignAndSendTransactionRpcInput, Privy::Models::SolanaSignMessageRpcInput, Privy::Models::SparkTransferRpcInput, Privy::Models::SparkGetBalanceRpcInput, Privy::Models::SparkTransferTokensRpcInput, Privy::Models::SparkGetStaticDepositAddressRpcInput, Privy::Models::SparkGetClaimStaticDepositQuoteRpcInput, Privy::Models::SparkClaimStaticDepositRpcInput, Privy::Models::SparkCreateLightningInvoiceRpcInput, Privy::Models::SparkPayLightningInvoiceRpcInput, Privy::Models::SparkSignMessageWithIdentityKeyRpcInput, Privy::Models::ExportPrivateKeyRpcInput, Privy::Models::ExportSeedPhraseRpcInput] Body param: Request body for wallet RPC operations, discriminated by method.
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::RpcIntentResponse]
      #
      # @see Privy::Models::IntentRpcParams
      def rpc(wallet_id, params)
        parsed, options = Privy::IntentRpcParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/intents/wallets/%1$s/rpc", wallet_id],
          headers: parsed.except(:wallet_rpc_request_body).transform_keys(privy_request_expiry: "privy-request-expiry"),
          body: parsed[:wallet_rpc_request_body],
          model: Privy::RpcIntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentTransferParams} for more details.
      #
      # Create an intent to execute a token transfer via a wallet. The intent must be
      # authorized by either the wallet owner or signers before it can be executed.
      #
      # @overload transfer(wallet_id, destination:, source:, amount_type: nil, fee_configuration: nil, slippage_bps: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param destination [Privy::Models::TokenTransferDestination] Body param: The destination address for a token transfer. Optionally specify a d
      #
      # @param source [Privy::Models::NamedTokenTransferSource, Privy::Models::CustomTokenTransferSource] Body param: The source asset, amount, and chain for a token transfer. Specify ei
      #
      # @param amount_type [Symbol, Privy::Models::AmountType] Body param: Whether the amount refers to the input token or output token.
      #
      # @param fee_configuration [Privy::Models::FeeConfiguration] Body param: Total fees assessed on a transfer, in BPS
      #
      # @param slippage_bps [Integer] Body param: Maximum allowed slippage in basis points (1 bps = 0.01%). Only appli
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::TransferIntentResponse]
      #
      # @see Privy::Models::IntentTransferParams
      def transfer(wallet_id, params)
        parsed, options = Privy::IntentTransferParams.dump_request(params)
        header_params = {privy_request_expiry: "privy-request-expiry"}
        @client.request(
          method: :post,
          path: ["v1/intents/wallets/%1$s/transfer", wallet_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::TransferIntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentUpdateKeyQuorumParams} for more details.
      #
      # Create an intent to update a key quorum. The intent must be authorized by the
      # key quorum members before it can be executed.
      #
      # @overload update_key_quorum(key_quorum_id, authorization_threshold: nil, display_name: nil, key_quorum_ids: nil, public_keys: nil, user_ids: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param key_quorum_id [String] Path param: ID of the key quorum.
      #
      # @param authorization_threshold [Float] Body param: The number of keys that must sign for an action to be valid. Must be
      #
      # @param display_name [String] Body param
      #
      # @param key_quorum_ids [Array<String>] Body param: List of key quorum IDs that should be members of this key quorum. Ke
      #
      # @param public_keys [Array<String>] Body param: List of P-256 public keys of the keys that should be authorized to s
      #
      # @param user_ids [Array<String>] Body param: List of user IDs of the users that should be authorized to sign on t
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::KeyQuorumIntentResponse]
      #
      # @see Privy::Models::IntentUpdateKeyQuorumParams
      def update_key_quorum(key_quorum_id, params = {})
        parsed, options = Privy::IntentUpdateKeyQuorumParams.dump_request(params)
        header_params = {privy_request_expiry: "privy-request-expiry"}
        @client.request(
          method: :patch,
          path: ["v1/intents/key_quorums/%1$s", key_quorum_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::KeyQuorumIntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentUpdatePolicyParams} for more details.
      #
      # Create an intent to update a policy. The intent must be authorized by the policy
      # owner before it can be executed.
      #
      # @overload update_policy(policy_id, name: nil, owner: nil, owner_id: nil, rules: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param policy_id [String] Path param: ID of the policy.
      #
      # @param name [String] Body param: Name to assign to policy.
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] Body param: The owner of the resource, specified as a Privy user ID, a P-256 pub
      #
      # @param owner_id [String, nil] Body param: The key quorum ID to set as the owner of the resource. If you provid
      #
      # @param rules [Array<Privy::Models::PolicyRuleRequestBody>] Body param
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::PolicyIntentResponse]
      #
      # @see Privy::Models::IntentUpdatePolicyParams
      def update_policy(policy_id, params = {})
        parsed, options = Privy::IntentUpdatePolicyParams.dump_request(params)
        header_params = {privy_request_expiry: "privy-request-expiry"}
        @client.request(
          method: :patch,
          path: ["v1/intents/policies/%1$s", policy_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::PolicyIntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentUpdatePolicyRuleParams} for more details.
      #
      # Create an intent to update a rule on a policy. The intent must be authorized by
      # the policy owner before it can be executed.
      #
      # @overload update_policy_rule(rule_id, policy_id:, action:, conditions:, method_:, name:, privy_request_expiry: nil, request_options: {})
      #
      # @param rule_id [String] Path param: ID of the rule.
      #
      # @param policy_id [String] Path param: ID of the policy.
      #
      # @param action [Symbol, Privy::Models::PolicyAction] Body param: The action to take when a policy rule matches.
      #
      # @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>] Body param
      #
      # @param method_ [Symbol, Privy::Models::PolicyMethod] Body param: Method the rule applies to.
      #
      # @param name [String] Body param
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::RuleMutateIntentResponse]
      #
      # @see Privy::Models::IntentUpdatePolicyRuleParams
      def update_policy_rule(rule_id, params)
        parsed, options = Privy::IntentUpdatePolicyRuleParams.dump_request(params)
        policy_id =
          parsed.delete(:policy_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        header_params = {privy_request_expiry: "privy-request-expiry"}
        @client.request(
          method: :patch,
          path: ["v1/intents/policies/%1$s/rules/%2$s", policy_id, rule_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::RuleMutateIntentResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Privy::Models::IntentUpdateWalletParams} for more details.
      #
      # Create an intent to update a wallet. The intent must be authorized by the wallet
      # owner before it can be executed.
      #
      # @overload update_wallet(wallet_id, additional_signers: nil, display_name: nil, owner: nil, owner_id: nil, policy_ids: nil, privy_request_expiry: nil, request_options: {})
      #
      # @param wallet_id [String] Path param: ID of the wallet.
      #
      # @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Body param: Additional signers for the wallet.
      #
      # @param display_name [String, nil] Body param: A human-readable label for the wallet. Set to null to clear.
      #
      # @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] Body param: The owner of the resource, specified as a Privy user ID, a P-256 pub
      #
      # @param owner_id [String, nil] Body param: The key quorum ID to set as the owner of the resource. If you provid
      #
      # @param policy_ids [Array<String>] Body param: New policy IDs to enforce on the wallet. Currently, only one policy
      #
      # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletIntentResponse]
      #
      # @see Privy::Models::IntentUpdateWalletParams
      def update_wallet(wallet_id, params = {})
        parsed, options = Privy::IntentUpdateWalletParams.dump_request(params)
        header_params = {privy_request_expiry: "privy-request-expiry"}
        @client.request(
          method: :patch,
          path: ["v1/intents/wallets/%1$s", wallet_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Privy::WalletIntentResponse,
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
