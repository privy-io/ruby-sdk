# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountCustomOAuth < Privy::Internal::Type::BaseModel
      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #   The ID of a custom OAuth provider, set up for this app. Must start with
      #   "custom:".
      #
      #   @return [String]
      required :type, String

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      optional :profile_picture_url, String

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(first_verified_at:, latest_verified_at:, subject:, type:, verified_at:, email: nil, name: nil, profile_picture_url: nil, username: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::LinkedAccountCustomOAuth} for more details.
      #
      #   A custom OAuth account linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #
      #   @param latest_verified_at [Float, nil]
      #
      #   @param subject [String]
      #
      #   @param type [String] The ID of a custom OAuth provider, set up for this app. Must start with "custom:
      #
      #   @param verified_at [Float]
      #
      #   @param email [String]
      #
      #   @param name [String]
      #
      #   @param profile_picture_url [String]
      #
      #   @param username [String]
    end
  end
end
