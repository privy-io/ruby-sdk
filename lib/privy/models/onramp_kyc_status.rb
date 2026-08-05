# frozen_string_literal: true

module Privy
  module Models
    # Status of the KYC verification process.
    module OnrampKYCStatus
      extend Privy::Internal::Type::Enum

      NOT_FOUND = :not_found
      ACTIVE = :active
      AWAITING_QUESTIONNAIRE = :awaiting_questionnaire
      AWAITING_UBO = :awaiting_ubo
      INCOMPLETE = :incomplete
      NOT_STARTED = :not_started
      OFFBOARDED = :offboarded
      PAUSED = :paused
      REJECTED = :rejected
      UNDER_REVIEW = :under_review

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
