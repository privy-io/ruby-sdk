# frozen_string_literal: true

module Privy
  module Models
    class EarnWithdrawActionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :id, String

      # @!attribute asset_address
      #   Underlying asset token address.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   CAIP-2 chain identifier.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute raw_amount
      #   Base-unit amount of asset withdrawn (e.g. "1500000").
      #
      #   @return [String]
      required :raw_amount, String

      # @!attribute share_amount
      #   Vault shares burned in base units. Populated after on-chain confirmation.
      #
      #   @return [String, nil]
      required :share_amount, String, nil?: true

      # @!attribute status
      #   Status of a wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionStatus]
      required :status, enum: -> { Privy::WalletActionStatus }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EarnWithdrawActionResponse::Type]
      required :type, enum: -> { Privy::EarnWithdrawActionResponse::Type }

      # @!attribute vault_address
      #   ERC-4626 vault contract address.
      #
      #   @return [String]
      required :vault_address, String

      # @!attribute vault_id
      #   The vault ID.
      #
      #   @return [String]
      required :vault_id, String

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute amount
      #   Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
      #   the token is known in the asset registry.
      #
      #   @return [String, nil]
      optional :amount, String

      # @!attribute asset
      #   Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
      #   the asset registry.
      #
      #   @return [String, nil]
      optional :asset, String

      # @!attribute decimals
      #   Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
      #   present when the token is known in the asset registry.
      #
      #   @return [Integer, nil]
      optional :decimals, Integer

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

      # @!method initialize(id:, asset_address:, caip2:, created_at:, raw_amount:, share_amount:, status:, type:, vault_address:, vault_id:, wallet_id:, amount: nil, asset: nil, decimals: nil, failure_reason: nil, steps: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EarnWithdrawActionResponse} for more details.
      #
      #   Response for an earn withdraw action.
      #
      #   @param id [String] The ID of the wallet action.
      #
      #   @param asset_address [String] Underlying asset token address.
      #
      #   @param caip2 [String] CAIP-2 chain identifier.
      #
      #   @param created_at [Time] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param raw_amount [String] Base-unit amount of asset withdrawn (e.g. "1500000").
      #
      #   @param share_amount [String, nil] Vault shares burned in base units. Populated after on-chain confirmation.
      #
      #   @param status [Symbol, Privy::Models::WalletActionStatus] Status of a wallet action.
      #
      #   @param type [Symbol, Privy::Models::EarnWithdrawActionResponse::Type]
      #
      #   @param vault_address [String] ERC-4626 vault contract address.
      #
      #   @param vault_id [String] The vault ID.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param amount [String] Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
      #
      #   @param asset [String] Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in t
      #
      #   @param decimals [Integer] Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

      # @see Privy::Models::EarnWithdrawActionResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        EARN_WITHDRAW = :earn_withdraw

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
