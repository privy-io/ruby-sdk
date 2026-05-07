# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldPositionsInput < Privy::Internal::Type::BaseModel
      # @!attribute vault_id
      #   The vault ID to get position for.
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(vault_id:)
      #   Input for fetching yield positions.
      #
      #   @param vault_id [String] The vault ID to get position for.
    end
  end
end
