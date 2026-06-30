# typed: strong

module Privy
  module Models
    class LinkedAccountWalletInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountWalletInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # The wallet chain types that offer first class support.
      sig { returns(Privy::FirstClassChainType::OrSymbol) }
      attr_accessor :chain_type

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing a wallet account.
      sig do
        params(
          address: String,
          chain_type: Privy::FirstClassChainType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        # The wallet chain types that offer first class support.
        chain_type:,
        type: :wallet
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::FirstClassChainType::OrSymbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
