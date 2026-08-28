# frozen_string_literal: true

module Privy
  module Models
    class AutomationEarnDepositActionConfigInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationEarnDepositActionConfigInput::Type]
      required :type, enum: -> { Privy::AutomationEarnDepositActionConfigInput::Type }

      # @!attribute vault_id
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(type:, vault_id:)
      #   Action configuration for depositing into an Earn vault (input form).
      #
      #   @param type [Symbol, Privy::Models::AutomationEarnDepositActionConfigInput::Type]
      #   @param vault_id [String]

      # @see Privy::Models::AutomationEarnDepositActionConfigInput#type
      module Type
        extend Privy::Internal::Type::Enum

        EARN_DEPOSIT = :earn_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
