# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountAppleInput < Privy::Internal::Type::BaseModel
      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #
      #   @return [Symbol, :apple_oauth]
      required :type, const: :apple_oauth

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!method initialize(subject:, email: nil, type: :apple_oauth)
      #   The payload for importing an Apple account.
      #
      #   @param subject [String]
      #   @param email [String]
      #   @param type [Symbol, :apple_oauth]
    end
  end
end
