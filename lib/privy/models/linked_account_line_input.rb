# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountLineInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :line_oauth]
      required :type, const: :line_oauth

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute profile_picture_url
      #
      #   @return [String, nil]
      optional :profile_picture_url, String

      # @!method initialize(subject:, email: nil, name: nil, profile_picture_url: nil, type: :line_oauth)
      #   The payload for importing a LINE account.
      #
      #   @param subject [String]
      #   @param email [String]
      #   @param name [String]
      #   @param profile_picture_url [String]
      #   @param type [Symbol, :line_oauth]
    end
  end
end
