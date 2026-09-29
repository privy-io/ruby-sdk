# typed: strong

module Privy
  module Models
    class PolicyListItem < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::PolicyListItem, Privy::Internal::AnyHash) }

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

      # A unique identifier for a key quorum.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # Version of the policy. Currently, 1.0 is the only version.
      sig { returns(Privy::PolicyListItem::Version::TaggedSymbol) }
      attr_accessor :version

      # A policy without its rules, as returned when listing policies.
      sig do
        params(
          id: String,
          chain_type: Privy::WalletChainType::OrSymbol,
          created_at: Float,
          name: String,
          owner_id: T.nilable(String),
          version: Privy::PolicyListItem::Version::OrSymbol
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
        # A unique identifier for a key quorum.
        owner_id:,
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
            version: Privy::PolicyListItem::Version::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Version of the policy. Currently, 1.0 is the only version.
      module Version
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::PolicyListItem::Version) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERSION_1_0 =
          T.let(:"1.0", Privy::PolicyListItem::Version::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PolicyListItem::Version::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
