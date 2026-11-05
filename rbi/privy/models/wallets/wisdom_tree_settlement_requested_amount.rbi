# typed: strong

module Privy
  module Models
    module Wallets
      # What a tMMF order sends: the deposit asset for a deposit, fund shares for a
      # withdrawal.
      module WisdomTreeSettlementRequestedAmount
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::WisdomTreeSettlementDepositAssetAmount,
              Privy::Wallets::WisdomTreeSettlementFundAmount
            )
          end

        sig do
          override.returns(
            T::Array[
              Privy::Wallets::WisdomTreeSettlementRequestedAmount::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
