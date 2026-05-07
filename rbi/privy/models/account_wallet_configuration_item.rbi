# typed: strong

module Privy
  module Models
    class AccountWalletConfigurationItem < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AccountWalletConfigurationItem, Privy::Internal::AnyHash)
        end

      # The wallet chain types that offer first class support.
      sig { returns(Privy::FirstClassChainType::OrSymbol) }
      attr_accessor :chain_type

      # Information about the custodian managing this wallet.
      sig { returns(T.nilable(Privy::WalletCustodian)) }
      attr_reader :custody

      sig { params(custody: Privy::WalletCustodian::OrHash).void }
      attr_writer :custody

      # Configuration for a wallet to create within an account.
      sig do
        params(
          chain_type: Privy::FirstClassChainType::OrSymbol,
          custody: Privy::WalletCustodian::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet chain types that offer first class support.
        chain_type:,
        # Information about the custodian managing this wallet.
        custody: nil
      )
      end

      sig do
        override.returns(
          {
            chain_type: Privy::FirstClassChainType::OrSymbol,
            custody: Privy::WalletCustodian
          }
        )
      end
      def to_hash
      end
    end
  end
end
