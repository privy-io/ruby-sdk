# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Policies#create
    class PolicyCreateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute chain_type
      #   The wallet chain types.
      #
      #   @return [Symbol, Privy::Models::WalletChainType]
      required :chain_type, enum: -> { Privy::WalletChainType }

      # @!attribute name
      #   Name to assign to policy.
      #
      #   @return [String]
      required :name, String

      # @!attribute rules
      #
      #   @return [Array<Privy::Models::PolicyCreateParams::Rule>]
      required :rules, -> { Privy::Internal::Type::ArrayOf[Privy::PolicyCreateParams::Rule] }

      # @!attribute version
      #   Version of the policy. Currently, 1.0 is the only version.
      #
      #   @return [Symbol, Privy::Models::PolicyCreateParams::Version]
      required :version, enum: -> { Privy::PolicyCreateParams::Version }

      # @!attribute owner
      #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #   null to remove the current owner.
      #
      #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
      optional :owner, union: -> { Privy::OwnerInput }, nil?: true

      # @!attribute owner_id
      #   The key quorum ID to set as the owner of the resource. If you provide this, do
      #   not specify an owner.
      #
      #   @return [String, nil]
      optional :owner_id, String, nil?: true

      # @!attribute privy_idempotency_key
      #   Idempotency keys ensure API requests are executed only once within a 24-hour
      #   window.
      #
      #   @return [String, nil]
      optional :privy_idempotency_key, String

      # @!method initialize(chain_type:, name:, rules:, version:, owner: nil, owner_id: nil, privy_idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PolicyCreateParams} for more details.
      #
      #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      #   @param name [String] Name to assign to policy.
      #
      #   @param rules [Array<Privy::Models::PolicyCreateParams::Rule>]
      #
      #   @param version [Symbol, Privy::Models::PolicyCreateParams::Version] Version of the policy. Currently, 1.0 is the only version.
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
      #
      #   @param privy_idempotency_key [String] Idempotency keys ensure API requests are executed only once within a 24-hour win
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      class Rule < Privy::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take when a policy rule matches.
        #
        #   @return [Symbol, Privy::Models::PolicyAction]
        required :action, enum: -> { Privy::PolicyAction }

        # @!attribute conditions
        #
        #   @return [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>]
        required :conditions, -> { Privy::Internal::Type::ArrayOf[union: Privy::PolicyCondition] }

        # @!attribute method_
        #   Method the rule applies to.
        #
        #   @return [Symbol, Privy::Models::PolicyMethod]
        required :method_, enum: -> { Privy::PolicyMethod }, api_name: :method

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(action:, conditions:, method_:, name:, id: nil)
        #   @param action [Symbol, Privy::Models::PolicyAction] The action to take when a policy rule matches.
        #
        #   @param conditions [Array<Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition>]
        #
        #   @param method_ [Symbol, Privy::Models::PolicyMethod] Method the rule applies to.
        #
        #   @param name [String]
        #
        #   @param id [String]
      end

      # Version of the policy. Currently, 1.0 is the only version.
      module Version
        extend Privy::Internal::Type::Enum

        VERSION_1_0 = :"1.0"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
