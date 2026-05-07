# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountPhoneInput < Privy::Internal::Type::BaseModel
      # @!attribute number
      #
      #   @return [String]
      required :number, String

      # @!attribute type
      #
      #   @return [Symbol, :phone]
      required :type, const: :phone

      # @!method initialize(number:, type: :phone)
      #   The payload for importing a phone account.
      #
      #   @param number [String]
      #   @param type [Symbol, :phone]
    end
  end
end
