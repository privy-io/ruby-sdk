# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountGoogleInput < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :google_oauth]
      required :type, const: :google_oauth

      # @!method initialize(email:, name:, subject:, type: :google_oauth)
      #   The payload for importing a Google account.
      #
      #   @param email [String]
      #   @param name [String]
      #   @param subject [String]
      #   @param type [Symbol, :google_oauth]
    end
  end
end
