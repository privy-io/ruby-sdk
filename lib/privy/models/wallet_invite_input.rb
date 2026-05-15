# frozen_string_literal: true

module Privy
  module Models
    class WalletInviteInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletInviteInput::Type]
      required :type, enum: -> { Privy::WalletInviteInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Allowlist invite input for a wallet address.
      #
      #   @param type [Symbol, Privy::Models::WalletInviteInput::Type]
      #   @param value [String]

      # @see Privy::Models::WalletInviteInput#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
