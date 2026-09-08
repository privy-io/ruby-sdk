# frozen_string_literal: true

module Privy
  module Models
    class WalletFundsBtknAsset < Privy::Internal::Type::BaseModel
      # @!attribute identifier
      #
      #   @return [String]
      required :identifier, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletFundsBtknAsset::Type]
      required :type, enum: -> { Privy::WalletFundsBtknAsset::Type }

      # @!method initialize(identifier:, type:)
      #   A token issued on Spark, identified by its BTKN identifier.
      #
      #   @param identifier [String]
      #   @param type [Symbol, Privy::Models::WalletFundsBtknAsset::Type]

      # @see Privy::Models::WalletFundsBtknAsset#type
      module Type
        extend Privy::Internal::Type::Enum

        BTKN = :btkn

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
