# typed: strong

module Privy
  module Models
    # The action to take on the device authorization request.
    module DeviceVerifyAction
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::DeviceVerifyAction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      APPROVE = T.let(:approve, Privy::DeviceVerifyAction::TaggedSymbol)
      DENY = T.let(:deny, Privy::DeviceVerifyAction::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::DeviceVerifyAction::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
