# typed: strong

module Privy
  module Models
    class TypedDataTypeFieldInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TypedDataTypeFieldInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :type

      # A single field definition in an EIP-712 typed data type.
      sig { params(name: String, type: String).returns(T.attached_class) }
      def self.new(name:, type:)
      end

      sig { override.returns({ name: String, type: String }) }
      def to_hash
      end
    end
  end
end
