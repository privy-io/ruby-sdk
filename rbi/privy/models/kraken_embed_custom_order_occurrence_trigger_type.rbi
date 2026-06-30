# typed: strong

module Privy
  module Models
    # The trigger type that caused a custom order occurrence to execute.
    module KrakenEmbedCustomOrderOccurrenceTriggerType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::KrakenEmbedCustomOrderOccurrenceTriggerType)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TIME =
        T.let(
          :time,
          Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::TaggedSymbol
        )
      PRICE =
        T.let(
          :price,
          Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::TaggedSymbol
        )
      CRYPTO_DEPOSIT =
        T.let(
          :crypto_deposit,
          Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::TaggedSymbol
        )
      MARKET_OPEN =
        T.let(
          :market_open,
          Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
