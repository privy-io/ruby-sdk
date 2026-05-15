# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatVirtualAccountSource < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeSourceAsset]
      required :asset, enum: -> { Privy::BridgeSourceAsset }

      # @!method initialize(asset:)
      #   @param asset [Symbol, Privy::Models::BridgeSourceAsset]
    end
  end
end
