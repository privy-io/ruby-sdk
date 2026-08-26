# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAssetFilterInclude < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #
      #   @return [Symbol, Privy::Models::CryptoDepositAssetFilterInclude::Mode]
      required :mode, enum: -> { Privy::CryptoDepositAssetFilterInclude::Mode }

      # @!attribute values
      #
      #   @return [Array<Privy::Models::CryptoDepositAsset>]
      required :values, -> { Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAsset] }

      # @!method initialize(mode:, values:)
      #   Match only the specified assets, using human-readable aliases when known.
      #
      #   @param mode [Symbol, Privy::Models::CryptoDepositAssetFilterInclude::Mode]
      #   @param values [Array<Privy::Models::CryptoDepositAsset>]

      # @see Privy::Models::CryptoDepositAssetFilterInclude#mode
      module Mode
        extend Privy::Internal::Type::Enum

        INCLUDE = :include

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
