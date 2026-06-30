# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderAction < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCustomOrderAction, Privy::Internal::AnyHash)
        end

      # Asset amount for custom order actions.
      sig { returns(Privy::KrakenEmbedCustomOrderAmount) }
      attr_reader :amount

      sig { params(amount: Privy::KrakenEmbedCustomOrderAmount::OrHash).void }
      attr_writer :amount

      sig { returns(String) }
      attr_accessor :fee_bps

      # Target asset for the other side of the custom order trade.
      sig { returns(Privy::KrakenEmbedCustomOrderQuoteAsset) }
      attr_reader :quote

      sig do
        params(quote: Privy::KrakenEmbedCustomOrderQuoteAsset::OrHash).void
      end
      attr_writer :quote

      sig { returns(String) }
      attr_accessor :spread_bps

      # Whether the quote amount refers to the asset being received or spent.
      sig { returns(Privy::KrakenEmbedQuoteType::OrSymbol) }
      attr_accessor :type

      # Trade action for a custom order.
      sig do
        params(
          amount: Privy::KrakenEmbedCustomOrderAmount::OrHash,
          fee_bps: String,
          quote: Privy::KrakenEmbedCustomOrderQuoteAsset::OrHash,
          spread_bps: String,
          type: Privy::KrakenEmbedQuoteType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Asset amount for custom order actions.
        amount:,
        fee_bps:,
        # Target asset for the other side of the custom order trade.
        quote:,
        spread_bps:,
        # Whether the quote amount refers to the asset being received or spent.
        type:
      )
      end

      sig do
        override.returns(
          {
            amount: Privy::KrakenEmbedCustomOrderAmount,
            fee_bps: String,
            quote: Privy::KrakenEmbedCustomOrderQuoteAsset,
            spread_bps: String,
            type: Privy::KrakenEmbedQuoteType::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
