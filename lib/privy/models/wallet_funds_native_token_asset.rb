# frozen_string_literal: true

module Privy
  module Models
    class WalletFundsNativeTokenAsset < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [nil]
      required :address, NilClass

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletFundsNativeTokenAsset::Type]
      required :type, enum: -> { Privy::WalletFundsNativeTokenAsset::Type }

      # @!method initialize(address:, type:)
      #   A native token asset (e.g. ETH, SOL).
      #
      #   @param address [nil]
      #   @param type [Symbol, Privy::Models::WalletFundsNativeTokenAsset::Type]

      # @see Privy::Models::WalletFundsNativeTokenAsset#type
      module Type
        extend Privy::Internal::Type::Enum

        NATIVE_TOKEN = :"native-token"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
