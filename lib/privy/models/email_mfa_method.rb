# frozen_string_literal: true

module Privy
  module Models
    class EmailMfaMethod < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EmailMfaMethod::Type]
      required :type, enum: -> { Privy::EmailMfaMethod::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(type:, verified_at:)
      #   An Email MFA method.
      #
      #   @param type [Symbol, Privy::Models::EmailMfaMethod::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::EmailMfaMethod#type
      module Type
        extend Privy::Internal::Type::Enum

        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
