# frozen_string_literal: true

module Privy
  module Models
    class WalletActionEarnFeeCollectCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::Wallets::WalletActionType]
      required :action_type, enum: -> { Privy::Wallets::WalletActionType }

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
      #   @return [String]
      required :created_at, String

      # @!attribute raw_amount
      #   Base-unit amount of fees collected (e.g. "1500000").
      #
      #   @return [String]
      required :raw_amount, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionEarnFeeCollectCreatedWebhookPayload::Status }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionEarnFeeCollectCreatedWebhookPayload::Type }

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
      #   Human-readable decimal amount of fees collected (e.g. "1.5"). Only present when
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

      # @!method initialize(action_type:, asset_address:, caip2:, created_at:, raw_amount:, status:, type:, vault_address:, vault_id:, wallet_action_id:, wallet_id:, amount: nil, asset: nil, decimals: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload} for more
      #   details.
      #
      #   Payload for the wallet_action.earn_fee_collect.created webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param asset_address [String] Underlying asset token address.
      #
      #   @param caip2 [String] CAIP-2 chain identifier.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param raw_amount [String] Base-unit amount of fees collected (e.g. "1500000").
      #
      #   @param status [Symbol, Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param type [Symbol, Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param vault_address [String] ERC-4626 vault contract address.
      #
      #   @param vault_id [String] The vault ID.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param amount [String] Human-readable decimal amount of fees collected (e.g. "1.5"). Only present when
      #
      #   @param asset [String] Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in t
      #
      #   @param decimals [Integer] Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_EARN_FEE_COLLECT_CREATED = :"wallet_action.earn_fee_collect.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
