# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # What a tMMF order sends: the deposit asset for a deposit, fund shares for a
      # withdrawal.
      module WisdomTreeSettlementRequestedAmount
        extend Privy::Internal::Type::Union

        # An amount of the currency a tMMF deposit sends.
        variant -> { Privy::Wallets::WisdomTreeSettlementDepositAssetAmount }

        # An amount of fund shares a tMMF order sends or receives.
        variant -> { Privy::Wallets::WisdomTreeSettlementFundAmount }

        # @!method self.variants
        #   @return [Array(Privy::Models::Wallets::WisdomTreeSettlementDepositAssetAmount, Privy::Models::Wallets::WisdomTreeSettlementFundAmount)]
      end
    end
  end
end
