# frozen_string_literal: true

module Privy
  module Models
    class DenylistEmailDomainInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::DenylistEmailDomainInput::Type]
      required :type, enum: -> { Privy::DenylistEmailDomainInput::Type }

      # @!attribute value
      #   An email domain.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Denylist input for an email domain, which blocks every email address on the
      #   domain.
      #
      #   @param type [Symbol, Privy::Models::DenylistEmailDomainInput::Type]
      #
      #   @param value [String] An email domain.

      # @see Privy::Models::DenylistEmailDomainInput#type
      module Type
        extend Privy::Internal::Type::Enum

        EMAIL_DOMAIN = :emailDomain

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
