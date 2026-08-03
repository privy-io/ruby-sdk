# typed: strong

module Privy
  module Models
    class WalletFundsTrc20Asset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletFundsTrc20Asset, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::WalletFundsTrc20Asset::Type::TaggedSymbol) }
      attr_accessor :type

      # A Tron TRC-20 token asset.
      sig do
        params(
          address: String,
          type: Privy::WalletFundsTrc20Asset::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(address:, type:)
      end

      sig do
        override.returns(
          {
            address: String,
            type: Privy::WalletFundsTrc20Asset::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::WalletFundsTrc20Asset::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRC20 = T.let(:trc20, Privy::WalletFundsTrc20Asset::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletFundsTrc20Asset::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
