# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAssetFilterExclude < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::CryptoDepositAssetFilterExclude::Mode]
      required :mode, enum: -> { Privy::CryptoDepositAssetFilterExclude::Mode }

      # @!attribute values
      #
      #   @return [Array<Privy::Models::CryptoDepositAsset>]
      required :values, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAsset] }

      # @!method initialize(mode:, values:)
      #   Match all assets except the specified ones, using human-readable aliases when
      #   known.
      #
      #   @param mode [Symbol, Privy::Models::CryptoDepositAssetFilterExclude::Mode]
      #   @param values [Array<Privy::Models::CryptoDepositAsset>]

      # @see Privy::Models::CryptoDepositAssetFilterExclude#mode
      module Mode
        extend Privy::Internal::Type::Enum

        EXCLUDE = :exclude

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
