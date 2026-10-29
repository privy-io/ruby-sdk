# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # External provider that fills an external transaction step.
      module ExternalTransactionStepProvider
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::ExternalTransactionStepProvider::RELAY }

        variant const: -> { Privy::Models::Wallets::ExternalTransactionStepProvider::TEMPO_ROUTES }

        variant const: -> { Privy::Models::Wallets::ExternalTransactionStepProvider::BRIDGE }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::ExternalTransactionStepProvider::TaggedSymbol, String) }
        end

        # @!group

        RELAY = :relay
        TEMPO_ROUTES = :tempo_routes
        BRIDGE = :bridge

        # @!endgroup
      end
    end
  end
end
