# typed: strong

module Privy
  module Models
    class DepositTravelRule < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositTravelRule, Privy::Internal::AnyHash)
        end

      # The bank-side party to a fiat transfer, for travel rule compliance.
      sig do
        returns(
          T.any(
            Privy::TravelRuleSelfCounterparty,
            Privy::TravelRuleIndividualCounterparty,
            Privy::TravelRuleBusinessCounterparty
          )
        )
      end
      attr_accessor :source

      # Travel rule information about who sends deposits into a fiat deposit account.
      sig do
        params(
          source:
            T.any(
              Privy::TravelRuleSelfCounterparty::OrHash,
              Privy::TravelRuleIndividualCounterparty::OrHash,
              Privy::TravelRuleBusinessCounterparty::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # The bank-side party to a fiat transfer, for travel rule compliance.
        source:
      )
      end

      sig do
        override.returns(
          {
            source:
              T.any(
                Privy::TravelRuleSelfCounterparty,
                Privy::TravelRuleIndividualCounterparty,
                Privy::TravelRuleBusinessCounterparty
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
