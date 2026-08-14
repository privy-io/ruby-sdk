# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # @see Privy::Resources::Wallets::Transactions#get
      class TransactionGetResponse < Privy::Internal::Type::BaseModel
        # @!attribute next_cursor
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!attribute transactions
        #
        #   @return [Array<Privy::Models::Wallets::TransactionGetResponse::Transaction>]
        required :transactions,
                 -> { Privy::Internal::Type::ArrayOf[Privy::Models::Wallets::TransactionGetResponse::Transaction] }

        # @!method initialize(next_cursor:, transactions:)
        #   @param next_cursor [String, nil]
        #   @param transactions [Array<Privy::Models::Wallets::TransactionGetResponse::Transaction>]

        class Transaction < Privy::Internal::Type::BaseModel
          # @!attribute caip2
          #
          #   @return [String]
          required :caip2, String

          # @!attribute created_at
          #
          #   @return [Float]
          required :created_at, Float

          # @!attribute details
          #   Details of a wallet transaction, varying by transaction type.
          #
          #   @return [Privy::Models::TransferSentTransactionDetail, Privy::Models::TransferReceivedTransactionDetail]
          required :details, union: -> { Privy::TransactionDetail }

          # @!attribute privy_transaction_id
          #   Privy's ID for the transaction, or `null` if the transaction was not broadcasted
          #   through Privy.
          #
          #   @return [String, nil]
          required :privy_transaction_id, String, nil?: true

          # @!attribute status
          #   Status of a blockchain transaction submitted by Privy.
          #
          #   @return [Symbol, Privy::Models::BlockchainTransactionStatus]
          required :status, enum: -> { Privy::BlockchainTransactionStatus }

          # @!attribute transaction_hash
          #
          #   @return [String, nil]
          required :transaction_hash, String, nil?: true

          # @!attribute wallet_id
          #   The wallet whose history this transaction belongs to. The sending wallet for
          #   outbound transactions, including every transaction Privy broadcasted, and the
          #   receiving wallet for inbound transfers.
          #
          #   @return [String]
          required :wallet_id, String

          # @!attribute sponsored
          #
          #   @return [Boolean, nil]
          optional :sponsored, Privy::Internal::Type::Boolean

          # @!attribute user_operation_hash
          #
          #   @return [String, nil]
          optional :user_operation_hash, String

          # @!method initialize(caip2:, created_at:, details:, privy_transaction_id:, status:, transaction_hash:, wallet_id:, sponsored: nil, user_operation_hash: nil)
          #   Some parameter documentations has been truncated, see
          #   {Privy::Models::Wallets::TransactionGetResponse::Transaction} for more details.
          #
          #   @param caip2 [String]
          #
          #   @param created_at [Float]
          #
          #   @param details [Privy::Models::TransferSentTransactionDetail, Privy::Models::TransferReceivedTransactionDetail] Details of a wallet transaction, varying by transaction type.
          #
          #   @param privy_transaction_id [String, nil] Privy's ID for the transaction, or `null` if the transaction was not broadcasted
          #
          #   @param status [Symbol, Privy::Models::BlockchainTransactionStatus] Status of a blockchain transaction submitted by Privy.
          #
          #   @param transaction_hash [String, nil]
          #
          #   @param wallet_id [String] The wallet whose history this transaction belongs to. The sending wallet for out
          #
          #   @param sponsored [Boolean]
          #
          #   @param user_operation_hash [String]
        end
      end
    end
  end
end
