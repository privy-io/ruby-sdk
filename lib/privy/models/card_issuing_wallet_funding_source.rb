# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingWalletFundingSource < Privy::Internal::Type::BaseModel
      # @!attribute selected
      #   Whether this is the source the card spends right now.
      #
      #   @return [Boolean]
      required :selected, Privy::Internal::Type::Boolean

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::CardIssuingWalletFundingSource::Type]
      required :type, enum: -> { Privy::CardIssuingWalletFundingSource::Type }

      # @!method initialize(selected:, type:)
      #   The funding wallet's `asset` balance.
      #
      #   @param selected [Boolean] Whether this is the source the card spends right now.
      #
      #   @param type [Symbol, Privy::Models::CardIssuingWalletFundingSource::Type]

      # @see Privy::Models::CardIssuingWalletFundingSource#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
