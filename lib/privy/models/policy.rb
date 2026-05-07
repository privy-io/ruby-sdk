# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Policies#create
    class Policy < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique ID of the created policy. This will be the primary identifier when using
      #   the policy in the future.
      #
      #   @return [String]
      required :id, String

      # @!attribute chain_type
      #   The wallet chain types.
      #
      #   @return [Symbol, Privy::Models::WalletChainType]
      required :chain_type, enum: -> { Privy::WalletChainType }

      # @!attribute created_at
      #   Unix timestamp of when the policy was created in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute name
      #   Name to assign to policy.
      #
      #   @return [String]
      required :name, String

      # @!attribute owner_id
      #   The key quorum ID of the owner of the policy.
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute rules
      #
      #   @return [Array<Privy::Models::PolicyRuleResponse>]
      required :rules, -> { Privy::Internal::Type::ArrayOf[Privy::PolicyRuleResponse] }

      # @!attribute version
      #   Version of the policy. Currently, 1.0 is the only version.
      #
      #   @return [Symbol, Privy::Models::Policy::Version]
      required :version, enum: -> { Privy::Policy::Version }

      # @!method initialize(id:, chain_type:, created_at:, name:, owner_id:, rules:, version:)
      #   Some parameter documentations has been truncated, see {Privy::Models::Policy}
      #   for more details.
      #
      #   A policy for controlling wallet operations.
      #
      #   @param id [String] Unique ID of the created policy. This will be the primary identifier when using
      #
      #   @param chain_type [Symbol, Privy::Models::WalletChainType] The wallet chain types.
      #
      #   @param created_at [Float] Unix timestamp of when the policy was created in milliseconds.
      #
      #   @param name [String] Name to assign to policy.
      #
      #   @param owner_id [String, nil] The key quorum ID of the owner of the policy.
      #
      #   @param rules [Array<Privy::Models::PolicyRuleResponse>]
      #
      #   @param version [Symbol, Privy::Models::Policy::Version] Version of the policy. Currently, 1.0 is the only version.

      # Version of the policy. Currently, 1.0 is the only version.
      #
      # @see Privy::Models::Policy#version
      module Version
        extend Privy::Internal::Type::Enum

        VERSION_1_0 = :"1.0"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
