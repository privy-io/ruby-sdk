# frozen_string_literal: true

module Privy
  module Models
    class DerivationInput < Privy::Internal::Type::BaseModel
      # @!attribute wallet_id
      #   ID of the HD root wallet to derive the new wallet from.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(wallet_id:)
      #   Derives the new wallet from an existing HD root wallet so both share one seed
      #   phrase.
      #
      #   @param wallet_id [String] ID of the HD root wallet to derive the new wallet from.
    end
  end
end
