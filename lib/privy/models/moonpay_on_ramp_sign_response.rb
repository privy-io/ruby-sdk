# frozen_string_literal: true

module Privy
  module Models
    class MoonpayOnRampSignResponse < Privy::Internal::Type::BaseModel
      # @!attribute external_transaction_id
      #
      #   @return [String]
      required :external_transaction_id, String, api_name: :externalTransactionId

      # @!attribute signed_url
      #
      #   @return [String]
      required :signed_url, String, api_name: :signedUrl

      # @!method initialize(external_transaction_id:, signed_url:)
      #   The response from signing a Moonpay on-ramp.
      #
      #   @param external_transaction_id [String]
      #   @param signed_url [String]
    end
  end
end
