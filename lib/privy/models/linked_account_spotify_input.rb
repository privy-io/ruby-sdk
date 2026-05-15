# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountSpotifyInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :spotify_oauth]
      required :type, const: :spotify_oauth

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(subject:, email: nil, name: nil, type: :spotify_oauth)
      #   The payload for importing a Spotify account.
      #
      #   @param subject [String]
      #   @param email [String]
      #   @param name [String]
      #   @param type [Symbol, :spotify_oauth]
    end
  end
end
