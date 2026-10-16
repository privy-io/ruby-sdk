# typed: strong

module Privy
  module Models
    # Type of intent.
    module IntentType
      extend Privy::Internal::Type::Union

      Variants = T.type_alias { T.any(Privy::IntentType::TaggedSymbol, String) }

      sig { override.returns(T::Array[Privy::IntentType::Variants]) }
      def self.variants
      end

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::IntentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CONDITION_SET = T.let(:CONDITION_SET, Privy::IntentType::TaggedSymbol)
      CONDITION_SET_ITEM =
        T.let(:CONDITION_SET_ITEM, Privy::IntentType::TaggedSymbol)
      KEY_QUORUM = T.let(:KEY_QUORUM, Privy::IntentType::TaggedSymbol)
      POLICY = T.let(:POLICY, Privy::IntentType::TaggedSymbol)
      RAW_SIGN = T.let(:RAW_SIGN, Privy::IntentType::TaggedSymbol)
      RULE = T.let(:RULE, Privy::IntentType::TaggedSymbol)
      RPC = T.let(:RPC, Privy::IntentType::TaggedSymbol)
      TRANSFER = T.let(:TRANSFER, Privy::IntentType::TaggedSymbol)
      WALLET = T.let(:WALLET, Privy::IntentType::TaggedSymbol)
    end
  end
end
