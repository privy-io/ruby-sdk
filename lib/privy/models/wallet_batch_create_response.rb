# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#create_batch
    class WalletBatchCreateResponse < Privy::Internal::Type::BaseModel
      # @!attribute results
      #   Array of results for each wallet creation request, in the same order as input.
      #
      #   @return [Array<Privy::Models::WalletBatchCreateResult::WalletBatchCreateSuccess, Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure>]
      required :results, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletBatchCreateResult] }

      # @!method initialize(results:)
      #   Response for a batch wallet creation request.
      #
      #   @param results [Array<Privy::Models::WalletBatchCreateResult::WalletBatchCreateSuccess, Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure>] Array of results for each wallet creation request, in the same order as input.
    end
  end
end
