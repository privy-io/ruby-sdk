# frozen_string_literal: true

module Privy
  module Models
    class AttachWalletAutomationRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute automation_ids
      #
      #   @return [Array<String>]
      required :automation_ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute params
      #   Per-attachment parameters for swap automations.
      #
      #   @return [Privy::Models::SwapAttachmentParams, nil]
      optional :params, -> { Privy::SwapAttachmentParams }

      # @!method initialize(automation_ids:, params: nil)
      #   Request body for attaching automations to a wallet (wallet ID comes from the
      #   URL).
      #
      #   @param automation_ids [Array<String>]
      #
      #   @param params [Privy::Models::SwapAttachmentParams] Per-attachment parameters for swap automations.
    end
  end
end
