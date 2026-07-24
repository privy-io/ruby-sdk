# frozen_string_literal: true

module Privy
  module Models
    class MfaEmailInitVerifyInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #
      #   @return [Symbol, Privy::Models::MfaEmailInitVerifyInput::Action]
      required :action, enum: -> { Privy::MfaEmailInitVerifyInput::Action }

      # @!method initialize(action:)
      #   Input for verifying email MFA.
      #
      #   @param action [Symbol, Privy::Models::MfaEmailInitVerifyInput::Action]

      # @see Privy::Models::MfaEmailInitVerifyInput#action
      module Action
        extend Privy::Internal::Type::Enum

        VERIFY = :verify

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
