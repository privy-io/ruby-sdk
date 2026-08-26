# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAssetFilterAll < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::CryptoDepositAssetFilterAll::Mode]
      required :mode, enum: -> { Privy::CryptoDepositAssetFilterAll::Mode }

      # @!method initialize(mode:)
      #   Match all assets.
      #
      #   @param mode [Symbol, Privy::Models::CryptoDepositAssetFilterAll::Mode]

      # @see Privy::Models::CryptoDepositAssetFilterAll#mode
      module Mode
        extend Privy::Internal::Type::Enum

        ALL = :all

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
