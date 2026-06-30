# typed: strong

module Privy
  module Models
    class Wallet < Privy::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Privy::Wallet, Privy::Internal::AnyHash) }

      # Unique ID of the wallet. This will be the primary identifier when using the
      # wallet in the future.
      sig { returns(String) }
      attr_accessor :id

      # Additional signers for the wallet.
      sig { returns(T::Array[Privy::WalletAdditionalSignerItem]) }
      attr_accessor :additional_signers

      # Address of the wallet.
      sig { returns(String) }
      attr_accessor :address

      # The wallet chain types.
      sig { returns(Privy::WalletChainType::TaggedSymbol) }
      attr_accessor :chain_type

      # Unix timestamp of when the wallet was created in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # Unix timestamp of when the wallet was exported in milliseconds, if the wallet
      # was exported.
      sig { returns(T.nilable(Float)) }
      attr_accessor :exported_at

      # Unix timestamp of when the wallet was imported in milliseconds, if the wallet
      # was imported.
      sig { returns(T.nilable(Float)) }
      attr_accessor :imported_at

      # The key quorum ID of the owner of the wallet.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # List of policy IDs for policies that are enforced on the wallet.
      sig { returns(T::Array[String]) }
      attr_accessor :policy_ids

      # Unix timestamp of when the wallet was archived in milliseconds, or null if the
      # wallet is active.
      sig { returns(T.nilable(Float)) }
      attr_accessor :archived_at

      # The number of keys that must sign for an action to be valid.
      sig { returns(T.nilable(Float)) }
      attr_reader :authorization_threshold

      sig { params(authorization_threshold: Float).void }
      attr_writer :authorization_threshold

      # Information about the custodian managing this wallet.
      sig { returns(T.nilable(Privy::WalletCustodian)) }
      attr_reader :custody

      sig { params(custody: Privy::WalletCustodian::OrHash).void }
      attr_writer :custody

      # A human-readable label for the wallet.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # A customer-provided identifier for mapping to external systems. Write-once, set
      # only at creation.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # The compressed, raw public key for the wallet along the chain cryptographic
      # curve.
      sig { returns(T.nilable(String)) }
      attr_reader :public_key

      sig { params(public_key: String).void }
      attr_writer :public_key

      # A wallet managed by Privy's wallet infrastructure.
      sig do
        params(
          id: String,
          additional_signers:
            T::Array[Privy::WalletAdditionalSignerItem::OrHash],
          address: String,
          chain_type: Privy::WalletChainType::OrSymbol,
          created_at: Float,
          exported_at: T.nilable(Float),
          imported_at: T.nilable(Float),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String],
          archived_at: T.nilable(Float),
          authorization_threshold: Float,
          custody: Privy::WalletCustodian::OrHash,
          display_name: String,
          external_id: String,
          public_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique ID of the wallet. This will be the primary identifier when using the
        # wallet in the future.
        id:,
        # Additional signers for the wallet.
        additional_signers:,
        # Address of the wallet.
        address:,
        # The wallet chain types.
        chain_type:,
        # Unix timestamp of when the wallet was created in milliseconds.
        created_at:,
        # Unix timestamp of when the wallet was exported in milliseconds, if the wallet
        # was exported.
        exported_at:,
        # Unix timestamp of when the wallet was imported in milliseconds, if the wallet
        # was imported.
        imported_at:,
        # The key quorum ID of the owner of the wallet.
        owner_id:,
        # List of policy IDs for policies that are enforced on the wallet.
        policy_ids:,
        # Unix timestamp of when the wallet was archived in milliseconds, or null if the
        # wallet is active.
        archived_at: nil,
        # The number of keys that must sign for an action to be valid.
        authorization_threshold: nil,
        # Information about the custodian managing this wallet.
        custody: nil,
        # A human-readable label for the wallet.
        display_name: nil,
        # A customer-provided identifier for mapping to external systems. Write-once, set
        # only at creation.
        external_id: nil,
        # The compressed, raw public key for the wallet along the chain cryptographic
        # curve.
        public_key: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            additional_signers: T::Array[Privy::WalletAdditionalSignerItem],
            address: String,
            chain_type: Privy::WalletChainType::TaggedSymbol,
            created_at: Float,
            exported_at: T.nilable(Float),
            imported_at: T.nilable(Float),
            owner_id: T.nilable(String),
            policy_ids: T::Array[String],
            archived_at: T.nilable(Float),
            authorization_threshold: Float,
            custody: Privy::WalletCustodian,
            display_name: String,
            external_id: String,
            public_key: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
