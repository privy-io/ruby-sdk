# frozen_string_literal: true

module Privy
  module Models
    class KyxVerificationStatusDetail < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of KYC/KYB verification. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!attribute link
      #   Verification link, if applicable.
      #
      #   @return [String, nil]
      optional :link, String

      # @!attribute rejection_reasons
      #   Reasons for rejection, if status is closed or action_required.
      #
      #   @return [Array<String>, nil]
      optional :rejection_reasons, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(status:, link: nil, rejection_reasons: nil)
      #   Verification status detail for a KYC or KYB check.
      #
      #   @param status [String] Status of KYC/KYB verification. Passthrough from the provider.
      #
      #   @param link [String] Verification link, if applicable.
      #
      #   @param rejection_reasons [Array<String>] Reasons for rejection, if status is closed or action_required.
    end
  end
end
