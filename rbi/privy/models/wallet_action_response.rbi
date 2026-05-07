# typed: strong

module Privy
  module Models
    # Response for a wallet action, discriminated on type.
    module WalletActionResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SwapActionResponse,
            Privy::TransferActionResponse,
            Privy::EarnDepositActionResponse,
            Privy::EarnWithdrawActionResponse,
            Privy::EarnIncentiveClaimActionResponse
          )
        end

      sig { override.returns(T::Array[Privy::WalletActionResponse::Variants]) }
      def self.variants
      end
    end
  end
end
