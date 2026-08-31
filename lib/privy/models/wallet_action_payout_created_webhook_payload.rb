# frozen_string_literal: true

module Privy
  module Models
    class WalletActionPayoutCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::Wallets::WalletActionType]
      required :action_type, enum: -> { Privy::Wallets::WalletActionType }

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute destination_currency
      #   The fiat currency the payout settles in (e.g. "usd").
      #
      #   @return [String]
      required :destination_currency, String

      # @!attribute destination_fiat_account_id
      #   The registered external fiat account the payout settles to.
      #
      #   @return [String]
      required :destination_fiat_account_id, String

      # @!attribute destination_payment_rail
      #   The fiat payment rail the payout settles over (e.g. "ach", "sepa", "wire").
      #
      #   @return [String]
      required :destination_payment_rail, String

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute provider
      #   Supported fiat orchestration providers.
      #
      #   @return [Symbol, Privy::Models::OrchestrationProvider]
      required :provider, enum: -> { Privy::OrchestrationProvider }

      # @!attribute source_amount
      #   Decimal amount offramped, in the asset's standard units (e.g. "100.00").
      #
      #   @return [String]
      required :source_amount, String

      # @!attribute source_asset
      #   Source crypto asset sent on-chain (e.g. "usdc").
      #
      #   @return [String]
      required :source_asset, String

      # @!attribute source_chain
      #   Source chain the crypto was sent from (e.g. "base").
      #
      #   @return [String]
      required :source_chain, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionPayoutCreatedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionPayoutCreatedWebhookPayload::Status }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionPayoutCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionPayoutCreatedWebhookPayload::Type }

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

      # @!attribute reference_id
      #   Developer-provided reference ID, if one was included in the request.
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!method initialize(action_type:, created_at:, destination_currency:, destination_fiat_account_id:, destination_payment_rail:, environment:, provider:, source_amount:, source_asset:, source_chain:, status:, type:, wallet_action_id:, wallet_id:, reference_id: nil)
      #   Payload for the wallet_action.payout.created webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param destination_currency [String] The fiat currency the payout settles in (e.g. "usd").
      #
      #   @param destination_fiat_account_id [String] The registered external fiat account the payout settles to.
      #
      #   @param destination_payment_rail [String] The fiat payment rail the payout settles over (e.g. "ach", "sepa", "wire").
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
      #
      #   @param source_amount [String] Decimal amount offramped, in the asset's standard units (e.g. "100.00").
      #
      #   @param source_asset [String] Source crypto asset sent on-chain (e.g. "usdc").
      #
      #   @param source_chain [String] Source chain the crypto was sent from (e.g. "base").
      #
      #   @param status [Symbol, Privy::Models::WalletActionPayoutCreatedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param type [Symbol, Privy::Models::WalletActionPayoutCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param reference_id [String, nil] Developer-provided reference ID, if one was included in the request.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionPayoutCreatedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionPayoutCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_PAYOUT_CREATED = :"wallet_action.payout.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
