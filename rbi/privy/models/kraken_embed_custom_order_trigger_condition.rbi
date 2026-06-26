# typed: strong

module Privy
  module Models
    # Comparison operator for a custom order price trigger.
    module KrakenEmbedCustomOrderTriggerCondition
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::KrakenEmbedCustomOrderTriggerCondition)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      GTE =
        T.let(:gte, Privy::KrakenEmbedCustomOrderTriggerCondition::TaggedSymbol)
      LTE =
        T.let(:lte, Privy::KrakenEmbedCustomOrderTriggerCondition::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedCustomOrderTriggerCondition::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
