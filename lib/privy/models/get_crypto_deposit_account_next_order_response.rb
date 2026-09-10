# frozen_string_literal: true

module Privy
  module Models
    class GetCryptoDepositAccountNextOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute order
      #   A crypto deposit-account sweep identified by its wallet action ID. Status is the
      #   wallet-action status.
      #
      #   @return [Privy::Models::GetCryptoDepositAccountOrderResponse, nil]
      required :order, -> { Privy::GetCryptoDepositAccountOrderResponse }, nil?: true

      # @!method initialize(order:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::GetCryptoDepositAccountNextOrderResponse} for more details.
      #
      #   The next crypto deposit-account sweep into the path wallet after `after`, or
      #   null if none. The order object matches GET order.
      #
      #   @param order [Privy::Models::GetCryptoDepositAccountOrderResponse, nil] A crypto deposit-account sweep identified by its wallet action ID. Status is the
    end
  end
end
