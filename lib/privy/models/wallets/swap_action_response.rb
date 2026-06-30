# frozen_string_literal: true

module Privy
  module Models
    module Wallets
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
        #   @return [Symbol, Privy::Models::Wallets::WalletActionStatus]
        required :status, enum: -> { Privy::Wallets::WalletActionStatus }

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::SwapActionResponse::Type]
        required :type, enum: -> { Privy::Wallets::SwapActionResponse::Type }

        # @!attribute wallet_id
        #   The ID of the wallet involved in the action.
        #
        #   @return [String]
        required :wallet_id, String

        # @!attribute destination_address
        #   Recipient address on the destination chain. Present for cross-chain swaps. May
        #   differ from the source wallet address when swapping between chain types (e.g.
        #   EVM to Solana).
        #
        #   @return [String, nil]
        optional :destination_address, String

        # @!attribute destination_caip2
        #   Destination chain CAIP-2 identifier. Present for cross-chain swaps.
        #
        #   @return [String, nil]
        optional :destination_caip2, String

        # @!attribute estimated_fees
        #   Estimated fee breakdown from the provider quote. Only present for cross-chain
        #   swaps. Populated after on-chain confirmation.
        #
        #   @return [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil]
        optional :estimated_fees, -> { Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem] }, nil?: true

        # @!attribute estimated_gas
        #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
        #   human-readable decimal string, plus the gas token symbol.
        #
        #   @return [Privy::Models::Gas, nil]
        optional :estimated_gas, -> { Privy::Gas }, nil?: true

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

        # @!attribute fees
        #   Actual fees paid for the swap. Populated after on-chain confirmation. Only
        #   present for cross-chain swaps.
        #
        #   @return [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil]
        optional :fees, -> { Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem] }, nil?: true

        # @!attribute gas
        #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
        #   human-readable decimal string, plus the gas token symbol.
        #
        #   @return [Privy::Models::Gas, nil]
        optional :gas, -> { Privy::Gas }, nil?: true

        # @!attribute steps
        #   The steps of the wallet action. Only returned if `?include=steps` is provided.
        #
        #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>, nil]
        optional :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

        # @!method initialize(id:, caip2:, created_at:, input_amount:, input_token:, output_amount:, output_token:, status:, type:, wallet_id:, destination_address: nil, destination_caip2: nil, estimated_fees: nil, estimated_gas: nil, failure_reason: nil, fees: nil, gas: nil, steps: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::SwapActionResponse} for more details.
        #
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
        #   @param status [Symbol, Privy::Models::Wallets::WalletActionStatus] Status of a wallet action.
        #
        #   @param type [Symbol, Privy::Models::Wallets::SwapActionResponse::Type]
        #
        #   @param wallet_id [String] The ID of the wallet involved in the action.
        #
        #   @param destination_address [String] Recipient address on the destination chain. Present for cross-chain swaps. May d
        #
        #   @param destination_caip2 [String] Destination chain CAIP-2 identifier. Present for cross-chain swaps.
        #
        #   @param estimated_fees [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil] Estimated fee breakdown from the provider quote. Only present for cross-chain sw
        #
        #   @param estimated_gas [Privy::Models::Gas, nil] Gas cost for a blockchain action. Includes both raw base-unit amount and a human
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param fees [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil] Actual fees paid for the swap. Populated after on-chain confirmation. Only prese
        #
        #   @param gas [Privy::Models::Gas, nil] Gas cost for a blockchain action. Includes both raw base-unit amount and a human
        #
        #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

        # @see Privy::Models::Wallets::SwapActionResponse#type
        module Type
          extend Privy::Internal::Type::Enum

          SWAP = :swap

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
