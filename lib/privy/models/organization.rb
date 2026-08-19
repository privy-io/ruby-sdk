# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Organizations#create
    class Organization < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique organization identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Unix timestamp when the organization was created
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute default_key_quorum_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :default_key_quorum_id, String

      # @!attribute display_name
      #   Organization display name
      #
      #   @return [String]
      required :display_name, String

      # @!attribute updated_at
      #   Unix timestamp when the organization was last updated
      #
      #   @return [Float]
      required :updated_at, Float

      # @!method initialize(id:, created_at:, default_key_quorum_id:, display_name:, updated_at:)
      #   A Privy organization object.
      #
      #   @param id [String] Unique organization identifier
      #
      #   @param created_at [Float] Unix timestamp when the organization was created
      #
      #   @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      #   @param display_name [String] Organization display name
      #
      #   @param updated_at [Float] Unix timestamp when the organization was last updated
    end
  end
end
