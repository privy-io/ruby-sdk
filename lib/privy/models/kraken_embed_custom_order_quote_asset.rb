# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderQuoteAsset < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #
      #   @return [String]
      required :asset, String

      # @!method initialize(asset:)
      #   Target asset for the other side of the custom order trade.
      #
      #   @param asset [String]
    end
  end
end
