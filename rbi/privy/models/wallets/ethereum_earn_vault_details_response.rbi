# typed: strong

module Privy
  module Models
    module Wallets
      # Detailed vault information including current APY, liquidity, and asset metadata.
      # Discriminated on provider.
      module EthereumEarnVaultDetailsResponse
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::AaveVaultDetails,
              Privy::Wallets::MorphoVaultDetails
            )
          end

        sig do
          override.returns(
            T::Array[Privy::Wallets::EthereumEarnVaultDetailsResponse::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
