# frozen_string_literal: true

module Privy
  module Models
    class EmailInviteInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EmailInviteInput::Type]
      required :type, enum: -> { Privy::EmailInviteInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Allowlist invite input for an email address.
      #
      #   @param type [Symbol, Privy::Models::EmailInviteInput::Type]
      #   @param value [String]

      # @see Privy::Models::EmailInviteInput#type
      module Type
        extend Privy::Internal::Type::Enum

        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
