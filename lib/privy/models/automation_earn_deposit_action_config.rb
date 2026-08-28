# frozen_string_literal: true

module Privy
  module Models
    class AutomationEarnDepositActionConfig < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationEarnDepositActionConfig::Type]
      required :type, enum: -> { Privy::AutomationEarnDepositActionConfig::Type }

      # @!attribute vault_id
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(type:, vault_id:)
      #   Action configuration for depositing into an Earn vault.
      #
      #   @param type [Symbol, Privy::Models::AutomationEarnDepositActionConfig::Type]
      #   @param vault_id [String]

      # @see Privy::Models::AutomationEarnDepositActionConfig#type
      module Type
        extend Privy::Internal::Type::Enum

        EARN_DEPOSIT = :earn_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
