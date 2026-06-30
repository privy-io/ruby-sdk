# typed: strong

module Privy
  module Models
    # Sort direction for paginated transaction lists.
    module KrakenEmbedSortingOrder
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedSortingOrder) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DESCENDING =
        T.let(:descending, Privy::KrakenEmbedSortingOrder::TaggedSymbol)
      ASCENDING =
        T.let(:ascending, Privy::KrakenEmbedSortingOrder::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::KrakenEmbedSortingOrder::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
