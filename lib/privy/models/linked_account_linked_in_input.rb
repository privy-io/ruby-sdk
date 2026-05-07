# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountLinkedInInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :linkedin_oauth]
      required :type, const: :linkedin_oauth

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute vanity_name
      #
      #   @return [String, nil]
      optional :vanity_name, String, api_name: :vanityName

      # @!method initialize(subject:, email: nil, name: nil, vanity_name: nil, type: :linkedin_oauth)
      #   The payload for importing a LinkedIn account.
      #
      #   @param subject [String]
      #   @param email [String]
      #   @param name [String]
      #   @param vanity_name [String]
      #   @param type [Symbol, :linkedin_oauth]
    end
  end
end
