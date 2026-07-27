# typed: strong

module Privy
  module Models
    class EmailMfaMethod < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::EmailMfaMethod, Privy::Internal::AnyHash) }

      sig { returns(Privy::EmailMfaMethod::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # An Email MFA method.
      sig do
        params(
          type: Privy::EmailMfaMethod::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(type:, verified_at:)
      end

      sig do
        override.returns(
          {
            type: Privy::EmailMfaMethod::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::EmailMfaMethod::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL = T.let(:email, Privy::EmailMfaMethod::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::EmailMfaMethod::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
