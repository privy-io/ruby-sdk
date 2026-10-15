# frozen_string_literal: true

module Privy
  module Models
    # Type of intent.
    module IntentType
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::IntentType::CONDITION_SET_ITEM }

      variant const: -> { Privy::Models::IntentType::KEY_QUORUM }

      variant const: -> { Privy::Models::IntentType::POLICY }

      variant const: -> { Privy::Models::IntentType::RAW_SIGN }

      variant const: -> { Privy::Models::IntentType::RULE }

      variant const: -> { Privy::Models::IntentType::RPC }

      variant const: -> { Privy::Models::IntentType::TRANSFER }

      variant const: -> { Privy::Models::IntentType::WALLET }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::IntentType::TaggedSymbol, String) }
      end

      # @!group

      CONDITION_SET_ITEM = :CONDITION_SET_ITEM
      KEY_QUORUM = :KEY_QUORUM
      POLICY = :POLICY
      RAW_SIGN = :RAW_SIGN
      RULE = :RULE
      RPC = :RPC
      TRANSFER = :TRANSFER
      WALLET = :WALLET

      # @!endgroup
    end
  end
end
