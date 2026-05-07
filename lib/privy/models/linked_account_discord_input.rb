# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountDiscordInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :discord_oauth]
      required :type, const: :discord_oauth

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!method initialize(subject:, username:, email: nil, type: :discord_oauth)
      #   The payload for importing a Discord account.
      #
      #   @param subject [String]
      #   @param username [String]
      #   @param email [String]
      #   @param type [Symbol, :discord_oauth]
    end
  end
end
