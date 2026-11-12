# frozen_string_literal: true

module Privy
  module Models
    # How the app enforces multi-factor authentication for wallet operations.
    module TransactionMfaEnforcementMode
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::TransactionMfaEnforcementMode::POLICY_BASED }

      variant const: -> { Privy::Models::TransactionMfaEnforcementMode::ALL_WALLET_OPERATIONS }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::TransactionMfaEnforcementMode::TaggedSymbol, String) }
      end

      # @!group

      POLICY_BASED = :POLICY_BASED
      ALL_WALLET_OPERATIONS = :ALL_WALLET_OPERATIONS

      # @!endgroup
    end
  end
end
