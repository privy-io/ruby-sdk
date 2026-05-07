# typed: strong

module Privy
  module Models
    class TotpMfaMethod < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::TotpMfaMethod, Privy::Internal::AnyHash) }

      sig { returns(Privy::TotpMfaMethod::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # A TOTP MFA method.
      sig do
        params(
          type: Privy::TotpMfaMethod::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(type:, verified_at:)
      end

      sig do
        override.returns(
          { type: Privy::TotpMfaMethod::Type::TaggedSymbol, verified_at: Float }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::TotpMfaMethod::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTP = T.let(:totp, Privy::TotpMfaMethod::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::TotpMfaMethod::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
