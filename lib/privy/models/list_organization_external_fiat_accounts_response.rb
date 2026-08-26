# frozen_string_literal: true

module Privy
  module Models
    class ListOrganizationExternalFiatAccountsResponse < Privy::Internal::Type::BaseModel
      # @!attribute accounts
      #
      #   @return [Array<Privy::Models::OrganizationExternalFiatAccount>]
      required :accounts, -> { Privy::Internal::Type::ArrayOf[Privy::OrganizationExternalFiatAccount] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(accounts:, next_cursor:)
      #   A list of external fiat accounts linked to an organization.
      #
      #   @param accounts [Array<Privy::Models::OrganizationExternalFiatAccount>]
      #   @param next_cursor [String, nil]
    end
  end
end
