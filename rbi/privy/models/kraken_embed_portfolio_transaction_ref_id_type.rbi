# typed: strong

module Privy
  module Models
    # The type of reference ID used to filter portfolio transactions by quote or
    # failed quote references.
    module KrakenEmbedPortfolioTransactionRefIDType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::KrakenEmbedPortfolioTransactionRefIDType)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SIMPLE_ORDER_QUOTE =
        T.let(
          :simple_order_quote,
          Privy::KrakenEmbedPortfolioTransactionRefIDType::TaggedSymbol
        )
      SIMPLE_ORDER_QUOTE_FAILED =
        T.let(
          :simple_order_quote_failed,
          Privy::KrakenEmbedPortfolioTransactionRefIDType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::KrakenEmbedPortfolioTransactionRefIDType::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
