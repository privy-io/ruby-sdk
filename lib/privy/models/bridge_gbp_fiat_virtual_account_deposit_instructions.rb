# frozen_string_literal: true

module Privy
  module Models
    class BridgeGbpFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute account_holder_name
      #
      #   @return [String]
      required :account_holder_name, String

      # @!attribute account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions::Asset]
      required :asset, enum: -> { Privy::BridgeGbpFiatVirtualAccountDepositInstructions::Asset }

      # @!attribute bank_address
      #
      #   @return [String]
      required :bank_address, String

      # @!attribute bank_name
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute payment_rails
      #
      #   @return [Array<Symbol, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail>]
      required :payment_rails,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail] }

      # @!attribute sort_code
      #
      #   @return [String]
      required :sort_code, String

      # @!method initialize(account_holder_name:, account_number:, asset:, bank_address:, bank_name:, payment_rails:, sort_code:)
      #   The deposit instructions for a virtual account.
      #
      #   @param account_holder_name [String]
      #   @param account_number [String]
      #   @param asset [Symbol, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions::Asset]
      #   @param bank_address [String]
      #   @param bank_name [String]
      #   @param payment_rails [Array<Symbol, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions::PaymentRail>]
      #   @param sort_code [String]

      # @see Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions#asset
      module Asset
        extend Privy::Internal::Type::Enum

        GBP = :gbp

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PaymentRail
        extend Privy::Internal::Type::Enum

        FASTER_PAYMENTS = :faster_payments

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
