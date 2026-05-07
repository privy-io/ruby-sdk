# typed: strong

module Privy
  module Models
    class CustodialWalletCreateInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CustodialWalletCreateInput, Privy::Internal::AnyHash)
        end

      # The chain type of the custodial wallet.
      sig { returns(Privy::CustodialWalletChainType::OrSymbol) }
      attr_accessor :chain_type

      # The provider of the custodial wallet.
      sig { returns(Privy::CustodialWalletProvider::OrSymbol) }
      attr_accessor :provider

      # The resource ID of the beneficiary of the custodial wallet, given by the
      # licensing provider.
      sig { returns(String) }
      attr_accessor :provider_user_id

      # Additional signers for the wallet.
      sig { returns(T.nilable(T::Array[Privy::AdditionalSignerItemInput])) }
      attr_reader :additional_signers

      sig do
        params(
          additional_signers: T::Array[Privy::AdditionalSignerItemInput::OrHash]
        ).void
      end
      attr_writer :additional_signers

      # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      # null to remove the current owner.
      sig do
        returns(
          T.nilable(T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey))
        )
      end
      attr_accessor :owner

      # An optional list of up to one policy ID to enforce on the wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # The input for creating a custodial wallet.
      sig do
        params(
          chain_type: Privy::CustodialWalletChainType::OrSymbol,
          provider: Privy::CustodialWalletProvider::OrSymbol,
          provider_user_id: String,
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The chain type of the custodial wallet.
        chain_type:,
        # The provider of the custodial wallet.
        provider:,
        # The resource ID of the beneficiary of the custodial wallet, given by the
        # licensing provider.
        provider_user_id:,
        # Additional signers for the wallet.
        additional_signers: nil,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # An optional list of up to one policy ID to enforce on the wallet.
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            chain_type: Privy::CustodialWalletChainType::OrSymbol,
            provider: Privy::CustodialWalletProvider::OrSymbol,
            provider_user_id: String,
            additional_signers: T::Array[Privy::AdditionalSignerItemInput],
            owner:
              T.nilable(
                T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
              ),
            policy_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
