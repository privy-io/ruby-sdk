# frozen_string_literal: true

module Privy
  module Models
    class TransferActionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute destination_address
      #   Recipient address.
      #
      #   @return [String]
      required :destination_address, String

      # @!attribute destination_amount
      #   Amount received on the destination chain. Set at creation for same-chain
      #   transfers. Null until fill confirmation for cross-chain or cross-asset
      #   transfers.
      #
      #   @return [String, nil]
      required :destination_amount, String, nil?: true

      # @!attribute source_chain
      #   Chain name (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :source_chain, String

      # @!attribute status
      #   Status of a wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionStatus]
      required :status, enum: -> { Privy::WalletActionStatus }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TransferActionResponse::Type]
      required :type, enum: -> { Privy::TransferActionResponse::Type }

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute destination_asset
      #   Destination asset for cross-asset transfers. Omitted for same-asset transfers.
      #
      #   @return [String, nil]
      optional :destination_asset, String

      # @!attribute destination_chain
      #   Destination chain for cross-chain transfers. Omitted for same-chain transfers.
      #
      #   @return [String, nil]
      optional :destination_chain, String

      # @!attribute estimated_fees
      #   Estimated fee breakdown from the provider quote. Only present for cross-chain or
      #   cross-asset transfers. Populated after on-chain confirmation.
      #
      #   @return [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil]
      optional :estimated_fees, -> { Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem] }, nil?: true

      # @!attribute estimated_gas
      #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
      #   human-readable decimal string, plus the gas token symbol.
      #
      #   @return [Privy::Models::TransferActionResponse::EstimatedGas, nil]
      optional :estimated_gas, -> { Privy::TransferActionResponse::EstimatedGas }

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason, nil]
      optional :failure_reason, -> { Privy::FailureReason }

      # @!attribute fees
      #   Actual fees paid for the transfer. Populated after on-chain confirmation. Only
      #   present for cross-chain transfers.
      #
      #   @return [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil]
      optional :fees, -> { Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem] }, nil?: true

      # @!attribute gas
      #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
      #   human-readable decimal string, plus the gas token symbol.
      #
      #   @return [Privy::Models::TransferActionResponse::Gas, nil]
      optional :gas, -> { Privy::TransferActionResponse::Gas }

      # @!attribute source_amount
      #   Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output
      #   cross-chain transfers until the source amount is determined.
      #
      #   @return [String, nil]
      optional :source_amount, String

      # @!attribute source_asset
      #   Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated
      #   with a named asset; omitted for custom-token transfers.
      #
      #   @return [String, nil]
      optional :source_asset, String

      # @!attribute source_asset_address
      #   Token contract address (EVM) or mint address (Solana). Present when the transfer
      #   was initiated with `asset_address`.
      #
      #   @return [String, nil]
      optional :source_asset_address, String

      # @!attribute source_asset_decimals
      #   Number of decimals for the transferred token. Present when the transfer was
      #   initiated with `asset_address` and the decimals were resolved on-chain.
      #
      #   @return [Integer, nil]
      optional :source_asset_decimals, Integer

      # @!attribute steps
      #   The steps of the wallet action. Only returned if `?include=steps` is provided.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>, nil]
      optional :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!method initialize(id:, created_at:, destination_address:, destination_amount:, source_chain:, status:, type:, wallet_id:, destination_asset: nil, destination_chain: nil, estimated_fees: nil, estimated_gas: nil, failure_reason: nil, fees: nil, gas: nil, source_amount: nil, source_asset: nil, source_asset_address: nil, source_asset_decimals: nil, steps: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferActionResponse} for more details.
      #
      #   Response for a transfer action.
      #
      #   @param id [String] The ID of the wallet action.
      #
      #   @param created_at [Time] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param destination_address [String] Recipient address.
      #
      #   @param destination_amount [String, nil] Amount received on the destination chain. Set at creation for same-chain transfe
      #
      #   @param source_chain [String] Chain name (e.g. "base", "ethereum").
      #
      #   @param status [Symbol, Privy::Models::WalletActionStatus] Status of a wallet action.
      #
      #   @param type [Symbol, Privy::Models::TransferActionResponse::Type]
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param destination_asset [String] Destination asset for cross-asset transfers. Omitted for same-asset transfers.
      #
      #   @param destination_chain [String] Destination chain for cross-chain transfers. Omitted for same-chain transfers.
      #
      #   @param estimated_fees [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil] Estimated fee breakdown from the provider quote. Only present for cross-chain or
      #
      #   @param estimated_gas [Privy::Models::TransferActionResponse::EstimatedGas] Gas cost for a blockchain action. Includes both raw base-unit amount and a human
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param fees [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil] Actual fees paid for the transfer. Populated after on-chain confirmation. Only p
      #
      #   @param gas [Privy::Models::TransferActionResponse::Gas] Gas cost for a blockchain action. Includes both raw base-unit amount and a human
      #
      #   @param source_amount [String] Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output c
      #
      #   @param source_asset [String] Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated w
      #
      #   @param source_asset_address [String] Token contract address (EVM) or mint address (Solana). Present when the transfer
      #
      #   @param source_asset_decimals [Integer] Number of decimals for the transferred token. Present when the transfer was init
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

      # @see Privy::Models::TransferActionResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::TransferActionResponse#estimated_gas
      class EstimatedGas < Privy::Models::Gas
        # @!method initialize
        #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
        #   human-readable decimal string, plus the gas token symbol.
      end

      # @see Privy::Models::TransferActionResponse#gas
      class Gas < Privy::Models::Gas
        # @!method initialize
        #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
        #   human-readable decimal string, plus the gas token symbol.
      end
    end
  end
end
