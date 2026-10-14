# typed: strong

module Privy
  module Models
    class DenylistEmailInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistEmailInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::DenylistEmailInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Denylist input for an email address, which also blocks its `+` and `.` variants.
      sig do
        params(
          type: Privy::DenylistEmailInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          { type: Privy::DenylistEmailInput::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::DenylistEmailInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL = T.let(:email, Privy::DenylistEmailInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::DenylistEmailInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
