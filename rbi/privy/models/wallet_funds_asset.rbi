# typed: strong

module Privy
  module Models
    # An asset involved in a wallet transfer.
    module WalletFundsAsset
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::WalletFundsNativeTokenAsset,
            Privy::WalletFundsErc20Asset,
            Privy::WalletFundsSplAsset,
            Privy::WalletFundsSacAsset
          )
        end

      sig { override.returns(T::Array[Privy::WalletFundsAsset::Variants]) }
      def self.variants
      end
    end
  end
end
