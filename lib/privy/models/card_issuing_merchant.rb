# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingMerchant < Privy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!method initialize(name:)
      #   Merchant metadata for a card issuing transaction.
      #
      #   @param name [String, nil]
    end
  end
end
