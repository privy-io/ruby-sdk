# frozen_string_literal: true

module Privy
  module Models
    class FarcasterConnectInitResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute channel_token
      #
      #   @return [String]
      required :channel_token, String

      # @!attribute connect_uri
      #
      #   @return [String]
      required :connect_uri, String

      # @!method initialize(channel_token:, connect_uri:)
      #   The response body for initiating a Farcaster connection.
      #
      #   @param channel_token [String]
      #   @param connect_uri [String]
    end
  end
end
