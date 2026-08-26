# frozen_string_literal: true

module Privy
  module Models
    class FiatDepositAccountSource < Privy::Internal::Type::BaseModel
      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute payment_rails
      #
      #   @return [Array<String>]
      required :payment_rails, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(currency:, payment_rails:)
      #   The source fiat currency and available payment rails for a fiat deposit account.
      #
      #   @param currency [String]
      #   @param payment_rails [Array<String>]
    end
  end
end
