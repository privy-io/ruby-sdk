# typed: strong

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetPortfolioSummaryResponse,
            Privy::Internal::AnyHash
          )
        end

      # Kraken API response envelope for portfolio summary, containing optional errors
      # and the result payload.
      sig { returns(Privy::KrakenEmbedGetPortfolioSummaryResult) }
      attr_reader :data

      sig do
        params(data: Privy::KrakenEmbedGetPortfolioSummaryResult::OrHash).void
      end
      attr_writer :data

      # High-level summary of a user's portfolio including total value, available
      # balance, and unrealized P&L.
      sig do
        params(
          data: Privy::KrakenEmbedGetPortfolioSummaryResult::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Kraken API response envelope for portfolio summary, containing optional errors
        # and the result payload.
        data:
      )
      end

      sig do
        override.returns({ data: Privy::KrakenEmbedGetPortfolioSummaryResult })
      end
      def to_hash
      end
    end
  end
end
