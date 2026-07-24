# frozen_string_literal: true

module Privy
  module Models
    class MfaEmailInitEnrollInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #
      #   @return [Symbol, Privy::Models::MfaEmailInitEnrollInput::Action]
      required :action, enum: -> { Privy::MfaEmailInitEnrollInput::Action }

      # @!attribute email_address
      #
      #   @return [String]
      required :email_address, String

      # @!method initialize(action:, email_address:)
      #   Input for enrolling email MFA.
      #
      #   @param action [Symbol, Privy::Models::MfaEmailInitEnrollInput::Action]
      #   @param email_address [String]

      # @see Privy::Models::MfaEmailInitEnrollInput#action
      module Action
        extend Privy::Internal::Type::Enum

        ENROLL = :enroll

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
