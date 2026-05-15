# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrder < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute action
      #   Trade action for a custom order.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderAction]
      required :action, -> { Privy::KrakenEmbedCustomOrderAction }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   Custom order status with optional reason for cancelled or paused states.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderStatus]
      required :status, -> { Privy::KrakenEmbedCustomOrderStatus }

      # @!attribute trigger
      #   Price trigger for a custom order. The order executes when base_asset/quote_asset
      #   rate meets the condition against target_price.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderTrigger]
      required :trigger, -> { Privy::KrakenEmbedCustomOrderTrigger }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, action:, created_at:, name:, status:, trigger:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedCustomOrder} for more details.
      #
      #   Full custom order object.
      #
      #   @param id [String]
      #
      #   @param action [Privy::Models::KrakenEmbedCustomOrderAction] Trade action for a custom order.
      #
      #   @param created_at [Time]
      #
      #   @param name [String]
      #
      #   @param status [Privy::Models::KrakenEmbedCustomOrderStatus] Custom order status with optional reason for cancelled or paused states.
      #
      #   @param trigger [Privy::Models::KrakenEmbedCustomOrderTrigger] Price trigger for a custom order. The order executes when base_asset/quote_asset
      #
      #   @param updated_at [Time]
    end
  end
end
