# typed: strong

module Privy
  module Models
    class MfaEmailInitEnrollInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaEmailInitEnrollInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::MfaEmailInitEnrollInput::Action::OrSymbol) }
      attr_accessor :action

      sig { returns(String) }
      attr_accessor :email_address

      # Input for enrolling email MFA.
      sig do
        params(
          action: Privy::MfaEmailInitEnrollInput::Action::OrSymbol,
          email_address: String
        ).returns(T.attached_class)
      end
      def self.new(action:, email_address:)
      end

      sig do
        override.returns(
          {
            action: Privy::MfaEmailInitEnrollInput::Action::OrSymbol,
            email_address: String
          }
        )
      end
      def to_hash
      end

      module Action
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::MfaEmailInitEnrollInput::Action) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLL =
          T.let(:enroll, Privy::MfaEmailInitEnrollInput::Action::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::MfaEmailInitEnrollInput::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
