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

      # The chain of the custodial wallet.
      sig { returns(Privy::CustodialWalletChain::OrSymbol) }
      attr_accessor :chain

      # Information about the custodian managing this wallet.
      sig { returns(Privy::WalletCustodian) }
      attr_reader :custody

      sig { params(custody: Privy::WalletCustodian::OrHash).void }
      attr_writer :custody

      # A unique identifier for a key quorum.
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

      # The chain type of the custodial wallet (deprecated).
      sig { returns(T.nilable(Privy::CustodialWalletChainType::OrSymbol)) }
      attr_reader :chain_type

      sig { params(chain_type: Privy::CustodialWalletChainType::OrSymbol).void }
      attr_writer :chain_type

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # Information about a custodial wallet.
      sig do
        params(
          id: String,
          address: String,
          chain: Privy::CustodialWalletChain::OrSymbol,
          custody: Privy::WalletCustodian::OrHash,
          owner_id: T.nilable(String),
          additional_signers:
            T::Array[Privy::WalletAdditionalSignerItem::OrHash],
          chain_type: Privy::CustodialWalletChainType::OrSymbol,
          policy_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        address:,
        # The chain of the custodial wallet.
        chain:,
        # Information about the custodian managing this wallet.
        custody:,
        # A unique identifier for a key quorum.
        owner_id:,
        # Additional signers for the wallet.
        additional_signers: nil,
        # The chain type of the custodial wallet (deprecated).
        chain_type: nil,
        policy_ids: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: String,
            chain: Privy::CustodialWalletChain::OrSymbol,
            custody: Privy::WalletCustodian,
            owner_id: T.nilable(String),
            additional_signers: T::Array[Privy::WalletAdditionalSignerItem],
            chain_type: Privy::CustodialWalletChainType::OrSymbol,
            policy_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
