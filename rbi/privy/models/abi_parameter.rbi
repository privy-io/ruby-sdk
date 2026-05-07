# typed: strong

module Privy
  module Models
    class AbiParameter < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AbiParameter, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :type

      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :components

      sig { params(components: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :components

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :indexed

      sig { params(indexed: T::Boolean).void }
      attr_writer :indexed

      sig { returns(T.nilable(String)) }
      attr_reader :internal_type

      sig { params(internal_type: String).void }
      attr_writer :internal_type

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # A parameter in a Solidity ABI function or event definition.
      sig do
        params(
          type: String,
          components: T::Array[T::Hash[Symbol, T.anything]],
          indexed: T::Boolean,
          internal_type: String,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        type:,
        components: nil,
        indexed: nil,
        internal_type: nil,
        name: nil
      )
      end

      sig do
        override.returns(
          {
            type: String,
            components: T::Array[T::Hash[Symbol, T.anything]],
            indexed: T::Boolean,
            internal_type: String,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
