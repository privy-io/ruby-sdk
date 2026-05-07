# frozen_string_literal: true

module Privy
  module Models
    class FarcasterV2AuthenticateInput < Privy::Internal::Type::BaseModel
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

      # @!method initialize(fid:, message:, signature:, mode: nil)
      #   Input for authenticating a Farcaster V2 account.
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
