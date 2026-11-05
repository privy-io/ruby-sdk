# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # The fund provider.
      module TmmfProvider
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::TmmfProvider::WISDOMTREE }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::TmmfProvider::TaggedSymbol, String) }
        end

        # @!group

        WISDOMTREE = :wisdomtree

        # @!endgroup
      end
    end
  end
end
