# frozen_string_literal: true

module Privy
  module Models
    # Details of a wallet transaction, varying by transaction type.
    module TransactionDetail
      extend Privy::Internal::Type::Union

      discriminator :type

      # Details for a sent transfer transaction.
      variant :transfer_sent, -> { Privy::TransferSentTransactionDetail }

      # Details for a received transfer transaction.
      variant :transfer_received, -> { Privy::TransferReceivedTransactionDetail }

      # @!method self.variants
      #   @return [Array(Privy::Models::TransferSentTransactionDetail, Privy::Models::TransferReceivedTransactionDetail)]
    end
  end
end
