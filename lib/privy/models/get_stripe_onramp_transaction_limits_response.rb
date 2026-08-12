# frozen_string_literal: true

module Privy
  module Models
    class GetStripeOnrampTransactionLimitsResponse < Privy::Internal::Type::BaseModel
      # @!attribute limits
      #
      #   @return [Hash{Symbol=>Hash{Symbol=>Array<Privy::Models::StripeOnrampTransactionLimit>}}]
      required :limits,
               -> {
                 Privy::Internal::Type::HashOf[Privy::Internal::Type::HashOf[Privy::Internal::Type::ArrayOf[Privy::StripeOnrampTransactionLimit]]]
               }

      # @!method initialize(limits:)
      #   The remaining Stripe onramp limits by source currency and payment method.
      #
      #   @param limits [Hash{Symbol=>Hash{Symbol=>Array<Privy::Models::StripeOnrampTransactionLimit>}}]
    end
  end
end
