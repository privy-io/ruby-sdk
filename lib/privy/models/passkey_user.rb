# frozen_string_literal: true

module Privy
  module Models
    class PasskeyUser < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute display_name
      #
      #   @return [String]
      required :display_name, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, display_name:, name:)
      #   User entity for a WebAuthn registration ceremony.
      #
      #   @param id [String]
      #   @param display_name [String]
      #   @param name [String]
    end
  end
end
