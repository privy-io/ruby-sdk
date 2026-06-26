# typed: strong

module Privy
  module Models
    class LinkedAccountBaseWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountBaseWallet, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # The wallet chain types that offer first class support.
      sig { returns(Privy::FirstClassChainType::TaggedSymbol) }
      attr_accessor :chain_type

      # The type of wallet linked account (external wallet or smart wallet).
      sig { returns(Privy::LinkedAccountBaseWalletType::TaggedSymbol) }
      attr_accessor :type

      # Base schema for wallet accounts linked to the user.
      sig do
        params(
          address: String,
          chain_type: Privy::FirstClassChainType::OrSymbol,
          type: Privy::LinkedAccountBaseWalletType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        # The wallet chain types that offer first class support.
        chain_type:,
        # The type of wallet linked account (external wallet or smart wallet).
        type:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::FirstClassChainType::TaggedSymbol,
            type: Privy::LinkedAccountBaseWalletType::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
