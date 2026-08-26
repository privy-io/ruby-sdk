# frozen_string_literal: true

module Privy
  module Models
    class CreateAutomationRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute config
      #   Full configuration for a wallet automation (trigger + action) accepting
      #   human-readable aliases.
      #
      #   @return [Privy::Models::AutomationConfigInput]
      required :config, -> { Privy::AutomationConfigInput }

      # @!attribute owner_id
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(config:, owner_id:, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CreateAutomationRequestBody} for more details.
      #
      #   Request body for creating a wallet automation.
      #
      #   @param config [Privy::Models::AutomationConfigInput] Full configuration for a wallet automation (trigger + action) accepting human-re
      #
      #   @param owner_id [String, nil]
      #
      #   @param name [String]
    end
  end
end
