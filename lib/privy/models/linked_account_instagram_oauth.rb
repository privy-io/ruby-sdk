# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountInstagramOAuth < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::LinkedAccountInstagramOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountInstagramOAuth::Type }

      # @!attribute username
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(first_verified_at:, latest_verified_at:, subject:, type:, username:, verified_at:)
      #   An Instagram OAuth account linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountInstagramOAuth::Type]
      #   @param username [String, nil]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountInstagramOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        INSTAGRAM_OAUTH = :instagram_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
