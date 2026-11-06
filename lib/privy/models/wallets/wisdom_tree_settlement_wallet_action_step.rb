# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementWalletActionStep < Privy::Internal::Type::BaseModel
        # @!attribute caip2
        #   CAIP-2 identifier of the chain the order trades on.
        #
        #   @return [String, nil]
        required :caip2, String, nil?: true

        # @!attribute order_type
        #   How a tMMF order fills: `secondary` from the provider pool in minutes, or
        #   `primary` at the next NAV strike.
        #
        #   @return [Symbol, Privy::Models::Wallets::TmmfOrderType, nil]
        required :order_type, enum: -> { Privy::Wallets::TmmfOrderType }, nil?: true

        # @!attribute received
        #   What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
        #   withdrawal.
        #
        #   @return [Privy::Models::Wallets::WisdomTreeSettlementFundAmount, Privy::Models::Wallets::WisdomTreeSettlementWithdrawAssetAmount, nil]
        required :received, union: -> { Privy::Wallets::WisdomTreeSettlementReceivedAmount }, nil?: true

        # @!attribute requested
        #   What a tMMF order sends: the deposit asset for a deposit, fund shares for a
        #   withdrawal.
        #
        #   @return [Privy::Models::Wallets::WisdomTreeSettlementDepositAssetAmount, Privy::Models::Wallets::WisdomTreeSettlementFundAmount, nil]
        required :requested, union: -> { Privy::Wallets::WisdomTreeSettlementRequestedAmount }, nil?: true

        # @!attribute settlement_transaction_hash
        #   The transaction that delivered the received asset. Null until Privy verifies the
        #   settlement.
        #
        #   @return [String, nil]
        required :settlement_transaction_hash, String, nil?: true

        # @!attribute status
        #   Status of a WisdomTree settlement step in a wallet action.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus]
        required :status, union: -> { Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus }

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep::Type]
        required :type, enum: -> { Privy::Wallets::WisdomTreeSettlementWalletActionStep::Type }

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

        # @!method initialize(caip2:, order_type:, received:, requested:, settlement_transaction_hash:, status:, type:, failure_reason: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep} for more details.
        #
        #   A wallet action step representing the settlement of a tokenized money market
        #   fund (tMMF) order by WisdomTree.
        #
        #   @param caip2 [String, nil] CAIP-2 identifier of the chain the order trades on.
        #
        #   @param order_type [Symbol, Privy::Models::Wallets::TmmfOrderType, nil] How a tMMF order fills: `secondary` from the provider pool in minutes, or `prima
        #
        #   @param received [Privy::Models::Wallets::WisdomTreeSettlementFundAmount, Privy::Models::Wallets::WisdomTreeSettlementWithdrawAssetAmount, nil] What a tMMF order receives: fund shares for a deposit, the withdraw asset for a
        #
        #   @param requested [Privy::Models::Wallets::WisdomTreeSettlementDepositAssetAmount, Privy::Models::Wallets::WisdomTreeSettlementFundAmount, nil] What a tMMF order sends: the deposit asset for a deposit, fund shares for a with
        #
        #   @param settlement_transaction_hash [String, nil] The transaction that delivered the received asset. Null until Privy verifies the
        #
        #   @param status [Symbol, String, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus] Status of a WisdomTree settlement step in a wallet action.
        #
        #   @param type [Symbol, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep::Type]
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.

        # @see Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep#type
        module Type
          extend Privy::Internal::Type::Enum

          WISDOMTREE_SETTLEMENT = :wisdomtree_settlement

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
