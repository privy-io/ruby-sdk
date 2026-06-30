# typed: strong

module Privy
  module Models
    # Sorting options for the asset list endpoint.
    module KrakenEmbedAssetSortOption
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedAssetSortOption) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRENDING =
        T.let(:trending, Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      MARKET_CAP_RANK =
        T.let(:market_cap_rank, Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      MINUS_MARKET_CAP_RANK =
        T.let(
          :"-market_cap_rank",
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      SYMBOL = T.let(:symbol, Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      MINUS_SYMBOL =
        T.let(:"-symbol", Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      NAME = T.let(:name, Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      MINUS_NAME =
        T.let(:"-name", Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      CHANGE_PERCENT_1H =
        T.let(
          :change_percent_1h,
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      MINUS_CHANGE_PERCENT_1_H =
        T.let(
          :"-change_percent_1h",
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      CHANGE_PERCENT_24H =
        T.let(
          :change_percent_24h,
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      MINUS_CHANGE_PERCENT_24_H =
        T.let(
          :"-change_percent_24h",
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      CHANGE_PERCENT_7D =
        T.let(
          :change_percent_7d,
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      MINUS_CHANGE_PERCENT_7_D =
        T.let(
          :"-change_percent_7d",
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      CHANGE_PERCENT_30D =
        T.let(
          :change_percent_30d,
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      MINUS_CHANGE_PERCENT_30_D =
        T.let(
          :"-change_percent_30d",
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      CHANGE_PERCENT_1Y =
        T.let(
          :change_percent_1y,
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      MINUS_CHANGE_PERCENT_1_Y =
        T.let(
          :"-change_percent_1y",
          Privy::KrakenEmbedAssetSortOption::TaggedSymbol
        )
      LISTING_DATE =
        T.let(:listing_date, Privy::KrakenEmbedAssetSortOption::TaggedSymbol)
      MINUS_LISTING_DATE =
        T.let(:"-listing_date", Privy::KrakenEmbedAssetSortOption::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedAssetSortOption::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
