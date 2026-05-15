# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderAmount < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #
      #   @return [String]
      required :asset, String

      # @!attribute asset_class
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderAmount::AssetClass, nil]
      optional :asset_class, enum: -> { Privy::KrakenEmbedCustomOrderAmount::AssetClass }

      # @!method initialize(amount:, asset:, asset_class: nil)
      #   Asset amount for custom order actions.
      #
      #   @param amount [String]
      #   @param asset [String]
      #   @param asset_class [Symbol, Privy::Models::KrakenEmbedCustomOrderAmount::AssetClass]

      # @see Privy::Models::KrakenEmbedCustomOrderAmount#asset_class
      module AssetClass
        extend Privy::Internal::Type::Enum

        CURRENCY = :currency

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
