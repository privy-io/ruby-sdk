# frozen_string_literal: true

module Privy
  module Models
    class PayoutDestination < Privy::Internal::Type::BaseModel
      # @!attribute fiat_account_id
      #   The ID of a previously registered external fiat account to pay out to.
      #
      #   @return [String]
      required :fiat_account_id, String

      # @!method initialize(fiat_account_id:)
      #   The destination bank account for a payout.
      #
      #   @param fiat_account_id [String] The ID of a previously registered external fiat account to pay out to.
    end
  end
end
