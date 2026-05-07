# frozen_string_literal: true

module Privy
  module Models
    class SMSMfaMethod < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::SMSMfaMethod::Type]
      required :type, enum: -> { Privy::SMSMfaMethod::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(type:, verified_at:)
      #   A SMS MFA method.
      #
      #   @param type [Symbol, Privy::Models::SMSMfaMethod::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::SMSMfaMethod#type
      module Type
        extend Privy::Internal::Type::Enum

        SMS = :sms

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
