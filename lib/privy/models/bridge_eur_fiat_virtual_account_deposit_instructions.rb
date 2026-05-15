# frozen_string_literal: true

module Privy
  module Models
    class BridgeEurFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute account_holder_name
      #
      #   @return [String]
      required :account_holder_name, String

      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions::Asset]
      required :asset, enum: -> { Privy::BridgeEurFiatVirtualAccountDepositInstructions::Asset }

      # @!attribute bank_address
      #
      #   @return [String]
      required :bank_address, String

      # @!attribute bank_name
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute bic
      #
      #   @return [String]
      required :bic, String

      # @!attribute iban
      #
      #   @return [String]
      required :iban, String

      # @!attribute payment_rails
      #
      #   @return [Array<Symbol, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail>]
      required :payment_rails,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail] }

      # @!method initialize(account_holder_name:, asset:, bank_address:, bank_name:, bic:, iban:, payment_rails:)
      #   The deposit instructions for a virtual account.
      #
      #   @param account_holder_name [String]
      #   @param asset [Symbol, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions::Asset]
      #   @param bank_address [String]
      #   @param bank_name [String]
      #   @param bic [String]
      #   @param iban [String]
      #   @param payment_rails [Array<Symbol, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions::PaymentRail>]

      # @see Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions#asset
      module Asset
        extend Privy::Internal::Type::Enum

        EUR = :eur

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PaymentRail
        extend Privy::Internal::Type::Enum

        SEPA = :sepa

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
