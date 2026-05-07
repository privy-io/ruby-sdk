# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountDiscordOAuth < Privy::Internal::Type::BaseModel
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

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountDiscordOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountDiscordOAuth::Type }

      # @!attribute username
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(email:, first_verified_at:, latest_verified_at:, subject:, type:, username:, verified_at:)
      #   A Discord OAuth account linked to the user.
      #
      #   @param email [String, nil]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountDiscordOAuth::Type]
      #   @param username [String, nil]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountDiscordOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        DISCORD_OAUTH = :discord_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
