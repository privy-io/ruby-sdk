# frozen_string_literal: true

module Privy
  module Models
    class UpdateOrganizationSecretSigningKeyInput < Privy::Models::OrganizationSecretIDInput
      # @!attribute signing_public_key
      #   P-256 public key in PEM format, or null to clear the configured signing key.
      #
      #   @return [String, nil]
      required :signing_public_key, String, nil?: true

      # @!method initialize(signing_public_key:)
      #   Request body for updating the signing public key on an organization secret.
      #
      #   @param signing_public_key [String, nil] P-256 public key in PEM format, or null to clear the configured signing key.
    end
  end
end
