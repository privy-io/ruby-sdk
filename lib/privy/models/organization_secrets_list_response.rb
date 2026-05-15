# frozen_string_literal: true

module Privy
  module Models
    class OrganizationSecretsListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::OrganizationSecretView>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::OrganizationSecretView] }

      # @!method initialize(data:)
      #   Response returned when listing organization secrets for an account.
      #
      #   @param data [Array<Privy::Models::OrganizationSecretView>]
    end
  end
end
