# typed: strong

module Privy
  module Models
    class CustodialWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::CustodialWallet, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :address

      # The chain type of the custodial wallet.
      sig { returns(Privy::CustodialWalletChainType::OrSymbol) }
      attr_accessor :chain_type

      # Information about the custodian managing this wallet.
      sig { returns(Privy::WalletCustodian) }
      attr_reader :custody

      sig { params(custody: Privy::WalletCustodian::OrHash).void }
      attr_writer :custody

      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # Additional signers for the wallet.
      sig { returns(T.nilable(T::Array[Privy::WalletAdditionalSignerItem])) }
      attr_reader :additional_signers

      sig do
        params(
          additional_signers:
            T::Array[Privy::WalletAdditionalSignerItem::OrHash]
        ).void
      end
      attr_writer :additional_signers

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # Information about a custodial wallet.
      sig do
        params(
          id: String,
          address: String,
          chain_type: Privy::CustodialWalletChainType::OrSymbol,
          custody: Privy::WalletCustodian::OrHash,
          owner_id: T.nilable(String),
          additional_signers:
            T::Array[Privy::WalletAdditionalSignerItem::OrHash],
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        address:,
        # The chain type of the custodial wallet.
        chain_type:,
        # Information about the custodian managing this wallet.
        custody:,
        owner_id:,
        # Additional signers for the wallet.
        additional_signers: nil,
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: String,
            chain_type: Privy::CustodialWalletChainType::OrSymbol,
            custody: Privy::WalletCustodian,
            owner_id: T.nilable(String),
            additional_signers: T::Array[Privy::WalletAdditionalSignerItem],
            policy_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
