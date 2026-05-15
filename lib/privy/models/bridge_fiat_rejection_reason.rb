# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatRejectionReason < Privy::Internal::Type::BaseModel
      # @!attribute reason
      #
      #   @return [String]
      required :reason, String

      # @!method initialize(reason:)
      #   A rejection reason for a customer KYC verification.
      #
      #   @param reason [String]
    end
  end
end
