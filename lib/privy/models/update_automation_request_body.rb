# frozen_string_literal: true

module Privy
  module Models
    class UpdateAutomationRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute config
      #   Full configuration for a wallet automation (trigger + action) accepting
      #   human-readable aliases.
      #
      #   @return [Privy::Models::AutomationConfigInput, nil]
      optional :config, -> { Privy::AutomationConfigInput }

      # @!attribute enabled
      #
      #   @return [Boolean, nil]
      optional :enabled, Privy::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(config: nil, enabled: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UpdateAutomationRequestBody} for more details.
      #
      #   Request body for updating a wallet automation.
      #
      #   @param config [Privy::Models::AutomationConfigInput] Full configuration for a wallet automation (trigger + action) accepting human-re
      #
      #   @param enabled [Boolean]
      #
      #   @param name [String, nil]
    end
  end
end
