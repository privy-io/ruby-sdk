# frozen_string_literal: true

module Privy
  module Models
    class OnrampResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute deposit_instructions
      #   Bank deposit instructions for an onramp transfer.
      #
      #   @return [Privy::Models::OnrampDepositInstructions]
      required :deposit_instructions, -> { Privy::OnrampDepositInstructions }

      # @!attribute status
      #   Status of an onramp or offramp transfer.
      #
      #   @return [Symbol, Privy::Models::OnrampTransferStatus]
      required :status, enum: -> { Privy::OnrampTransferStatus }

      # @!method initialize(id:, deposit_instructions:, status:)
      #   Response for an onramp transfer initiation.
      #
      #   @param id [String]
      #
      #   @param deposit_instructions [Privy::Models::OnrampDepositInstructions] Bank deposit instructions for an onramp transfer.
      #
      #   @param status [Symbol, Privy::Models::OnrampTransferStatus] Status of an onramp or offramp transfer.
    end
  end
end
