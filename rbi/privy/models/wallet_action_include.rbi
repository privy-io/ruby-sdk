# typed: strong

module Privy
  module Models
    # Expandable relations to include on a wallet action response.
    module WalletActionInclude
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletActionInclude) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STEPS = T.let(:steps, Privy::WalletActionInclude::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::WalletActionInclude::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
