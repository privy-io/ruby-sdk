# frozen_string_literal: true

module Privy
  module Models
    class EmailDomainInviteInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EmailDomainInviteInput::Type]
      required :type, enum: -> { Privy::EmailDomainInviteInput::Type }

      # @!attribute value
      #   An email domain.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Allowlist invite input for an email domain.
      #
      #   @param type [Symbol, Privy::Models::EmailDomainInviteInput::Type]
      #
      #   @param value [String] An email domain.

      # @see Privy::Models::EmailDomainInviteInput#type
      module Type
        extend Privy::Internal::Type::Enum

        EMAIL_DOMAIN = :emailDomain

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
