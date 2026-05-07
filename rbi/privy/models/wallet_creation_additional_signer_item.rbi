# typed: strong

module Privy
  module Models
    class WalletCreationAdditionalSignerItem < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletCreationAdditionalSignerItem,
            Privy::Internal::AnyHash
          )
        end

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :signer_id

      # The array of policy IDs that will be applied to wallet requests. If specified,
      # this will override the base policy IDs set on the wallet. Currently, only one
      # policy is supported per signer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :override_policy_ids

      sig { params(override_policy_ids: T::Array[String]).void }
      attr_writer :override_policy_ids

      # An additional signer configuration for a wallet.
      sig do
        params(
          signer_id: String,
          override_policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a key quorum.
        signer_id:,
        # The array of policy IDs that will be applied to wallet requests. If specified,
        # this will override the base policy IDs set on the wallet. Currently, only one
        # policy is supported per signer.
        override_policy_ids: nil
      )
      end

      sig do
        override.returns(
          { signer_id: String, override_policy_ids: T::Array[String] }
        )
      end
      def to_hash
      end
    end
  end
end
