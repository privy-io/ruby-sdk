# frozen_string_literal: true

module Privy
  module Models
    class OrganizationSecretIDInput < Privy::Internal::Type::BaseModel
      # @!attribute secret_id
      #   The organization secret ID.
      #
      #   @return [String]
      required :secret_id, String

      # @!method initialize(secret_id:)
      #   Request body for targeting a specific organization secret.
      #
      #   @param secret_id [String] The organization secret ID.
    end
  end
end
