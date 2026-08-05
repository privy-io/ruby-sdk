# frozen_string_literal: true

module Privy
  module Models
    class OnrampKYCResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of the KYC verification process.
      #
      #   @return [Symbol, Privy::Models::OnrampKYCStatus]
      required :status, enum: -> { Privy::OnrampKYCStatus }

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute provider_user_id
      #
      #   @return [String, nil]
      optional :provider_user_id, String

      # @!method initialize(status:, user_id:, provider_user_id: nil)
      #   Response for an onramp KYC verification.
      #
      #   @param status [Symbol, Privy::Models::OnrampKYCStatus] Status of the KYC verification process.
      #
      #   @param user_id [String]
      #
      #   @param provider_user_id [String]
    end
  end
end
