# frozen_string_literal: true

module Privy
  module Models
    class DetachWalletAutomationRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute automation_ids
      #
      #   @return [Array<String>]
      required :automation_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(automation_ids:)
      #   Request body for detaching automations from a wallet (wallet ID comes from the
      #   URL).
      #
      #   @param automation_ids [Array<String>]
    end
  end
end
