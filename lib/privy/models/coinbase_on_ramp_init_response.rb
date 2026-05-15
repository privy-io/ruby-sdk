# frozen_string_literal: true

module Privy
  module Models
    class CoinbaseOnRampInitResponse < Privy::Internal::Type::BaseModel
      # @!attribute app_id
      #
      #   @return [String]
      required :app_id, String

      # @!attribute channel_id
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute partner_user_id
      #
      #   @return [String]
      required :partner_user_id, String

      # @!attribute session_token
      #
      #   @return [String]
      required :session_token, String

      # @!method initialize(app_id:, channel_id:, partner_user_id:, session_token:)
      #   The response from initializing a Coinbase on-ramp session.
      #
      #   @param app_id [String]
      #   @param channel_id [String]
      #   @param partner_user_id [String]
      #   @param session_token [String]
    end
  end
end
