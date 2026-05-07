# frozen_string_literal: true

module Privy
  module Models
    class EthereumVaultDetailsInput < Privy::Internal::Type::BaseModel
      # @!attribute vault_id
      #   The Privy vault ID.
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(vault_id:)
      #   Input for fetching vault details.
      #
      #   @param vault_id [String] The Privy vault ID.
    end
  end
end
