# typed: strong

module Privy
  module Models
    # Type of portfolio transaction in the transaction history.
    module KrakenEmbedTransactionType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedTransactionType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SIMPLE_ORDER =
        T.let(:simple_order, Privy::KrakenEmbedTransactionType::TaggedSymbol)
      SIMPLE_ORDER_FAILED =
        T.let(
          :simple_order_failed,
          Privy::KrakenEmbedTransactionType::TaggedSymbol
        )
      EARN_REWARD =
        T.let(:earn_reward, Privy::KrakenEmbedTransactionType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedTransactionType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
