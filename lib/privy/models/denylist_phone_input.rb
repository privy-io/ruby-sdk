# frozen_string_literal: true

module Privy
  module Models
    class DenylistPhoneInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::DenylistPhoneInput::Type]
      required :type, enum: -> { Privy::DenylistPhoneInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Denylist input for a phone number.
      #
      #   @param type [Symbol, Privy::Models::DenylistPhoneInput::Type]
      #   @param value [String]

      # @see Privy::Models::DenylistPhoneInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PHONE = :phone

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
