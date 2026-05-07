# frozen_string_literal: true

module Privy
  module Models
    class FarcasterAuthenticateRequestBody < Privy::Internal::Type::BaseModel
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

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!method initialize(channel_token:, fid:, message:, signature:, mode: nil)
      #   The request body for authenticating with Farcaster.
      #
      #   @param channel_token [String]
      #
      #   @param fid [Float]
      #
      #   @param message [String]
      #
      #   @param signature [String]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
    end
  end
end
