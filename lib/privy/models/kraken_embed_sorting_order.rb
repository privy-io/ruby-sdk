# frozen_string_literal: true

module Privy
  module Models
    # Sort direction for paginated transaction lists.
    module KrakenEmbedSortingOrder
      extend Privy::Internal::Type::Enum

      DESCENDING = :descending
      ASCENDING = :ascending

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
