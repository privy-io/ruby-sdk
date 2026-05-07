# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTwitterInput < Privy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :twitter_oauth]
      required :type, const: :twitter_oauth

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      optional :profile_picture_url, String

      # @!method initialize(name:, subject:, username:, profile_picture_url: nil, type: :twitter_oauth)
      #   The payload for importing a Twitter account.
      #
      #   @param name [String]
      #   @param subject [String]
      #   @param username [String]
      #   @param profile_picture_url [String]
      #   @param type [Symbol, :twitter_oauth]
    end
  end
end
