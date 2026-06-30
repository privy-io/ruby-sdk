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

      # @!attribute verification_errors
      #
      #   @return [Array<String>, nil]
      optional :verification_errors, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(tier:, verification_status:, verification_errors: nil)
      #   A KYC tier with its verification status.
      #
      #   @param tier [String]
      #   @param verification_status [String]
      #   @param verification_errors [Array<String>]
    end
  end
end
