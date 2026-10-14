# typed: strong

module Privy
  module Models
    class DenylistPhoneInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistPhoneInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::DenylistPhoneInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Denylist input for a phone number.
      sig do
        params(
          type: Privy::DenylistPhoneInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          { type: Privy::DenylistPhoneInput::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::DenylistPhoneInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHONE = T.let(:phone, Privy::DenylistPhoneInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::DenylistPhoneInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
