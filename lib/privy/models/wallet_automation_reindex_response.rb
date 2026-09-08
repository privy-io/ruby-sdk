# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::WalletAutomations#reindex
    class WalletAutomationReindexResponse < Privy::Internal::Type::BaseModel
      # @!attribute results
      #
      #   @return [Array<Privy::Models::WalletAutomationReindexAssetResult>]
      required :results, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAutomationReindexAssetResult] }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(results:, wallet_id:)
      #   Result of re-checking a wallet against its wallet automations.
      #
      #   @param results [Array<Privy::Models::WalletAutomationReindexAssetResult>]
      #   @param wallet_id [String]
    end
  end
end
