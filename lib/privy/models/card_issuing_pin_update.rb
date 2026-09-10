# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingPinUpdate < Privy::Internal::Type::BaseModel
      # @!attribute encrypted_number
      #   The PIN, encrypted with the Stripe Issuing key.
      #
      #   @return [String]
      required :encrypted_number, String

      # @!method initialize(encrypted_number:)
      #   Encrypted PIN to set on the card.
      #
      #   @param encrypted_number [String] The PIN, encrypted with the Stripe Issuing key.
    end
  end
end
