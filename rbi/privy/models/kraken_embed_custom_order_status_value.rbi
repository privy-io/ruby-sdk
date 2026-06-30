# typed: strong

module Privy
  module Models
    # The lifecycle state of a custom order.
    module KrakenEmbedCustomOrderStatusValue
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedCustomOrderStatusValue) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE =
        T.let(:active, Privy::KrakenEmbedCustomOrderStatusValue::TaggedSymbol)
      COMPLETED =
        T.let(
          :completed,
          Privy::KrakenEmbedCustomOrderStatusValue::TaggedSymbol
        )
      CANCELLED =
        T.let(
          :cancelled,
          Privy::KrakenEmbedCustomOrderStatusValue::TaggedSymbol
        )
      PAUSED =
        T.let(:paused, Privy::KrakenEmbedCustomOrderStatusValue::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedCustomOrderStatusValue::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
