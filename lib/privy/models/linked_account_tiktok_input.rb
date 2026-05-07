# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTiktokInput < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, :tiktok_oauth]
      required :type, const: :tiktok_oauth

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!method initialize(name:, subject:, username:, type: :tiktok_oauth)
      #   The payload for importing a Tiktok account.
      #
      #   @param name [String, nil]
      #   @param subject [String]
      #   @param username [String]
      #   @param type [Symbol, :tiktok_oauth]
    end
  end
end
