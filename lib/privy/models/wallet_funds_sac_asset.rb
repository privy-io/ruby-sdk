# frozen_string_literal: true

module Privy
  module Models
    class WalletFundsSacAsset < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletFundsSacAsset::Type]
      required :type, enum: -> { Privy::WalletFundsSacAsset::Type }

      # @!method initialize(address:, type:)
      #   A Stellar Asset Contract (SAC) asset.
      #
      #   @param address [String]
      #   @param type [Symbol, Privy::Models::WalletFundsSacAsset::Type]

      # @see Privy::Models::WalletFundsSacAsset#type
      module Type
        extend Privy::Internal::Type::Enum

        SAC = :sac

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
