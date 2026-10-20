# typed: strong

module Privy
  module Models
    class AccountWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AccountWallet, Privy::Internal::AnyHash) }

      # The wallet ID.
      sig { returns(String) }
      attr_accessor :id

      # The on-chain address of the wallet.
      sig { returns(String) }
      attr_accessor :address

      # The wallet chain types supported in digital asset accounts.
      sig { returns(T.any(Privy::AccountWalletChainType::OrSymbol, String)) }
      attr_accessor :chain_type

      # A wallet belonging to a digital asset account.
      sig do
        params(
          id: String,
          address: String,
          chain_type: T.any(Privy::AccountWalletChainType::OrSymbol, String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet ID.
        id:,
        # The on-chain address of the wallet.
        address:,
        # The wallet chain types supported in digital asset accounts.
        chain_type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: String,
            chain_type: T.any(Privy::AccountWalletChainType::OrSymbol, String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
