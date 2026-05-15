# typed: strong

module Privy
  module Models
    # The action to take when a policy rule matches.
    module PolicyAction
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::PolicyAction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ALLOW = T.let(:ALLOW, Privy::PolicyAction::TaggedSymbol)
      DENY = T.let(:DENY, Privy::PolicyAction::TaggedSymbol)

      sig { override.returns(T::Array[Privy::PolicyAction::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
