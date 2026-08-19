# frozen_string_literal: true

module Privy
  module Models
    class OrganizationCreateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute default_key_quorum_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :default_key_quorum_id, String

      # @!attribute display_name
      #
      #   @return [String]
      required :display_name, String

      # @!method initialize(default_key_quorum_id:, display_name:)
      #   Request body for creating an organization.
      #
      #   @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      #   @param display_name [String]
    end
  end
end
