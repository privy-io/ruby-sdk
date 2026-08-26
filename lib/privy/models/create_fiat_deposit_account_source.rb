# frozen_string_literal: true

module Privy
  module Models
    class CreateFiatDepositAccountSource < Privy::Internal::Type::BaseModel
      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!method initialize(currency:)
      #   The source fiat currency for a fiat deposit account.
      #
      #   @param currency [String]
    end
  end
end
