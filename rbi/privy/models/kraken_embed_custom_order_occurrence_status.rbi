# typed: strong

module Privy
  module Models
    # Outcome status of a custom order execution occurrence.
    module KrakenEmbedCustomOrderOccurrenceStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::KrakenEmbedCustomOrderOccurrenceStatus)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUCCESS =
        T.let(
          :success,
          Privy::KrakenEmbedCustomOrderOccurrenceStatus::TaggedSymbol
        )
      FAILURE =
        T.let(
          :failure,
          Privy::KrakenEmbedCustomOrderOccurrenceStatus::TaggedSymbol
        )
      SKIPPED =
        T.let(
          :skipped,
          Privy::KrakenEmbedCustomOrderOccurrenceStatus::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedCustomOrderOccurrenceStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
