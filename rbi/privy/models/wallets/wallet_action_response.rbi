# typed: strong

module Privy
  module Models
    WalletActionResponse = Wallets::WalletActionResponse

    module Wallets
      # Response for a wallet action, discriminated on type.
      module WalletActionResponse
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::SwapActionResponse,
              Privy::Wallets::TransferActionResponse,
              Privy::Wallets::EarnDepositActionResponse,
              Privy::Wallets::EarnWithdrawActionResponse,
              Privy::Wallets::EarnIncentiveClaimActionResponse,
              Privy::Wallets::EarnFeeCollectActionResponse
            )
          end

        sig do
          override.returns(
            T::Array[Privy::Wallets::WalletActionResponse::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
