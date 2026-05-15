# typed: strong

module Privy
  module Models
    class Policy < Privy::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Privy::Policy, Privy::Internal::AnyHash) }

      # Unique ID of the created policy. This will be the primary identifier when using
      # the policy in the future.
      sig { returns(String) }
      attr_accessor :id

      # The wallet chain types.
      sig { returns(Privy::WalletChainType::TaggedSymbol) }
      attr_accessor :chain_type

      # Unix timestamp of when the policy was created in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # Name to assign to policy.
      sig { returns(String) }
      attr_accessor :name

      # The key quorum ID of the owner of the policy.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      sig { returns(T::Array[Privy::PolicyRuleResponse]) }
      attr_accessor :rules

      # Version of the policy. Currently, 1.0 is the only version.
      sig { returns(Privy::Policy::Version::TaggedSymbol) }
      attr_accessor :version

      # A policy for controlling wallet operations.
      sig do
        params(
          id: String,
          chain_type: Privy::WalletChainType::OrSymbol,
          created_at: Float,
          name: String,
          owner_id: T.nilable(String),
          rules: T::Array[Privy::PolicyRuleResponse::OrHash],
          version: Privy::Policy::Version::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique ID of the created policy. This will be the primary identifier when using
        # the policy in the future.
        id:,
        # The wallet chain types.
        chain_type:,
        # Unix timestamp of when the policy was created in milliseconds.
        created_at:,
        # Name to assign to policy.
        name:,
        # The key quorum ID of the owner of the policy.
        owner_id:,
        rules:,
        # Version of the policy. Currently, 1.0 is the only version.
        version:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            chain_type: Privy::WalletChainType::TaggedSymbol,
            created_at: Float,
            name: String,
            owner_id: T.nilable(String),
            rules: T::Array[Privy::PolicyRuleResponse],
            version: Privy::Policy::Version::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Version of the policy. Currently, 1.0 is the only version.
      module Version
        extend Privy::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Privy::Policy::Version) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERSION_1_0 = T.let(:"1.0", Privy::Policy::Version::TaggedSymbol)

        sig { override.returns(T::Array[Privy::Policy::Version::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
