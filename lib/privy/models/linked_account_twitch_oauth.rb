# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTwitchOAuth < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::LinkedAccountTwitchOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountTwitchOAuth::Type }

      # @!attribute username
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(first_verified_at:, latest_verified_at:, subject:, type:, username:, verified_at:)
      #   A Twitch OAuth account linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountTwitchOAuth::Type]
      #   @param username [String, nil]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountTwitchOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        TWITCH_OAUTH = :twitch_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
