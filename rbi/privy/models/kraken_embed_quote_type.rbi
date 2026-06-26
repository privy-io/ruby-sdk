# typed: strong

module Privy
  module Models
    # Whether the quote amount refers to the asset being received or spent.
    module KrakenEmbedQuoteType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::KrakenEmbedQuoteType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RECEIVE = T.let(:receive, Privy::KrakenEmbedQuoteType::TaggedSymbol)
      SPEND = T.let(:spend, Privy::KrakenEmbedQuoteType::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::KrakenEmbedQuoteType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
