# typed: strong

module Privy
  module Models
    class SMSMfaMethod < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SMSMfaMethod, Privy::Internal::AnyHash) }

      sig { returns(Privy::SMSMfaMethod::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # A SMS MFA method.
      sig do
        params(
          type: Privy::SMSMfaMethod::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(type:, verified_at:)
      end

      sig do
        override.returns(
          { type: Privy::SMSMfaMethod::Type::TaggedSymbol, verified_at: Float }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SMSMfaMethod::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS = T.let(:sms, Privy::SMSMfaMethod::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::SMSMfaMethod::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
