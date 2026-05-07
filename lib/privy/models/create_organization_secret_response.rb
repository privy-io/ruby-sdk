# frozen_string_literal: true

module Privy
  module Models
    class CreateOrganizationSecretResponse < Privy::Models::OrganizationSecretView
      # @!attribute organization_secret
      #   The plaintext organization secret. Returned only at creation time.
      #
      #   @return [String]
      required :organization_secret, String

      # @!method initialize(organization_secret:)
      #   Response returned when creating a new organization secret.
      #
      #   @param organization_secret [String] The plaintext organization secret. Returned only at creation time.
    end
  end
end
