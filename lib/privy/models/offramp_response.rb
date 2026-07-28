# frozen_string_literal: true

module Privy
  module Models
    class OfframpResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute deposit_instructions
      #   Deposit instructions for an offramp transfer.
      #
      #   @return [Privy::Models::OfframpDepositInstructions]
      required :deposit_instructions, -> { Privy::OfframpDepositInstructions }

      # @!attribute status
      #   Status of an onramp or offramp transfer.
      #
      #   @return [Symbol, Privy::Models::OnrampTransferStatus]
      required :status, enum: -> { Privy::OnrampTransferStatus }

      # @!method initialize(id:, deposit_instructions:, status:)
      #   Response for an offramp transfer initiation.
      #
      #   @param id [String]
      #
      #   @param deposit_instructions [Privy::Models::OfframpDepositInstructions] Deposit instructions for an offramp transfer.
      #
      #   @param status [Symbol, Privy::Models::OnrampTransferStatus] Status of an onramp or offramp transfer.
    end
  end
end
