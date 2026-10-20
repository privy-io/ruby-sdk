# frozen_string_literal: true

module Privy
  module Models
    # The wallet chain types supported in digital asset accounts.
    module AccountWalletChainType
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::AccountWalletChainType::ETHEREUM }

      variant const: -> { Privy::Models::AccountWalletChainType::SOLANA }

      variant const: -> { Privy::Models::AccountWalletChainType::TRON }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::AccountWalletChainType::TaggedSymbol, String) }
      end

      # @!group

      ETHEREUM = :ethereum
      SOLANA = :solana
      TRON = :tron

      # @!endgroup
    end
  end
end
