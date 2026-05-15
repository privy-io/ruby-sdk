# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTiktokOAuth < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::LinkedAccountTiktokOAuth::Type]
      required :type, enum: -> { Privy::LinkedAccountTiktokOAuth::Type }

      # @!attribute username
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!method initialize(first_verified_at:, latest_verified_at:, name:, subject:, type:, username:, verified_at:)
      #   A TikTok OAuth account linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param name [String, nil]
      #   @param subject [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountTiktokOAuth::Type]
      #   @param username [String, nil]
      #   @param verified_at [Float]

      # @see Privy::Models::LinkedAccountTiktokOAuth#type
      module Type
        extend Privy::Internal::Type::Enum

        TIKTOK_OAUTH = :tiktok_oauth

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
