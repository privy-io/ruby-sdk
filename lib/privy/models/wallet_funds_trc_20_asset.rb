# frozen_string_literal: true

module Privy
  module Models
    class WalletFundsTrc20Asset < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletFundsTrc20Asset::Type]
      required :type, enum: -> { Privy::WalletFundsTrc20Asset::Type }

      # @!method initialize(address:, type:)
      #   A Tron TRC-20 token asset.
      #
      #   @param address [String]
      #   @param type [Symbol, Privy::Models::WalletFundsTrc20Asset::Type]

      # @see Privy::Models::WalletFundsTrc20Asset#type
      module Type
        extend Privy::Internal::Type::Enum

        TRC20 = :trc20

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
