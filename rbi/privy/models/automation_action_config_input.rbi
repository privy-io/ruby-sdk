# typed: strong

module Privy
  module Models
    # Configuration for an automation action (input form with alias support).
    module AutomationActionConfigInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::AutomationSwapActionConfigInput,
            Privy::AutomationEarnDepositActionConfigInput
          )
        end

      sig do
        override.returns(T::Array[Privy::AutomationActionConfigInput::Variants])
      end
      def self.variants
      end
    end
  end
end
