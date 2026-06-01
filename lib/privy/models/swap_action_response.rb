# frozen_string_literal: true

module Privy
  module Models
    class SwapActionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :id, String

      # @!attribute caip2
      #   CAIP-2 chain identifier for the swap.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute input_amount
      #   Exact base-unit amount of input token. Populated after on-chain confirmation.
      #
      #   @return [String, nil]
      required :input_amount, String, nil?: true

      # @!attribute input_token
      #   Token address or "native" for the token being sold.
      #
      #   @return [String]
      required :input_token, String

      # @!attribute output_amount
      #   Exact base-unit amount of output token. Populated after on-chain confirmation.
      #
      #   @return [String, nil]
      required :output_amount, String, nil?: true

      # @!attribute output_token
      #   Token address or "native" for the token being bought.
      #
      #   @return [String]
      required :output_token, String

      # @!attribute status
      #   Status of a wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionStatus]
      required :status, enum: -> { Privy::WalletActionStatus }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::SwapActionResponse::Type]
      required :type, enum: -> { Privy::SwapActionResponse::Type }

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute destination_caip2
      #   Destination chain CAIP-2 identifier. Present for cross-chain swaps.
      #
      #   @return [String, nil]
      optional :destination_caip2, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason, nil]
      optional :failure_reason, -> { Privy::FailureReason }

      # @!attribute steps
      #   The steps of the wallet action. Only returned if `?include=steps` is provided.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>, nil]
      optional :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!method initialize(id:, caip2:, created_at:, input_amount:, input_token:, output_amount:, output_token:, status:, type:, wallet_id:, destination_caip2: nil, failure_reason: nil, steps: nil)
      #   Response for a swap action.
      #
      #   @param id [String] The ID of the wallet action.
      #
      #   @param caip2 [String] CAIP-2 chain identifier for the swap.
      #
      #   @param created_at [Time] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param input_amount [String, nil] Exact base-unit amount of input token. Populated after on-chain confirmation.
      #
      #   @param input_token [String] Token address or "native" for the token being sold.
      #
      #   @param output_amount [String, nil] Exact base-unit amount of output token. Populated after on-chain confirmation.
      #
      #   @param output_token [String] Token address or "native" for the token being bought.
      #
      #   @param status [Symbol, Privy::Models::WalletActionStatus] Status of a wallet action.
      #
      #   @param type [Symbol, Privy::Models::SwapActionResponse::Type]
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param destination_caip2 [String] Destination chain CAIP-2 identifier. Present for cross-chain swaps.
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

      # @see Privy::Models::SwapActionResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        SWAP = :swap

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
