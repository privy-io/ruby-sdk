# frozen_string_literal: true

module Privy
  module Models
    class OrganizationExternalFiatAccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute external_fiat_account
      #   A Bridge external fiat account linked to an organization.
      #
      #   @return [Privy::Models::OrganizationExternalFiatAccount]
      required :external_fiat_account, -> { Privy::OrganizationExternalFiatAccount }

      # @!method initialize(external_fiat_account:)
      #   Response containing a single organization external fiat account.
      #
      #   @param external_fiat_account [Privy::Models::OrganizationExternalFiatAccount] A Bridge external fiat account linked to an organization.
    end
  end
end
