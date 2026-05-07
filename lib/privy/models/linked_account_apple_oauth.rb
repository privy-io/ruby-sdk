# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountAppleOAuth < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::LinkedAccountAppleOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountAppleOAuth::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(email:, first_verified_at:, latest_verified_at:, subject:, type:, verified_at:)
      #   An Apple OAuth account linked to the user.
      #
      #   @param email [String, nil]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountAppleOAuth::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountAppleOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        APPLE_OAUTH = :apple_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
