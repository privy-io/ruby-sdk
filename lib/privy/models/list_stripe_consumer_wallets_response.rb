# frozen_string_literal: true

module Privy
  module Models
    class ListStripeConsumerWalletsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::StripeConsumerWallet>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::StripeConsumerWallet] }

      # @!method initialize(data:)
      #   List of registered wallets for a crypto customer.
      #
      #   @param data [Array<Privy::Models::StripeConsumerWallet>]
    end
  end
end
