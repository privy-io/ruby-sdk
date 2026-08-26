# frozen_string_literal: true

module Privy
  module Models
    class ListExternalFiatAccountsResponse < Privy::Internal::Type::BaseModel
      # @!attribute accounts
      #
      #   @return [Array<Privy::Models::ExternalFiatAccount>]
      required :accounts, -> { Privy::Internal::Type::ArrayOf[Privy::ExternalFiatAccount] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(accounts:, next_cursor:)
      #   A list of external fiat accounts linked to a user.
      #
      #   @param accounts [Array<Privy::Models::ExternalFiatAccount>]
      #   @param next_cursor [String, nil]
    end
  end
end
