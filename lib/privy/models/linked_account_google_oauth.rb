# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountGoogleOAuth < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

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
      #   @return [Symbol, Privy::Models::LinkedAccountGoogleOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountGoogleOAuth::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(email:, first_verified_at:, latest_verified_at:, name:, subject:, type:, verified_at:)
      #   A Google OAuth account linked to the user.
      #
      #   @param email [String]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param name [String, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountGoogleOAuth::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountGoogleOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        GOOGLE_OAUTH = :google_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
