# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnPositionApyAllocation < Privy::Internal::Type::BaseModel
        # @!attribute apy_bps
        #   Net APY in basis points, rounded to the nearest integer.
        #
        #   @return [Integer]
        required :apy_bps, Integer

        # @!attribute assets_in_vault
        #   Allocated assets in the smallest unit of the underlying asset.
        #
        #   @return [String]
        required :assets_in_vault, String

        # @!attribute type
        #   Whether an APY allocation earns the base or boosted rate.
        #
        #   @return [Symbol, Privy::Models::Wallets::EarnPositionApyType]
        required :type, enum: -> { Privy::Wallets::EarnPositionApyType }

        # @!method initialize(apy_bps:, assets_in_vault:, type:)
        #   An APY allocation within a vault position.
        #
        #   @param apy_bps [Integer] Net APY in basis points, rounded to the nearest integer.
        #
        #   @param assets_in_vault [String] Allocated assets in the smallest unit of the underlying asset.
        #
        #   @param type [Symbol, Privy::Models::Wallets::EarnPositionApyType] Whether an APY allocation earns the base or boosted rate.
      end
    end
  end
end
