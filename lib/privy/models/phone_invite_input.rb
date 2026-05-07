# frozen_string_literal: true

module Privy
  module Models
    class PhoneInviteInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::PhoneInviteInput::Type]
      required :type, enum: -> { Privy::PhoneInviteInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Allowlist invite input for a phone number.
      #
      #   @param type [Symbol, Privy::Models::PhoneInviteInput::Type]
      #   @param value [String]

      # @see Privy::Models::PhoneInviteInput#type
      module Type
        extend Privy::Internal::Type::Enum

        PHONE = :phone

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
