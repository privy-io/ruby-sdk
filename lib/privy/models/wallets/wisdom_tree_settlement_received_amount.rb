# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
      # withdrawal.
      module WisdomTreeSettlementReceivedAmount
        extend Privy::Internal::Type::Union

        # An amount of fund shares a tMMF order sends or receives.
        variant -> { Privy::Wallets::WisdomTreeSettlementFundAmount }

        # An amount of the currency a tMMF withdrawal receives.
        variant -> { Privy::Wallets::WisdomTreeSettlementWithdrawAssetAmount }

        # @!method self.variants
        #   @return [Array(Privy::Models::Wallets::WisdomTreeSettlementFundAmount, Privy::Models::Wallets::WisdomTreeSettlementWithdrawAssetAmount)]
      end
    end
  end
end
