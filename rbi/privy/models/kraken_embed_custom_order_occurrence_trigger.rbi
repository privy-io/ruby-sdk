# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrenceTrigger < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderOccurrenceTrigger,
            Privy::Internal::AnyHash
          )
        end

      # The trigger type that caused a custom order occurrence to execute.
      sig do
        returns(Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::OrSymbol)
      end
      attr_accessor :type

      # Trigger metadata for a custom order occurrence.
      sig do
        params(
          type: Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The trigger type that caused a custom order occurrence to execute.
        type:
      )
      end

      sig do
        override.returns(
          { type: Privy::KrakenEmbedCustomOrderOccurrenceTriggerType::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
