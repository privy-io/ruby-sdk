# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute external_fiat_account
      #   A Bridge external fiat account linked to a user.
      #
      #   @return [Privy::Models::ExternalFiatAccount]
      required :external_fiat_account, -> { Privy::ExternalFiatAccount }

      # @!method initialize(external_fiat_account:)
      #   Response containing a single external fiat account.
      #
      #   @param external_fiat_account [Privy::Models::ExternalFiatAccount] A Bridge external fiat account linked to a user.
    end
  end
end
