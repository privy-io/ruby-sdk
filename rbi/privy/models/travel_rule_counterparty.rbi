# typed: strong

module Privy
  module Models
    # The bank-side party to a fiat transfer, for travel rule compliance.
    module TravelRuleCounterparty
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::TravelRuleSelfCounterparty,
            Privy::TravelRuleIndividualCounterparty,
            Privy::TravelRuleBusinessCounterparty
          )
        end

      sig do
        override.returns(T::Array[Privy::TravelRuleCounterparty::Variants])
      end
      def self.variants
      end
    end
  end
end
