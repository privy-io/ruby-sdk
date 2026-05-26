# frozen_string_literal: true

module Privy
  module Models
    class StripeConsumerWallet < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute network
      #
      #   @return [String]
      required :network, String

      # @!attribute wallet_address
      #
      #   @return [String]
      required :wallet_address, String

      # @!method initialize(id:, network:, wallet_address:)
      #   A registered consumer wallet.
      #
      #   @param id [String]
      #   @param network [String]
      #   @param wallet_address [String]
    end
  end
end
