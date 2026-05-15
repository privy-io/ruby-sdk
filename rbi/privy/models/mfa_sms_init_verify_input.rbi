# typed: strong

module Privy
  module Models
    class MfaSMSInitVerifyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaSMSInitVerifyInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::MfaSMSInitVerifyInput::Action::OrSymbol) }
      attr_accessor :action

      # Input for verifying SMS MFA.
      sig do
        params(action: Privy::MfaSMSInitVerifyInput::Action::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(action:)
      end

      sig do
        override.returns(
          { action: Privy::MfaSMSInitVerifyInput::Action::OrSymbol }
        )
      end
      def to_hash
      end

      module Action
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::MfaSMSInitVerifyInput::Action) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFY =
          T.let(:verify, Privy::MfaSMSInitVerifyInput::Action::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::MfaSMSInitVerifyInput::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
