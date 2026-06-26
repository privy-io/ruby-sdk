# typed: strong

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetPortfolioSummaryQueryParams,
            Privy::Internal::AnyHash
          )
        end

      # A string-encoded boolean query parameter on including current day profit and
      # loss.
      sig do
        returns(
          T.nilable(Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::OrSymbol)
        )
      end
      attr_reader :include_current_day_pnl

      sig do
        params(
          include_current_day_pnl:
            Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::OrSymbol
        ).void
      end
      attr_writer :include_current_day_pnl

      sig { returns(T.nilable(String)) }
      attr_reader :quote

      sig { params(quote: String).void }
      attr_writer :quote

      # Query parameters for getting a portfolio summary.
      sig do
        params(
          include_current_day_pnl:
            Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::OrSymbol,
          quote: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A string-encoded boolean query parameter on including current day profit and
        # loss.
        include_current_day_pnl: nil,
        quote: nil
      )
      end

      sig do
        override.returns(
          {
            include_current_day_pnl:
              Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam::OrSymbol,
            quote: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
