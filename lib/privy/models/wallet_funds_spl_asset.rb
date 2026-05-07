# frozen_string_literal: true

module Privy
  module Models
    class WalletFundsSplAsset < Privy::Internal::Type::BaseModel
      # @!attribute mint
      #
      #   @return [String]
      required :mint, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletFundsSplAsset::Type]
      required :type, enum: -> { Privy::WalletFundsSplAsset::Type }

      # @!method initialize(mint:, type:)
      #   A Solana SPL token asset.
      #
      #   @param mint [String]
      #   @param type [Symbol, Privy::Models::WalletFundsSplAsset::Type]

      # @see Privy::Models::WalletFundsSplAsset#type
      module Type
        extend Privy::Internal::Type::Enum

        SPL = :spl

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
