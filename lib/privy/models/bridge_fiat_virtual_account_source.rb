# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatVirtualAccountSource < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Supported source fiat currencies for virtual account deposits.
      #
      #   @return [Symbol, Privy::Models::BridgeSourceAsset]
      required :asset, enum: -> { Privy::BridgeSourceAsset }

      # @!method initialize(asset:)
      #   The source fiat currency configuration for a virtual account.
      #
      #   @param asset [Symbol, Privy::Models::BridgeSourceAsset] Supported source fiat currencies for virtual account deposits.
    end
  end
end
