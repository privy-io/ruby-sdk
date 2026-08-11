# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingDispute < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of a dispute for card activity.
      #
      #   @return [Symbol, Privy::Models::CardIssuingDisputeStatus]
      required :status, enum: -> { Privy::CardIssuingDisputeStatus }

      # @!method initialize(status:)
      #   Dispute associated with card activity.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingDisputeStatus] Status of a dispute for card activity.
    end
  end
end
