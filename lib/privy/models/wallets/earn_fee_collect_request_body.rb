# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnFeeCollectRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute vault_id
        #   The ID of the vault to collect fees from.
        #
        #   @return [String]
        required :vault_id, String

        # @!method initialize(vault_id:)
        #   Input for collecting accumulated fees from an Aave vault.
        #
        #   @param vault_id [String] The ID of the vault to collect fees from.
      end
    end
  end
end
