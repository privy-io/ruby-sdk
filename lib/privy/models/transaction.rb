# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Transactions#get
    class Transaction < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute caip2
      #
      #   @return [String]
      required :caip2, String

      # @!attribute created_at
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::Transaction::Status]
      required :status, enum: -> { Privy::Transaction::Status }

      # @!attribute transaction_hash
      #
      #   @return [String, nil]
      required :transaction_hash, String, nil?: true

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute reference_id
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!attribute sponsored
      #
      #   @return [Boolean, nil]
      optional :sponsored, Privy::Internal::Type::Boolean

      # @!attribute user_operation_hash
      #
      #   @return [String, nil]
      optional :user_operation_hash, String

      # @!method initialize(id:, caip2:, created_at:, status:, transaction_hash:, wallet_id:, reference_id: nil, sponsored: nil, user_operation_hash: nil)
      #   A transaction from a Privy wallet.
      #
      #   @param id [String]
      #   @param caip2 [String]
      #   @param created_at [Float]
      #   @param status [Symbol, Privy::Models::Transaction::Status]
      #   @param transaction_hash [String, nil]
      #   @param wallet_id [String]
      #   @param reference_id [String, nil]
      #   @param sponsored [Boolean]
      #   @param user_operation_hash [String]

      # @see Privy::Models::Transaction#status
      module Status
        extend Privy::Internal::Type::Enum

        BROADCASTED = :broadcasted
        CONFIRMED = :confirmed
        EXECUTION_REVERTED = :execution_reverted
        FAILED = :failed
        REPLACED = :replaced
        FINALIZED = :finalized
        PROVIDER_ERROR = :provider_error
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
