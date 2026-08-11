# frozen_string_literal: true

module Privy
  module Models
    # Chains supported for transaction history queries.
    module TransactionChainNameInput
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::TransactionChainNameInput::ETHEREUM }

      variant const: -> { Privy::Models::TransactionChainNameInput::ARBITRUM }

      variant const: -> { Privy::Models::TransactionChainNameInput::AVALANCHE }

      variant const: -> { Privy::Models::TransactionChainNameInput::BASE }

      variant const: -> { Privy::Models::TransactionChainNameInput::BASE_SEPOLIA }

      variant const: -> { Privy::Models::TransactionChainNameInput::BSC }

      variant const: -> { Privy::Models::TransactionChainNameInput::TEMPO }

      variant const: -> { Privy::Models::TransactionChainNameInput::LINEA }

      variant const: -> { Privy::Models::TransactionChainNameInput::OPTIMISM }

      variant const: -> { Privy::Models::TransactionChainNameInput::POLYGON }

      variant const: -> { Privy::Models::TransactionChainNameInput::SOLANA }

      variant const: -> { Privy::Models::TransactionChainNameInput::SEPOLIA }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::TransactionChainNameInput::TaggedSymbol, String) }
      end

      # @!group

      ETHEREUM = :ethereum
      ARBITRUM = :arbitrum
      AVALANCHE = :avalanche
      BASE = :base
      BASE_SEPOLIA = :base_sepolia
      BSC = :bsc
      TEMPO = :tempo
      LINEA = :linea
      OPTIMISM = :optimism
      POLYGON = :polygon
      SOLANA = :solana
      SEPOLIA = :sepolia

      # @!endgroup
    end
  end
end
