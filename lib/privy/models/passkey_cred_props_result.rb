# frozen_string_literal: true

module Privy
  module Models
    class PasskeyCredPropsResult < Privy::Internal::Type::BaseModel
      # @!attribute rk
      #
      #   @return [Boolean, nil]
      optional :rk, Privy::Internal::Type::Boolean

      # @!method initialize(rk: nil)
      #   The result of the WebAuthn credProps extension.
      #
      #   @param rk [Boolean]
    end
  end
end
