# frozen_string_literal: true

module Privy
  module Models
    class OrganizationUpdateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute default_key_quorum_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String, nil]
      optional :default_key_quorum_id, String

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!method initialize(default_key_quorum_id: nil, display_name: nil)
      #   Request body for updating an organization.
      #
      #   @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      #   @param display_name [String]
    end
  end
end
