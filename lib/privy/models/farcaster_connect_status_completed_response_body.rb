# frozen_string_literal: true

module Privy
  module Models
    class FarcasterConnectStatusCompletedResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute bio
      #
      #   @return [String]
      required :bio, String

      # @!attribute display_name
      #
      #   @return [String]
      required :display_name, String

      # @!attribute fid
      #
      #   @return [Float]
      required :fid, Float

      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute pfp_url
      #
      #   @return [String]
      required :pfp_url, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute state
      #
      #   @return [Symbol, Privy::Models::FarcasterConnectStatusCompletedResponseBody::State]
      required :state, enum: -> { Privy::FarcasterConnectStatusCompletedResponseBody::State }

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!method initialize(bio:, display_name:, fid:, message:, nonce:, pfp_url:, signature:, state:, username:)
      #   The response body for completing a Farcaster connection.
      #
      #   @param bio [String]
      #   @param display_name [String]
      #   @param fid [Float]
      #   @param message [String]
      #   @param nonce [String]
      #   @param pfp_url [String]
      #   @param signature [String]
      #   @param state [Symbol, Privy::Models::FarcasterConnectStatusCompletedResponseBody::State]
      #   @param username [String]

      # @see Privy::Models::FarcasterConnectStatusCompletedResponseBody#state
      module State
        extend Privy::Internal::Type::Enum

        COMPLETED = :completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
