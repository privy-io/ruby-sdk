# typed: strong

module Privy
  module Models
    class WalletBatchItemInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletBatchItemInput, Privy::Internal::AnyHash)
        end

      # The wallet chain types.
      sig { returns(Privy::WalletChainType::OrSymbol) }
      attr_accessor :chain_type

      # Additional signers for the wallet.
      sig { returns(T.nilable(T::Array[Privy::AdditionalSignerItemInput])) }
      attr_reader :additional_signers

      sig do
        params(
          additional_signers: T::Array[Privy::AdditionalSignerItemInput::OrHash]
        ).void
      end
      attr_writer :additional_signers

      # A human-readable label for the wallet.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # A customer-provided identifier for mapping to external systems. URL-safe
      # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
      # after creation.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      # null to remove the current owner.
      sig do
        returns(
          T.nilable(T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey))
        )
      end
      attr_accessor :owner

      # The key quorum ID to set as the owner of the resource. If you provide this, do
      # not specify an owner.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # List of policy IDs for policies that should be enforced on the wallet.
      # Currently, only one policy is supported per wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # Input for a single wallet in a batch creation request.
      sig do
        params(
          chain_type: Privy::WalletChainType::OrSymbol,
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          display_name: String,
          external_id: String,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet chain types.
        chain_type:,
        # Additional signers for the wallet.
        additional_signers: nil,
        # A human-readable label for the wallet.
        display_name: nil,
        # A customer-provided identifier for mapping to external systems. URL-safe
        # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
        # after creation.
        external_id: nil,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil,
        # List of policy IDs for policies that should be enforced on the wallet.
        # Currently, only one policy is supported per wallet.
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            chain_type: Privy::WalletChainType::OrSymbol,
            additional_signers: T::Array[Privy::AdditionalSignerItemInput],
            display_name: String,
            external_id: String,
            owner:
              T.nilable(
                T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
              ),
            owner_id: T.nilable(String),
            policy_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
