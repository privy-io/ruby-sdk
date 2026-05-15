# typed: strong

module Privy
  module Models
    # Type of intent.
    module IntentType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::IntentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      KEY_QUORUM = T.let(:KEY_QUORUM, Privy::IntentType::TaggedSymbol)
      POLICY = T.let(:POLICY, Privy::IntentType::TaggedSymbol)
      RULE = T.let(:RULE, Privy::IntentType::TaggedSymbol)
      RPC = T.let(:RPC, Privy::IntentType::TaggedSymbol)
      TRANSFER = T.let(:TRANSFER, Privy::IntentType::TaggedSymbol)
      WALLET = T.let(:WALLET, Privy::IntentType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::IntentType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
