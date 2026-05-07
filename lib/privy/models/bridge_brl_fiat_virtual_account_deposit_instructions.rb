# frozen_string_literal: true

module Privy
  module Models
    class BridgeBrlFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute account_holder_name
      #
      #   @return [String]
      required :account_holder_name, String

      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions::Asset]
      required :asset, enum: -> { Privy::BridgeBrlFiatVirtualAccountDepositInstructions::Asset }

      # @!attribute bank_address
      #
      #   @return [String]
      required :bank_address, String

      # @!attribute bank_name
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute br_code
      #
      #   @return [String]
      required :br_code, String

      # @!attribute payment_rails
      #
      #   @return [Array<Symbol, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail>]
      required :payment_rails,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail] }

      # @!method initialize(account_holder_name:, asset:, bank_address:, bank_name:, br_code:, payment_rails:)
      #   The deposit instructions for a virtual account.
      #
      #   @param account_holder_name [String]
      #   @param asset [Symbol, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions::Asset]
      #   @param bank_address [String]
      #   @param bank_name [String]
      #   @param br_code [String]
      #   @param payment_rails [Array<Symbol, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions::PaymentRail>]

      # @see Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions#asset
      module Asset
        extend Privy::Internal::Type::Enum

        BRL = :brl

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PaymentRail
        extend Privy::Internal::Type::Enum

        PIX = :pix

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
