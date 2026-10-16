# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Type of a wallet action step.
      module WalletActionStepType
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::EVM_TRANSACTION }

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::EVM_USER_OPERATION }

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::SVM_TRANSACTION }

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::TVM_TRANSACTION }

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::EXTERNAL_TRANSACTION }

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::CUSTODIAN_TRANSACTION }

        variant const: -> { Privy::Models::Wallets::WalletActionStepType::TEMPO_ZONE_SETTLEMENT }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::WalletActionStepType::TaggedSymbol, String) }
        end

        # @!group

        EVM_TRANSACTION = :evm_transaction
        EVM_USER_OPERATION = :evm_user_operation
        SVM_TRANSACTION = :svm_transaction
        TVM_TRANSACTION = :tvm_transaction
        EXTERNAL_TRANSACTION = :external_transaction
        CUSTODIAN_TRANSACTION = :custodian_transaction
        TEMPO_ZONE_SETTLEMENT = :tempo_zone_settlement

        # @!endgroup
      end
    end

    WalletActionStepType = Wallets::WalletActionStepType
  end
end
