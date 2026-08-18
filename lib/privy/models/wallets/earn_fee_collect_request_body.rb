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

        # @!attribute nonce
        #   Unique caller-generated nonce used to prevent replaying a signed wallet action
        #   request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        #
        #   @return [String, nil]
        optional :nonce, String

        # @!method initialize(vault_id:, nonce: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::EarnFeeCollectRequestBody} for more details.
        #
        #   Input for collecting accumulated fees from an Aave vault.
        #
        #   @param vault_id [String] The ID of the vault to collect fees from.
        #
        #   @param nonce [String] Unique caller-generated nonce used to prevent replaying a signed wallet action r
      end
    end
  end
end
