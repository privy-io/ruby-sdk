# frozen_string_literal: true

module Privy
  module Models
    # The bank-side party to a fiat transfer, for travel rule compliance.
    module TravelRuleCounterparty
      extend Privy::Internal::Type::Union

      discriminator :type

      # The bank-side party is the KYC-verified customer. Bridge uses the customer's name and address on file.
      variant :self, -> { Privy::TravelRuleSelfCounterparty }

      # The bank-side party is a person other than the customer.
      variant :individual, -> { Privy::TravelRuleIndividualCounterparty }

      # The bank-side party is a business other than the customer.
      variant :business, -> { Privy::TravelRuleBusinessCounterparty }

      # @!method self.variants
      #   @return [Array(Privy::Models::TravelRuleSelfCounterparty, Privy::Models::TravelRuleIndividualCounterparty, Privy::Models::TravelRuleBusinessCounterparty)]
    end
  end
end
