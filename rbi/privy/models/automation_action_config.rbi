# typed: strong

module Privy
  module Models
    # Configuration for an automation action.
    module AutomationActionConfig
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::AutomationSwapActionConfig,
            Privy::AutomationEarnDepositActionConfig
          )
        end

      sig do
        override.returns(T::Array[Privy::AutomationActionConfig::Variants])
      end
      def self.variants
      end
    end
  end
end
