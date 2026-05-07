# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampTransactionStatusInput < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   The fiat onramp provider to use.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampProvider]
      required :provider, enum: -> { Privy::FiatOnrampProvider }

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!method initialize(provider:, session_id:)
      #   The request input for checking a fiat onramp session status.
      #
      #   @param provider [Symbol, Privy::Models::FiatOnrampProvider] The fiat onramp provider to use.
      #
      #   @param session_id [String]
    end
  end
end
