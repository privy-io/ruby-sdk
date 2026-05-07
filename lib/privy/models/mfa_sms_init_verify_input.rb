# frozen_string_literal: true

module Privy
  module Models
    class MfaSMSInitVerifyInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #
      #   @return [Symbol, Privy::Models::MfaSMSInitVerifyInput::Action]
      required :action, enum: -> { Privy::MfaSMSInitVerifyInput::Action }

      # @!method initialize(action:)
      #   Input for verifying SMS MFA.
      #
      #   @param action [Symbol, Privy::Models::MfaSMSInitVerifyInput::Action]

      # @see Privy::Models::MfaSMSInitVerifyInput#action
      module Action
        extend Privy::Internal::Type::Enum

        VERIFY = :verify

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
