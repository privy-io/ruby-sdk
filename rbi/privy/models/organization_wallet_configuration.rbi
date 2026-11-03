# typed: strong

module Privy
  module Models
    class OrganizationWalletConfiguration < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OrganizationWalletConfiguration,
            Privy::Internal::AnyHash
          )
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

      # An optional list of up to one policy ID to enforce on the wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # Default policies and additional signers for wallets of one chain type.
      sig do
        params(
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Additional signers for the wallet.
        additional_signers: nil,
        # An optional list of up to one policy ID to enforce on the wallet.
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            additional_signers: T::Array[Privy::AdditionalSignerItemInput],
            policy_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
