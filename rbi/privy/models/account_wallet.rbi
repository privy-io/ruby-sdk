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

      # The wallet chain types that offer first class support.
      sig { returns(Privy::FirstClassChainType::OrSymbol) }
      attr_accessor :chain_type

      # A wallet belonging to a digital asset account.
      sig do
        params(
          id: String,
          address: String,
          chain_type: Privy::FirstClassChainType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet ID.
        id:,
        # The on-chain address of the wallet.
        address:,
        # The wallet chain types that offer first class support.
        chain_type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: String,
            chain_type: Privy::FirstClassChainType::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
