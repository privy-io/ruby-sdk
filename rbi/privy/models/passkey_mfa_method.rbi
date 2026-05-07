# typed: strong

module Privy
  module Models
    class PasskeyMfaMethod < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyMfaMethod, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::PasskeyMfaMethod::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # A Passkey MFA method.
      sig do
        params(
          type: Privy::PasskeyMfaMethod::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(type:, verified_at:)
      end

      sig do
        override.returns(
          {
            type: Privy::PasskeyMfaMethod::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::PasskeyMfaMethod::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PASSKEY = T.let(:passkey, Privy::PasskeyMfaMethod::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PasskeyMfaMethod::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
