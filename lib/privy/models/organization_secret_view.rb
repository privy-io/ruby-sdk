# frozen_string_literal: true

module Privy
  module Models
    class OrganizationSecretView < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique secret identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   ISO 8601 creation timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute last_four
      #   Last four characters of the secret
      #
      #   @return [String]
      required :last_four, String

      # @!attribute revoked_at
      #   ISO 8601 revocation timestamp, or null if active
      #
      #   @return [String, nil]
      required :revoked_at, String, nil?: true

      # @!attribute signing_public_key
      #   P-256 public key in PEM format for request signing, or null if not configured
      #
      #   @return [String, nil]
      required :signing_public_key, String, nil?: true

      # @!method initialize(id:, created_at:, last_four:, revoked_at:, signing_public_key:)
      #   View of an organization secret for list and management endpoints.
      #
      #   @param id [String] Unique secret identifier
      #
      #   @param created_at [String] ISO 8601 creation timestamp
      #
      #   @param last_four [String] Last four characters of the secret
      #
      #   @param revoked_at [String, nil] ISO 8601 revocation timestamp, or null if active
      #
      #   @param signing_public_key [String, nil] P-256 public key in PEM format for request signing, or null if not configured
    end
  end
end
