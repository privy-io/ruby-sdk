# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountGitHubInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :github_oauth]
      required :type, const: :github_oauth

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(subject:, username:, email: nil, name: nil, type: :github_oauth)
      #   The payload for importing a Github account.
      #
      #   @param subject [String]
      #   @param username [String]
      #   @param email [String]
      #   @param name [String]
      #   @param type [Symbol, :github_oauth]
    end
  end
end
