# frozen_string_literal: true

module Privy
  module Models
    class MfaSMSInitEnrollInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #
      #   @return [Symbol, Privy::Models::MfaSMSInitEnrollInput::Action]
      required :action, enum: -> { Privy::MfaSMSInitEnrollInput::Action }

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!method initialize(action:, phone_number:)
      #   Input for enrolling SMS MFA.
      #
      #   @param action [Symbol, Privy::Models::MfaSMSInitEnrollInput::Action]
      #   @param phone_number [String]

      # @see Privy::Models::MfaSMSInitEnrollInput#action
      module Action
        extend Privy::Internal::Type::Enum

        ENROLL = :enroll

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
