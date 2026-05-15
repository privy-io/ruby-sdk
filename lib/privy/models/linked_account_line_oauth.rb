# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountLineOAuth < Privy::Internal::Type::BaseModel
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

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      required :profile_picture_url, String, nil?: true

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountLineOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountLineOAuth::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(email:, first_verified_at:, latest_verified_at:, name:, profile_picture_url:, subject:, type:, verified_at:)
      #   A LINE OAuth account linked to the user.
      #
      #   @param email [String, nil]
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param name [String, nil]
      #   @param profile_picture_url [String, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountLineOAuth::Type]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountLineOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        LINE_OAUTH = :line_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
