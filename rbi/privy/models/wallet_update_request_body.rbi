# typed: strong

module Privy
  module Models
    class WalletUpdateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletUpdateRequestBody, Privy::Internal::AnyHash)
        end

      # Additional signers for the wallet.
      sig { returns(T.nilable(T::Array[Privy::AdditionalSignerItemInput])) }
      attr_reader :additional_signers

      sig do
        params(
          additional_signers: T::Array[Privy::AdditionalSignerItemInput::OrHash]
        ).void
      end
      attr_writer :additional_signers

      # A human-readable label for the wallet. Set to null to clear.
      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

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

      # New policy IDs to enforce on the wallet. Currently, only one policy is supported
      # per wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # Request body for updating a wallet.
      sig do
        params(
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
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Additional signers for the wallet.
        additional_signers: nil,
        # A human-readable label for the wallet. Set to null to clear.
        display_name: nil,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil,
        # New policy IDs to enforce on the wallet. Currently, only one policy is supported
        # per wallet.
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            additional_signers: T::Array[Privy::AdditionalSignerItemInput],
            display_name: T.nilable(String),
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
