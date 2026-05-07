# frozen_string_literal: true

module Privy
  module Models
    class WalletFundsErc20Asset < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletFundsErc20Asset::Type]
      required :type, enum: -> { Privy::WalletFundsErc20Asset::Type }

      # @!method initialize(address:, type:)
      #   An ERC-20 token asset.
      #
      #   @param address [String]
      #   @param type [Symbol, Privy::Models::WalletFundsErc20Asset::Type]

      # @see Privy::Models::WalletFundsErc20Asset#type
      module Type
        extend Privy::Internal::Type::Enum

        ERC20 = :erc20

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
