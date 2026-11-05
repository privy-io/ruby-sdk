# typed: strong

module Privy
  module Models
    module Wallets
      # What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
      # withdrawal.
      module WisdomTreeSettlementReceivedAmount
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::WisdomTreeSettlementFundAmount,
              Privy::Wallets::WisdomTreeSettlementWithdrawAssetAmount
            )
          end

        sig do
          override.returns(
            T::Array[
              Privy::Wallets::WisdomTreeSettlementReceivedAmount::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
