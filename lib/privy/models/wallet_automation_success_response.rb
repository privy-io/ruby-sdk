# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationSuccessResponse < Privy::Internal::Type::BaseModel
      # @!attribute success
      #
      #   @return [Boolean, Privy::Models::WalletAutomationSuccessResponse::Success]
      required :success, enum: -> { Privy::WalletAutomationSuccessResponse::Success }

      # @!method initialize(success:)
      #   Confirmation of a successful automation operation.
      #
      #   @param success [Boolean, Privy::Models::WalletAutomationSuccessResponse::Success]

      # @see Privy::Models::WalletAutomationSuccessResponse#success
      module Success
        extend Privy::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
