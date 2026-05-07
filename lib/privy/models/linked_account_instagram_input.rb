# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountInstagramInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :instagram_oauth]
      required :type, const: :instagram_oauth

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!method initialize(subject:, username:, type: :instagram_oauth)
      #   The payload for importing an Instagram account.
      #
      #   @param subject [String]
      #   @param username [String]
      #   @param type [Symbol, :instagram_oauth]
    end
  end
end
