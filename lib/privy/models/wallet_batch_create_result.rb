# frozen_string_literal: true

module Privy
  module Models
    # A single result from a batch wallet creation operation.
    module WalletBatchCreateResult
      extend Privy::Internal::Type::Union

      # A successful wallet creation result within a batch operation.
      variant -> { Privy::WalletBatchCreateResult::WalletBatchCreateSuccess }

      # A failed wallet creation result within a batch operation.
      variant -> { Privy::WalletBatchCreateResult::WalletBatchCreateFailure }

      class WalletBatchCreateSuccess < Privy::Internal::Type::BaseModel
        # @!attribute index
        #   The index of the wallet in the original request array.
        #
        #   @return [Float]
        required :index, Float

        # @!attribute success
        #
        #   @return [Boolean, Privy::Models::WalletBatchCreateResult::WalletBatchCreateSuccess::Success]
        required :success, enum: -> { Privy::WalletBatchCreateResult::WalletBatchCreateSuccess::Success }

        # @!attribute wallet
        #   A wallet managed by Privy's wallet infrastructure.
        #
        #   @return [Privy::Models::Wallet]
        required :wallet, -> { Privy::Wallet }

        # @!method initialize(index:, success:, wallet:)
        #   A successful wallet creation result within a batch operation.
        #
        #   @param index [Float] The index of the wallet in the original request array.
        #
        #   @param success [Boolean, Privy::Models::WalletBatchCreateResult::WalletBatchCreateSuccess::Success]
        #
        #   @param wallet [Privy::Models::Wallet] A wallet managed by Privy's wallet infrastructure.

        # @see Privy::Models::WalletBatchCreateResult::WalletBatchCreateSuccess#success
        module Success
          extend Privy::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end
      end

      class WalletBatchCreateFailure < Privy::Internal::Type::BaseModel
        # @!attribute code
        #   A PrivyErrorCode string identifying the error type (e.g., "invalid_data",
        #   "resource_conflict").
        #
        #   @return [String]
        required :code, String

        # @!attribute error
        #   A human-readable error message with details about what went wrong.
        #
        #   @return [String]
        required :error, String

        # @!attribute index
        #   The index of the wallet in the original request array.
        #
        #   @return [Float]
        required :index, Float

        # @!attribute success
        #
        #   @return [Boolean, Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure::Success]
        required :success, enum: -> { Privy::WalletBatchCreateResult::WalletBatchCreateFailure::Success }

        # @!method initialize(code:, error:, index:, success:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure} for more
        #   details.
        #
        #   A failed wallet creation result within a batch operation.
        #
        #   @param code [String] A PrivyErrorCode string identifying the error type (e.g., "invalid_data", "resou
        #
        #   @param error [String] A human-readable error message with details about what went wrong.
        #
        #   @param index [Float] The index of the wallet in the original request array.
        #
        #   @param success [Boolean, Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure::Success]

        # @see Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure#success
        module Success
          extend Privy::Internal::Type::Enum

          FALSE = false

          # @!method self.values
          #   @return [Array<Boolean>]
        end
      end

      # @!method self.variants
      #   @return [Array(Privy::Models::WalletBatchCreateResult::WalletBatchCreateSuccess, Privy::Models::WalletBatchCreateResult::WalletBatchCreateFailure)]
    end
  end
end
