# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCreateCustomOrderInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   Trade action for a custom order.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderAction]
      required :action, -> { Privy::KrakenEmbedCustomOrderAction }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute trigger
      #   Price trigger for a custom order. The order executes when base_asset/quote_asset
      #   rate meets the condition against target_price.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderTrigger]
      required :trigger, -> { Privy::KrakenEmbedCustomOrderTrigger }

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(action:, name:, trigger:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedCreateCustomOrderInput} for more details.
      #
      #   Request body for creating a custom order.
      #
      #   @param action [Privy::Models::KrakenEmbedCustomOrderAction] Trade action for a custom order.
      #
      #   @param name [String]
      #
      #   @param trigger [Privy::Models::KrakenEmbedCustomOrderTrigger] Price trigger for a custom order. The order executes when base_asset/quote_asset
      #
      #   @param user_id [String]
    end
  end
end
