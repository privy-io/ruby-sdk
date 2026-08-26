# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class PayoutResponse < Privy::Internal::Type::BaseModel
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

        # @!attribute destination
        #   The destination bank account for a payout.
        #
        #   @return [Privy::Models::PayoutDestination]
        required :destination, -> { Privy::PayoutDestination }

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

        # @!attribute source
        #   The source crypto asset, chain, and amount for a payout.
        #
        #   @return [Privy::Models::PayoutSource]
        required :source, -> { Privy::PayoutSource }

        # @!attribute status
        #   Status of a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::WalletActionStatus]
        required :status, enum: -> { Privy::Wallets::WalletActionStatus }

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::PayoutResponse::Type]
        required :type, enum: -> { Privy::Wallets::PayoutResponse::Type }

        # @!attribute wallet_id
        #   The ID of the wallet involved in the action.
        #
        #   @return [String]
        required :wallet_id, String

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

        # @!attribute steps
        #   The steps of the wallet action. Only returned if `?include=steps` is provided.
        #
        #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>, nil]
        optional :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

        # @!method initialize(id:, created_at:, destination:, environment:, provider:, source:, status:, type:, wallet_id:, failure_reason: nil, steps: nil)
        #   A payout wallet action. Crypto is sent on-chain to a liquidation address that
        #   offramps to the destination bank account.
        #
        #   @param id [String] The ID of the wallet action.
        #
        #   @param created_at [Time] ISO 8601 timestamp of when the wallet action was created.
        #
        #   @param destination [Privy::Models::PayoutDestination] The destination bank account for a payout.
        #
        #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
        #
        #   @param provider [Symbol, Privy::Models::OrchestrationProvider] Supported fiat orchestration providers.
        #
        #   @param source [Privy::Models::PayoutSource] The source crypto asset, chain, and amount for a payout.
        #
        #   @param status [Symbol, Privy::Models::Wallets::WalletActionStatus] Status of a wallet action.
        #
        #   @param type [Symbol, Privy::Models::Wallets::PayoutResponse::Type]
        #
        #   @param wallet_id [String] The ID of the wallet involved in the action.
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

        # @see Privy::Models::Wallets::PayoutResponse#type
        module Type
          extend Privy::Internal::Type::Enum

          PAYOUT = :payout

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
