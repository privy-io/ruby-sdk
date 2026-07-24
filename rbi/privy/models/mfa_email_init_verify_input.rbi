# typed: strong

module Privy
  module Models
    class MfaEmailInitVerifyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaEmailInitVerifyInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::MfaEmailInitVerifyInput::Action::OrSymbol) }
      attr_accessor :action

      # Input for verifying email MFA.
      sig do
        params(
          action: Privy::MfaEmailInitVerifyInput::Action::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(action:)
      end

      sig do
        override.returns(
          { action: Privy::MfaEmailInitVerifyInput::Action::OrSymbol }
        )
      end
      def to_hash
      end

      module Action
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::MfaEmailInitVerifyInput::Action) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFY =
          T.let(:verify, Privy::MfaEmailInitVerifyInput::Action::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::MfaEmailInitVerifyInput::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
