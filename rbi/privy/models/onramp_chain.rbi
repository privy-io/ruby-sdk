# typed: strong

module Privy
  module Models
    # Supported blockchain chains for onramp and offramp.
    module OnrampChain
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OnrampChain) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM = T.let(:ethereum, Privy::OnrampChain::TaggedSymbol)
      BASE = T.let(:base, Privy::OnrampChain::TaggedSymbol)
      ARBITRUM = T.let(:arbitrum, Privy::OnrampChain::TaggedSymbol)
      POLYGON = T.let(:polygon, Privy::OnrampChain::TaggedSymbol)
      OPTIMISM = T.let(:optimism, Privy::OnrampChain::TaggedSymbol)

      sig { override.returns(T::Array[Privy::OnrampChain::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
