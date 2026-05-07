# frozen_string_literal: true

module Privy
  module Models
    class BridgeMxnFiatVirtualAccountDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute account_holder_name
      #
      #   @return [String]
      required :account_holder_name, String

      # @!attribute asset
      #
      #   @return [Symbol, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions::Asset]
      required :asset, enum: -> { Privy::BridgeMxnFiatVirtualAccountDepositInstructions::Asset }

      # @!attribute bank_address
      #
      #   @return [String]
      required :bank_address, String

      # @!attribute bank_name
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute clabe
      #
      #   @return [String]
      required :clabe, String

      # @!attribute payment_rails
      #
      #   @return [Array<Symbol, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail>]
      required :payment_rails,
               -> { Privy::Internal::Type::ArrayOf[enum: Privy::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail] }

      # @!method initialize(account_holder_name:, asset:, bank_address:, bank_name:, clabe:, payment_rails:)
      #   The deposit instructions for a virtual account.
      #
      #   @param account_holder_name [String]
      #   @param asset [Symbol, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions::Asset]
      #   @param bank_address [String]
      #   @param bank_name [String]
      #   @param clabe [String]
      #   @param payment_rails [Array<Symbol, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions::PaymentRail>]

      # @see Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions#asset
      module Asset
        extend Privy::Internal::Type::Enum

        MXN = :mxn

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PaymentRail
        extend Privy::Internal::Type::Enum

        SPEI = :spei

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
