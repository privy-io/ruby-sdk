# frozen_string_literal: true

module Privy
  module Models
    class EarnIncentiveClaimActionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :id, String

      # @!attribute chain
      #   EVM chain name (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :chain, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute rewards
      #   Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      #
      #   @return [Array<Privy::Models::EarnIncetiveClaimRewardEntry>, nil]
      required :rewards,
               -> {
                 Privy::Internal::Type::ArrayOf[Privy::EarnIncetiveClaimRewardEntry]
               },
               nil?: true

      # @!attribute status
      #   Status of a wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionStatus]
      required :status, enum: -> { Privy::WalletActionStatus }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::EarnIncentiveClaimActionResponse::Type]
      required :type, enum: -> { Privy::EarnIncentiveClaimActionResponse::Type }

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason, nil]
      optional :failure_reason, -> { Privy::FailureReason }

      # @!attribute steps
      #   The steps of the wallet action. Only returned if `?include=steps` is provided.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::TvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>, nil]
      optional :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!method initialize(id:, chain:, created_at:, rewards:, status:, type:, wallet_id:, failure_reason: nil, steps: nil)
      #   Response for an earn incentive claim action.
      #
      #   @param id [String] The ID of the wallet action.
      #
      #   @param chain [String] EVM chain name (e.g. "base", "ethereum").
      #
      #   @param created_at [Time] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param rewards [Array<Privy::Models::EarnIncetiveClaimRewardEntry>, nil] Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      #
      #   @param status [Symbol, Privy::Models::WalletActionStatus] Status of a wallet action.
      #
      #   @param type [Symbol, Privy::Models::EarnIncentiveClaimActionResponse::Type]
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::TvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep, Privy::Models::CustodianTransactionWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

      # @see Privy::Models::EarnIncentiveClaimActionResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        EARN_INCENTIVE_CLAIM = :earn_incentive_claim

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
