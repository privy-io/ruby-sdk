# frozen_string_literal: true

module Privy
  module Models
    class WalletActionEarnWithdrawSucceededWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

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

      # @!attribute raw_amount
      #   Base-unit amount of asset withdrawn (e.g. "1500000").
      #
      #   @return [String]
      required :raw_amount, String

      # @!attribute share_amount
      #   Vault shares burned in base units.
      #
      #   @return [String]
      required :share_amount, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionEarnWithdrawSucceededWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action, including transaction hashes.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionEarnWithdrawSucceededWebhookPayload::Type }

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

      # @!attribute wallet_action_id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :wallet_action_id, String

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

      # @!method initialize(action_type:, asset_address:, caip2:, raw_amount:, share_amount:, status:, steps:, type:, vault_address:, vault_id:, wallet_action_id:, wallet_id:, amount: nil, asset: nil, decimals: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload} for more
      #   details.
      #
      #   Payload for the wallet_action.earn_withdraw.succeeded webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param asset_address [String] Underlying asset token address.
      #
      #   @param caip2 [String] CAIP-2 chain identifier.
      #
      #   @param raw_amount [String] Base-unit amount of asset withdrawn (e.g. "1500000").
      #
      #   @param share_amount [String] Vault shares burned in base units.
      #
      #   @param status [Symbol, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>] The steps of the wallet action, including transaction hashes.
      #
      #   @param type [Symbol, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload::Type] The type of webhook event.
      #
      #   @param vault_address [String] ERC-4626 vault contract address.
      #
      #   @param vault_id [String] The vault ID.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param amount [String] Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
      #
      #   @param asset [String] Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in t
      #
      #   @param decimals [Integer] Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCEEDED = :succeeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_EARN_WITHDRAW_SUCCEEDED = :"wallet_action.earn_withdraw.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
