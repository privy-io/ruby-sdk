# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementFundAmount < Privy::Internal::Type::BaseModel
        # @!attribute amount
        #   A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @return [String]
        required :amount, String

        # @!attribute fund
        #   Fund ticker, e.g. "WTGXX". Case-insensitive.
        #
        #   @return [String]
        required :fund, String

        # @!method initialize(amount:, fund:)
        #   An amount of fund shares a tMMF order sends or receives.
        #
        #   @param amount [String] A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        #
        #   @param fund [String] Fund ticker, e.g. "WTGXX". Case-insensitive.
      end
    end
  end
end
