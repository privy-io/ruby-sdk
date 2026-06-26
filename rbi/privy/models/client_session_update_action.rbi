# typed: strong

module Privy
  module Models
    # Instructs the client on how to handle tokens received from a session response.
    module ClientSessionUpdateAction
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::ClientSessionUpdateAction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SET = T.let(:set, Privy::ClientSessionUpdateAction::TaggedSymbol)
      IGNORE = T.let(:ignore, Privy::ClientSessionUpdateAction::TaggedSymbol)
      CLEAR = T.let(:clear, Privy::ClientSessionUpdateAction::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::ClientSessionUpdateAction::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
