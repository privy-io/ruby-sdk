# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountEmailInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute type
      #
      #   @return [Symbol, :email]
      required :type, const: :email

      # @!method initialize(address:, type: :email)
      #   The payload for importing an email account.
      #
      #   @param address [String]
      #   @param type [Symbol, :email]
    end
  end
end
