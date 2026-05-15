# frozen_string_literal: true

module Privy
  module Models
    class FarcasterLinkInput < Privy::Internal::Type::BaseModel
      # @!attribute channel_token
      #
      #   @return [String]
      required :channel_token, String

      # @!attribute fid
      #
      #   @return [Float]
      required :fid, Float

      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!method initialize(channel_token:, fid:, message:, signature:)
      #   Input for linking a Farcaster account.
      #
      #   @param channel_token [String]
      #   @param fid [Float]
      #   @param message [String]
      #   @param signature [String]
    end
  end
end
