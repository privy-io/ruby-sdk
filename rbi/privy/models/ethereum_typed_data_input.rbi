# typed: strong

module Privy
  module Models
    class EthereumTypedDataInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumTypedDataInput, Privy::Internal::AnyHash)
        end

      # The domain parameters for EIP-712 typed data signing.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :domain

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :primary_type

      # The type definitions for EIP-712 typed data signing.
      sig { returns(T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput]]) }
      attr_accessor :types

      # EIP-712 typed data object.
      sig do
        params(
          domain: T::Hash[Symbol, T.anything],
          message: T::Hash[Symbol, T.anything],
          primary_type: String,
          types:
            T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput::OrHash]]
        ).returns(T.attached_class)
      end
      def self.new(
        # The domain parameters for EIP-712 typed data signing.
        domain:,
        message:,
        primary_type:,
        # The type definitions for EIP-712 typed data signing.
        types:
      )
      end

      sig do
        override.returns(
          {
            domain: T::Hash[Symbol, T.anything],
            message: T::Hash[Symbol, T.anything],
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
