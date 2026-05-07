# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetAssetListQueryParamsSchema < Privy::Internal::Type::BaseModel
      # @!attribute filter_assets
      #
      #   @return [Array<String>, nil]
      optional :filter_assets, Privy::Internal::Type::ArrayOf[String], api_name: :"filter[assets]"

      # @!attribute filter_platform_statuses
      #
      #   @return [Array<Symbol, String, Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus>, nil]
      optional :filter_platform_statuses,
               -> {
                 Privy::Internal::Type::ArrayOf[union: Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus]
               },
               api_name: :"filter[platform_statuses]"

      # @!attribute filter_tradable_only
      #
      #   @return [Boolean, nil]
      optional :filter_tradable_only,
               Privy::Internal::Type::Boolean,
               api_name: :"filter[tradable_only]",
               nil?: true

      # @!attribute filter_user
      #
      #   @return [String, nil]
      optional :filter_user, String, api_name: :"filter[user]"

      # @!attribute lang
      #
      #   @return [String, nil]
      optional :lang, String

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer, api_name: :"page[number]"

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer, api_name: :"page[size]"

      # @!attribute quote
      #
      #   @return [String, nil]
      optional :quote, String

      # @!attribute sort
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::Sort, nil]
      optional :sort, enum: -> { Privy::KrakenEmbedGetAssetListQueryParamsSchema::Sort }

      # @!method initialize(filter_assets: nil, filter_platform_statuses: nil, filter_tradable_only: nil, filter_user: nil, lang: nil, page_number: nil, page_size: nil, quote: nil, sort: nil)
      #   Query parameters for listing and filtering available assets.
      #
      #   @param filter_assets [Array<String>]
      #   @param filter_platform_statuses [Array<Symbol, String, Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus>]
      #   @param filter_tradable_only [Boolean, nil]
      #   @param filter_user [String]
      #   @param lang [String]
      #   @param page_number [Integer]
      #   @param page_size [Integer]
      #   @param quote [String]
      #   @param sort [Symbol, Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::Sort]

      module FilterPlatformStatus
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::ENABLED }

        variant const: -> { Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::DEPOSIT_ONLY }

        variant const: -> { Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::WITHDRAWAL_ONLY }

        variant const: -> { Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::FUNDING_TEMPORARILY_DISABLED }

        variant const: -> { Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::DISABLED }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol, String) }
        end

        # @!group

        ENABLED = :enabled
        DEPOSIT_ONLY = :deposit_only
        WITHDRAWAL_ONLY = :withdrawal_only
        FUNDING_TEMPORARILY_DISABLED = :funding_temporarily_disabled
        DISABLED = :disabled

        # @!endgroup
      end

      # @see Privy::Models::KrakenEmbedGetAssetListQueryParamsSchema#sort
      module Sort
        extend Privy::Internal::Type::Enum

        TRENDING = :trending
        MARKET_CAP_RANK = :market_cap_rank
        MINUS_MARKET_CAP_RANK = :"-market_cap_rank"
        SYMBOL = :symbol
        MINUS_SYMBOL = :"-symbol"
        NAME = :name
        MINUS_NAME = :"-name"
        CHANGE_PERCENT_1H = :change_percent_1h
        MINUS_CHANGE_PERCENT_1_H = :"-change_percent_1h"
        CHANGE_PERCENT_24H = :change_percent_24h
        MINUS_CHANGE_PERCENT_24_H = :"-change_percent_24h"
        CHANGE_PERCENT_7D = :change_percent_7d
        MINUS_CHANGE_PERCENT_7_D = :"-change_percent_7d"
        CHANGE_PERCENT_30D = :change_percent_30d
        MINUS_CHANGE_PERCENT_30_D = :"-change_percent_30d"
        CHANGE_PERCENT_1Y = :change_percent_1y
        MINUS_CHANGE_PERCENT_1_Y = :"-change_percent_1y"
        LISTING_DATE = :listing_date
        MINUS_LISTING_DATE = :"-listing_date"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
