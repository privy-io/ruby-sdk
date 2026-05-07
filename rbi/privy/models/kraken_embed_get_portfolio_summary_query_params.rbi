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

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::OrSymbol
          )
        )
      end
      attr_reader :include_current_day_pnl

      sig do
        params(
          include_current_day_pnl:
            Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::OrSymbol
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
            Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::OrSymbol,
          quote: String
        ).returns(T.attached_class)
      end
      def self.new(include_current_day_pnl: nil, quote: nil)
      end

      sig do
        override.returns(
          {
            include_current_day_pnl:
              Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::OrSymbol,
            quote: String
          }
        )
      end
      def to_hash
      end

      module IncludeCurrentDayPnl
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
