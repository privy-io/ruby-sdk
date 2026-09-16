# frozen_string_literal: true

module Privy
  module Models
    class AttachedWalletAutomation < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   ID of the automation.
      #
      #   @return [String]
      required :id, String

      # @!attribute enabled
      #   Whether this attachment is currently active — true only if both the attachment
      #   and the underlying automation are enabled.
      #
      #   @return [Boolean]
      required :enabled, Privy::Internal::Type::Boolean

      # @!method initialize(id:, enabled:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AttachedWalletAutomation} for more details.
      #
      #   A summary of an automation attached to a wallet.
      #
      #   @param id [String] ID of the automation.
      #
      #   @param enabled [Boolean] Whether this attachment is currently active — true only if both the attachment a
    end
  end
end
