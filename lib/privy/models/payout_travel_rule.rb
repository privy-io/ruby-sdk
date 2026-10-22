# frozen_string_literal: true

module Privy
  module Models
    class PayoutTravelRule < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   The bank-side party to a fiat transfer, for travel rule compliance.
      #
      #   @return [Privy::Models::TravelRuleSelfCounterparty, Privy::Models::TravelRuleIndividualCounterparty, Privy::Models::TravelRuleBusinessCounterparty]
      required :destination, union: -> { Privy::TravelRuleCounterparty }

      # @!method initialize(destination:)
      #   Travel rule information about who receives a payout.
      #
      #   @param destination [Privy::Models::TravelRuleSelfCounterparty, Privy::Models::TravelRuleIndividualCounterparty, Privy::Models::TravelRuleBusinessCounterparty] The bank-side party to a fiat transfer, for travel rule compliance.
    end
  end
end
