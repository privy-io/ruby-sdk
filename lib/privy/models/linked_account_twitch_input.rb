# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTwitchInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :twitch_oauth]
      required :type, const: :twitch_oauth

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(subject:, username: nil, type: :twitch_oauth)
      #   The payload for importing a Twitch account.
      #
      #   @param subject [String]
      #   @param username [String]
      #   @param type [Symbol, :twitch_oauth]
    end
  end
end
