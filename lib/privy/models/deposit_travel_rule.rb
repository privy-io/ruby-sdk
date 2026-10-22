# frozen_string_literal: true

module Privy
  module Models
    class DepositTravelRule < Privy::Internal::Type::BaseModel
      # @!attribute source
      #   The bank-side party to a fiat transfer, for travel rule compliance.
      #
      #   @return [Privy::Models::TravelRuleSelfCounterparty, Privy::Models::TravelRuleIndividualCounterparty, Privy::Models::TravelRuleBusinessCounterparty]
      required :source, union: -> { Privy::TravelRuleCounterparty }

      # @!method initialize(source:)
      #   Travel rule information about who sends deposits into a fiat deposit account.
      #
      #   @param source [Privy::Models::TravelRuleSelfCounterparty, Privy::Models::TravelRuleIndividualCounterparty, Privy::Models::TravelRuleBusinessCounterparty] The bank-side party to a fiat transfer, for travel rule compliance.
    end
  end
end
