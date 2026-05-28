# frozen_string_literal: true

module Privy
  module Models
    class LinkAuthIntentNoAccount < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::LinkAuthIntentNoAccount::Status]
      required :status, enum: -> { Privy::LinkAuthIntentNoAccount::Status }

      # @!method initialize(status:)
      #   No Link account for this email. Call registerLinkUser() then retry.
      #
      #   @param status [Symbol, Privy::Models::LinkAuthIntentNoAccount::Status]

      # @see Privy::Models::LinkAuthIntentNoAccount#status
      module Status
        extend Privy::Internal::Type::Enum

        NO_ACCOUNT = :no_account

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
