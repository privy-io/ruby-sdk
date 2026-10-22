# typed: strong

module Privy
  module Models
    class PayoutTravelRule < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PayoutTravelRule, Privy::Internal::AnyHash)
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
      attr_accessor :destination

      # Travel rule information about who receives a payout.
      sig do
        params(
          destination:
            T.any(
              Privy::TravelRuleSelfCounterparty::OrHash,
              Privy::TravelRuleIndividualCounterparty::OrHash,
              Privy::TravelRuleBusinessCounterparty::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # The bank-side party to a fiat transfer, for travel rule compliance.
        destination:
      )
      end

      sig do
        override.returns(
          {
            destination:
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
