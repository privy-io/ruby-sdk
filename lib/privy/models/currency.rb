# frozen_string_literal: true

module Privy
  module Models
    class Currency < Privy::Internal::Type::BaseModel
      # @!attribute chain
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :chain, String

      # @!attribute asset
      #   A currency asset type.
      #
      #   @return [Symbol, Privy::Models::CurrencyAsset, nil]
      optional :asset, enum: -> { Privy::CurrencyAsset }

      # @!method initialize(chain:, asset: nil)
      #   A crypto currency identified by a CAIP-2 chain ID and optional asset.
      #
      #   @param chain [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param asset [Symbol, Privy::Models::CurrencyAsset] A currency asset type.
    end
  end
end
