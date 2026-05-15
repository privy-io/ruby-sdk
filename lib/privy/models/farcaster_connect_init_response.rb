# frozen_string_literal: true

module Privy
  module Models
    class FarcasterConnectInitResponse < Privy::Internal::Type::BaseModel
      # @!attribute channel_token
      #
      #   @return [String]
      required :channel_token, String

      # @!attribute connect_uri
      #
      #   @return [String]
      required :connect_uri, String

      # @!method initialize(channel_token:, connect_uri:)
      #   Proxy for the Farcaster Connect init response as defined in FIP-11.
      #
      #   @param channel_token [String]
      #   @param connect_uri [String]
    end
  end
end
