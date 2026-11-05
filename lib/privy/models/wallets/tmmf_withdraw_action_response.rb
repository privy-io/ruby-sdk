# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfWithdrawActionResponse < Privy::Internal::Type::BaseModel
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

        # @!attribute status
        #   Status of a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::WalletActionStatus]
        required :status, enum: -> { Privy::Wallets::WalletActionStatus }

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::TmmfWithdrawActionResponse::Type]
        required :type, enum: -> { Privy::Wallets::TmmfWithdrawActionResponse::Type }

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

        # @!attribute reference_id
        #   Developer-provided reference ID, if one was included in the request.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!attribute steps
        #   The steps of the wallet action. Only returned if `?include=steps` is provided.
        #
        #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep>, nil]
        optional :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

        # @!method initialize(id:, created_at:, status:, type:, wallet_id:, failure_reason: nil, reference_id: nil, steps: nil)
        #   A tokenized money market fund (tMMF) withdrawal.
        #
        #   @param id [String] The ID of the wallet action.
        #
        #   @param created_at [Time] ISO 8601 timestamp of when the wallet action was created.
        #
        #   @param status [Symbol, Privy::Models::Wallets::WalletActionStatus] Status of a wallet action.
        #
        #   @param type [Symbol, Privy::Models::Wallets::TmmfWithdrawActionResponse::Type]
        #
        #   @param wallet_id [String] The ID of the wallet involved in the action.
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @param reference_id [String, nil] Developer-provided reference ID, if one was included in the request.
        #
        #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep>] The steps of the wallet action. Only returned if `?include=steps` is provided.

        # @see Privy::Models::Wallets::TmmfWithdrawActionResponse#type
        module Type
          extend Privy::Internal::Type::Enum

          TMMF_WITHDRAW = :tmmf_withdraw

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
