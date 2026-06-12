# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldPositionsInput < Privy::Internal::Type::BaseModel
      # @!attribute vault_id
      #   The vault ID to get position for.
      #
      #   @return [String]
      required :vault_id, String

      # @!attribute include_archived
      #   Include archived wallets in lookup. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_archived, Privy::Internal::Type::Boolean

      # @!method initialize(vault_id:, include_archived: nil)
      #   Input for fetching yield positions.
      #
      #   @param vault_id [String] The vault ID to get position for.
      #
      #   @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
    end
  end
end
