# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountFarcasterInput < Privy::Internal::Type::BaseModel
      # @!attribute fid
      #
      #   @return [Integer]
      required :fid, Integer

      # @!attribute owner_address
      #
      #   @return [String]
      required :owner_address, String

      # @!attribute type
      #
      #   @return [Symbol, :farcaster]
      required :type, const: :farcaster

      # @!attribute bio
      #
      #   @return [String, nil]
      optional :bio, String

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute homepage_url
      #
      #   @return [String, nil]
      optional :homepage_url, String

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      optional :profile_picture_url, String

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(fid:, owner_address:, bio: nil, display_name: nil, homepage_url: nil, profile_picture_url: nil, username: nil, type: :farcaster)
      #   The payload for importing a Farcaster account.
      #
      #   @param fid [Integer]
      #   @param owner_address [String]
      #   @param bio [String]
      #   @param display_name [String]
      #   @param homepage_url [String]
      #   @param profile_picture_url [String]
      #   @param username [String]
      #   @param type [Symbol, :farcaster]
    end
  end
end
