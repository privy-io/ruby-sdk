# frozen_string_literal: true

module Privy
  module Models
    class BridgeUsdFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions::Asset]
      required :asset, enum: -> { Privy::BridgeUsdFiatVirtualAccountDepositInstructions::Asset }

      # @!attribute bank_account_number
      #
      #   @return [String]
      required :bank_account_number, String

      # @!attribute bank_address
      #
      #   @return [String]
      required :bank_address, String

      # @!attribute bank_beneficiary_address
      #
      #   @return [String]
      required :bank_beneficiary_address, String

      # @!attribute bank_beneficiary_name
      #
      #   @return [String]
      required :bank_beneficiary_name, String

      # @!attribute bank_name
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute bank_routing_number
      #
      #   @return [String]
      required :bank_routing_number, String

      # @!attribute payment_rails
      #
      #   @return [Array<Symbol, Privy::Models::BridgeUsdFiatVirtualAccountDepositPaymentRail>]
      required :payment_rails,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail] }

      # @!method initialize(asset:, bank_account_number:, bank_address:, bank_beneficiary_address:, bank_beneficiary_name:, bank_name:, bank_routing_number:, payment_rails:)
      #   The deposit instructions for a virtual account.
      #
      #   @param asset [Symbol, Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions::Asset]
      #   @param bank_account_number [String]
      #   @param bank_address [String]
      #   @param bank_beneficiary_address [String]
      #   @param bank_beneficiary_name [String]
      #   @param bank_name [String]
      #   @param bank_routing_number [String]
      #   @param payment_rails [Array<Symbol, Privy::Models::BridgeUsdFiatVirtualAccountDepositPaymentRail>]

      # @see Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions#asset
      module Asset
        extend Privy::Internal::Type::Enum

        USD = :usd

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
