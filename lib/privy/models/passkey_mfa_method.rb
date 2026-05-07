# frozen_string_literal: true

module Privy
  module Models
    class PasskeyMfaMethod < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::PasskeyMfaMethod::Type]
      required :type, enum: -> { Privy::PasskeyMfaMethod::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(type:, verified_at:)
      #   A Passkey MFA method.
      #
      #   @param type [Symbol, Privy::Models::PasskeyMfaMethod::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::PasskeyMfaMethod#type
      module Type
        extend Privy::Internal::Type::Enum

        PASSKEY = :passkey

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
