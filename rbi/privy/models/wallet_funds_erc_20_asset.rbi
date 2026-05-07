# typed: strong

module Privy
  module Models
    class WalletFundsErc20Asset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletFundsErc20Asset, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::WalletFundsErc20Asset::Type::TaggedSymbol) }
      attr_accessor :type

      # An ERC-20 token asset.
      sig do
        params(
          address: String,
          type: Privy::WalletFundsErc20Asset::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(address:, type:)
      end

      sig do
        override.returns(
          {
            address: String,
            type: Privy::WalletFundsErc20Asset::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::WalletFundsErc20Asset::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERC20 = T.let(:erc20, Privy::WalletFundsErc20Asset::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletFundsErc20Asset::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
