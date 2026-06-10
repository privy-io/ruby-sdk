# frozen_string_literal: true

module Privy
  module Models
    class StripeKYCTier < Privy::Internal::Type::BaseModel
      # @!attribute tier
      #
      #   @return [String]
      required :tier, String

      # @!attribute verification_status
      #
      #   @return [String]
      required :verification_status, String

      # @!method initialize(tier:, verification_status:)
      #   A KYC tier with its verification status.
      #
      #   @param tier [String]
      #   @param verification_status [String]
    end
  end
end
