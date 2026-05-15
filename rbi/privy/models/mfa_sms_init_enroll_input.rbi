# typed: strong

module Privy
  module Models
    class MfaSMSInitEnrollInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaSMSInitEnrollInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::MfaSMSInitEnrollInput::Action::OrSymbol) }
      attr_accessor :action

      sig { returns(String) }
      attr_accessor :phone_number

      # Input for enrolling SMS MFA.
      sig do
        params(
          action: Privy::MfaSMSInitEnrollInput::Action::OrSymbol,
          phone_number: String
        ).returns(T.attached_class)
      end
      def self.new(action:, phone_number:)
      end

      sig do
        override.returns(
          {
            action: Privy::MfaSMSInitEnrollInput::Action::OrSymbol,
            phone_number: String
          }
        )
      end
      def to_hash
      end

      module Action
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::MfaSMSInitEnrollInput::Action) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLL =
          T.let(:enroll, Privy::MfaSMSInitEnrollInput::Action::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::MfaSMSInitEnrollInput::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
