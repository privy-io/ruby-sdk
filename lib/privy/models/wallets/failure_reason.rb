# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class FailureReason < Privy::Internal::Type::BaseModel
        # @!attribute message
        #   Human-readable failure message.
        #
        #   @return [String]
        required :message, String

        # @!attribute details
        #   Additional error details, if available.
        #
        #   @return [Object, nil]
        optional :details, Privy::Internal::Type::Unknown

        # @!method initialize(message:, details: nil)
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param message [String] Human-readable failure message.
        #
        #   @param details [Object] Additional error details, if available.
      end
    end
  end
end
