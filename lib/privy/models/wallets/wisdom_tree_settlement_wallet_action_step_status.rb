# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Status of a WisdomTree settlement step in a wallet action.
      module WisdomTreeSettlementWalletActionStepStatus
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus::PREPARING }

        variant const: -> { Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus::QUEUED }

        variant const: -> { Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus::PENDING }

        variant const: -> { Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus::CONFIRMED }

        variant const: -> { Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus::REJECTED }

        variant const: -> { Privy::Models::Wallets::WisdomTreeSettlementWalletActionStepStatus::FAILED }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol, String) }
        end

        # @!group

        PREPARING = :preparing
        QUEUED = :queued
        PENDING = :pending
        CONFIRMED = :confirmed
        REJECTED = :rejected
        FAILED = :failed

        # @!endgroup
      end
    end
  end
end
