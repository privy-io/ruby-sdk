# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountGitHubOAuth < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountGitHubOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountGitHubOAuth::Type }

      # @!attribute username
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(email:, first_verified_at:, latest_verified_at:, name:, subject:, type:, username:, verified_at:)
      #   A GitHub OAuth account linked to the user.
      #
      #   @param email [String, nil]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param name [String, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountGitHubOAuth::Type]
      #   @param username [String, nil]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountGitHubOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        GITHUB_OAUTH = :github_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
