# typed: strong

module Privy
  module Models
    class WalletCreationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletCreationInput, Privy::Internal::AnyHash)
        end

      # The wallet chain types.
      sig { returns(Privy::WalletChainType::OrSymbol) }
      attr_accessor :chain_type

      # Additional signers for the wallet.
      sig do
        returns(T.nilable(T::Array[Privy::WalletCreationAdditionalSignerItem]))
      end
      attr_reader :additional_signers

      sig do
        params(
          additional_signers:
            T::Array[Privy::WalletCreationAdditionalSignerItem::OrHash]
        ).void
      end
      attr_writer :additional_signers

      # Create a smart wallet with this wallet as the signer. Only supported for wallets
      # with `chain_type: "ethereum"`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :create_smart_wallet

      sig { params(create_smart_wallet: T::Boolean).void }
      attr_writer :create_smart_wallet

      # Policy IDs to enforce on the wallet. Currently, only one policy is supported per
      # wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # The fields on wallet creation that can be specified when creating a
      # user-controlled embedded server wallet.
      sig do
        params(
          chain_type: Privy::WalletChainType::OrSymbol,
          additional_signers:
            T::Array[Privy::WalletCreationAdditionalSignerItem::OrHash],
          create_smart_wallet: T::Boolean,
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet chain types.
        chain_type:,
        # Additional signers for the wallet.
        additional_signers: nil,
        # Create a smart wallet with this wallet as the signer. Only supported for wallets
        # with `chain_type: "ethereum"`.
        create_smart_wallet: nil,
        # Policy IDs to enforce on the wallet. Currently, only one policy is supported per
        # wallet.
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            chain_type: Privy::WalletChainType::OrSymbol,
            additional_signers:
              T::Array[Privy::WalletCreationAdditionalSignerItem],
            create_smart_wallet: T::Boolean,
            policy_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
