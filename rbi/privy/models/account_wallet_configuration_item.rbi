# typed: strong

module Privy
  module Models
    class AccountWalletConfigurationItem < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AccountWalletConfigurationItem, Privy::Internal::AnyHash)
        end

      # The wallet chain types supported in digital asset accounts.
      sig { returns(T.any(Privy::AccountWalletChainType::OrSymbol, String)) }
      attr_accessor :chain_type

      # Configuration for a wallet to create within an account.
      sig do
        params(
          chain_type: T.any(Privy::AccountWalletChainType::OrSymbol, String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet chain types supported in digital asset accounts.
        chain_type:
      )
      end

      sig do
        override.returns(
          { chain_type: T.any(Privy::AccountWalletChainType::OrSymbol, String) }
        )
      end
      def to_hash
      end
    end
  end
end
