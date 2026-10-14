# frozen_string_literal: true

module Privy
  module Models
    class DenylistEmailInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::DenylistEmailInput::Type]
      required :type, enum: -> { Privy::DenylistEmailInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Denylist input for an email address, which also blocks its `+` and `.` variants.
      #
      #   @param type [Symbol, Privy::Models::DenylistEmailInput::Type]
      #   @param value [String]

      # @see Privy::Models::DenylistEmailInput#type
      module Type
        extend Privy::Internal::Type::Enum

        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
