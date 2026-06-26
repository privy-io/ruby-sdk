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
          #   @return [Privy::Models::Wallets::TransactionGetResponse::Transaction::Details]
          required :details, -> { Privy::Models::Wallets::TransactionGetResponse::Transaction::Details }

          # @!attribute privy_transaction_id
          #
          #   @return [String]
          required :privy_transaction_id, String

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
          #   @param caip2 [String]
          #
          #   @param created_at [Float]
          #
          #   @param details [Privy::Models::Wallets::TransactionGetResponse::Transaction::Details] Details of a wallet transaction, varying by transaction type.
          #
          #   @param privy_transaction_id [String]
          #
          #   @param status [Symbol, Privy::Models::BlockchainTransactionStatus] Status of a blockchain transaction submitted by Privy.
          #
          #   @param transaction_hash [String, nil]
          #
          #   @param wallet_id [String]
          #
          #   @param sponsored [Boolean]
          #
          #   @param user_operation_hash [String]

          # @see Privy::Models::Wallets::TransactionGetResponse::Transaction#details
          class Details < Privy::Internal::Type::BaseModel
            # @!method initialize
            #   Details of a wallet transaction, varying by transaction type.
          end
        end
      end
    end
  end
end
