# frozen_string_literal: true

module Privy
  module Models
    class TotpMfaMethod < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TotpMfaMethod::Type]
      required :type, enum: -> { Privy::TotpMfaMethod::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(type:, verified_at:)
      #   A TOTP MFA method.
      #
      #   @param type [Symbol, Privy::Models::TotpMfaMethod::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::TotpMfaMethod#type
      module Type
        extend Privy::Internal::Type::Enum

        TOTP = :totp

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
