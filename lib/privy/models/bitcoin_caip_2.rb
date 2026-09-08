# frozen_string_literal: true

module Privy
  module Models
    # Bitcoin CAIP-2 chain identifier (e.g.
    # "bip122:000000000019d6689c085ae165831e93").
    module BitcoinCaip2
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::BitcoinCaip2::BIP122_MAINNET }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::BitcoinCaip2::TaggedSymbol, String) }
      end

      # @!group

      BIP122_MAINNET = :"bip122:mainnet"

      # @!endgroup
    end
  end
end
