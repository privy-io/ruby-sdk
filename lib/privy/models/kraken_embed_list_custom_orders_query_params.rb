# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedListCustomOrdersQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute statuses
      #
      #   @return [Array<Symbol, Privy::Models::KrakenEmbedListCustomOrdersQueryParams::Statuses::UnionMember0>, String, nil]
      optional :statuses, union: -> { Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses }

      # @!method initialize(user_id:, cursor: nil, statuses: nil)
      #   Query parameters for listing custom orders.
      #
      #   @param user_id [String]
      #   @param cursor [String]
      #   @param statuses [Array<Symbol, Privy::Models::KrakenEmbedListCustomOrdersQueryParams::Statuses::UnionMember0>, String]

      # @see Privy::Models::KrakenEmbedListCustomOrdersQueryParams#statuses
      module Statuses
        extend Privy::Internal::Type::Union

        variant -> { Privy::Models::KrakenEmbedListCustomOrdersQueryParams::Statuses::UnionMember0Array }

        variant String

        module UnionMember0
          extend Privy::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused
          CANCELLED = :cancelled
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @!method self.variants
        #   @return [Array(Array<Symbol, Privy::Models::KrakenEmbedListCustomOrdersQueryParams::Statuses::UnionMember0>, String)]

        # @type [Privy::Internal::Type::Converter]
        UnionMember0Array =
          Privy::Internal::Type::ArrayOf[enum: -> {
            Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses::UnionMember0
          }]
      end
    end
  end
end
