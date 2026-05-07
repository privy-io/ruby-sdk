# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampTransactionStatusResponse < Privy::Internal::Type::BaseModel
      # @!attribute raw_status
      #
      #   @return [String]
      required :raw_status, String

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute status
      #   Normalized fiat onramp transaction status.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampTransactionStatus]
      required :status, enum: -> { Privy::FiatOnrampTransactionStatus }

      # @!attribute transaction_id
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!method initialize(raw_status:, session_id:, status:, transaction_id: nil)
      #   The response containing the fiat onramp session status.
      #
      #   @param raw_status [String]
      #
      #   @param session_id [String]
      #
      #   @param status [Symbol, Privy::Models::FiatOnrampTransactionStatus] Normalized fiat onramp transaction status.
      #
      #   @param transaction_id [String]
    end
  end
end
