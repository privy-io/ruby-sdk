# typed: strong

module Privy
  module Models
    # The type of SIWS message being signed.
    module SiwsMessageType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SiwsMessageType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRANSACTION = T.let(:transaction, Privy::SiwsMessageType::TaggedSymbol)
      PLAIN = T.let(:plain, Privy::SiwsMessageType::TaggedSymbol)
      OFFCHAIN_MESSAGE =
        T.let(:"offchain-message", Privy::SiwsMessageType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SiwsMessageType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
