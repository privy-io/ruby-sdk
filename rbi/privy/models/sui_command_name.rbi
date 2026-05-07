# typed: strong

module Privy
  module Models
    # SUI transaction commands allowlist for raw_sign endpoint policy evaluation
    module SuiCommandName
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SuiCommandName) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRANSFER_OBJECTS =
        T.let(:TransferObjects, Privy::SuiCommandName::TaggedSymbol)
      SPLIT_COINS = T.let(:SplitCoins, Privy::SuiCommandName::TaggedSymbol)
      MERGE_COINS = T.let(:MergeCoins, Privy::SuiCommandName::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SuiCommandName::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
