# frozen_string_literal: true

module Privy
  module Models
    class EthereumEarnPositionQuery < Privy::Internal::Type::BaseModel
      # @!attribute vault_id
      #   The vault ID to get position for.
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(vault_id:)
      #   Query parameters for fetching an earn vault position.
      #
      #   @param vault_id [String] The vault ID to get position for.
    end
  end
end
