# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderTrigger < Privy::Internal::Type::BaseModel
      # @!attribute base_asset
      #
      #   @return [String]
      required :base_asset, String

      # @!attribute condition
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderTrigger::Condition]
      required :condition, enum: -> { Privy::KrakenEmbedCustomOrderTrigger::Condition }

      # @!attribute quote_asset
      #
      #   @return [String]
      required :quote_asset, String

      # @!attribute target_price
      #
      #   @return [String]
      required :target_price, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderTrigger::Type]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderTrigger::Type }

      # @!method initialize(base_asset:, condition:, quote_asset:, target_price:, type:)
      #   Price trigger for a custom order. The order executes when base_asset/quote_asset
      #   rate meets the condition against target_price.
      #
      #   @param base_asset [String]
      #   @param condition [Symbol, Privy::Models::KrakenEmbedCustomOrderTrigger::Condition]
      #   @param quote_asset [String]
      #   @param target_price [String]
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderTrigger::Type]

      # @see Privy::Models::KrakenEmbedCustomOrderTrigger#condition
      module Condition
        extend Privy::Internal::Type::Enum

        GTE = :gte
        LTE = :lte

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::KrakenEmbedCustomOrderTrigger#type
      module Type
        extend Privy::Internal::Type::Enum

        PRICE = :price

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
