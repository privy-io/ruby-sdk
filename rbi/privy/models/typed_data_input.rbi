# typed: strong

module Privy
  module Models
    class TypedDataInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::TypedDataInput, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :primary_type

      # The type definitions for EIP-712 typed data signing.
      sig { returns(T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput]]) }
      attr_accessor :types

      # The typed data structure containing EIP-712 types and the primary type for typed
      # data message policy conditions.
      sig do
        params(
          primary_type: String,
          types:
            T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput::OrHash]]
        ).returns(T.attached_class)
      end
      def self.new(
        primary_type:,
        # The type definitions for EIP-712 typed data signing.
        types:
      )
      end

      sig do
        override.returns(
          {
            primary_type: String,
            types: T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput]]
          }
        )
      end
      def to_hash
      end
    end
  end
end
