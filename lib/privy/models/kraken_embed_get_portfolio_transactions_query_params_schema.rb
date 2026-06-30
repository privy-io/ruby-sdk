# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioTransactionsQueryParamsSchema < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #
      #   @return [Array<String>, nil]
      optional :assets, Privy::Internal::Type::ArrayOf[String]

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute from_time
      #
      #   @return [Time, nil]
      optional :from_time, Time

      # @!attribute ids
      #
      #   @return [Array<String>, nil]
      optional :ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute quote
      #
      #   @return [String, nil]
      optional :quote, String

      # @!attribute ref_ids
      #
      #   @return [Array<Privy::Models::KrakenEmbedPortfolioTransactionRefID>, nil]
      optional :ref_ids, -> { Privy::Internal::Type::ArrayOf[Privy::KrakenEmbedPortfolioTransactionRefID] }

      # @!attribute sorting
      #   Sort direction for paginated transaction lists.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedSortingOrder, nil]
      optional :sorting, enum: -> { Privy::KrakenEmbedSortingOrder }

      # @!attribute statuses
      #
      #   @return [Array<Symbol, Privy::Models::KrakenEmbedTransactionStatus>, nil]
      optional :statuses, -> { Privy::Internal::Type::ArrayOf[enum: Privy::KrakenEmbedTransactionStatus] }

      # @!attribute types
      #
      #   @return [Array<Symbol, Privy::Models::KrakenEmbedTransactionType>, nil]
      optional :types, -> { Privy::Internal::Type::ArrayOf[enum: Privy::KrakenEmbedTransactionType] }

      # @!attribute until_time
      #
      #   @return [Time, nil]
      optional :until_time, Time

      # @!method initialize(assets: nil, cursor: nil, from_time: nil, ids: nil, page_size: nil, quote: nil, ref_ids: nil, sorting: nil, statuses: nil, types: nil, until_time: nil)
      #   Query parameters for filtering and paginating portfolio transactions.
      #
      #   @param assets [Array<String>]
      #
      #   @param cursor [String]
      #
      #   @param from_time [Time]
      #
      #   @param ids [Array<String>]
      #
      #   @param page_size [Integer]
      #
      #   @param quote [String]
      #
      #   @param ref_ids [Array<Privy::Models::KrakenEmbedPortfolioTransactionRefID>]
      #
      #   @param sorting [Symbol, Privy::Models::KrakenEmbedSortingOrder] Sort direction for paginated transaction lists.
      #
      #   @param statuses [Array<Symbol, Privy::Models::KrakenEmbedTransactionStatus>]
      #
      #   @param types [Array<Symbol, Privy::Models::KrakenEmbedTransactionType>]
      #
      #   @param until_time [Time]
    end
  end
end
