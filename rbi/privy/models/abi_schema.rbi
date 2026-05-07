# typed: strong

module Privy
  module Models
    class AbiSchemaItem < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AbiSchemaItem, Privy::Internal::AnyHash) }

      sig { returns(Privy::AbiSchemaItem::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :anonymous

      sig { params(anonymous: T::Boolean).void }
      attr_writer :anonymous

      sig { returns(T.nilable(T::Array[Privy::AbiParameter])) }
      attr_reader :inputs

      sig { params(inputs: T::Array[Privy::AbiParameter::OrHash]).void }
      attr_writer :inputs

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(T::Array[Privy::AbiParameter])) }
      attr_reader :outputs

      sig { params(outputs: T::Array[Privy::AbiParameter::OrHash]).void }
      attr_writer :outputs

      sig do
        returns(T.nilable(Privy::AbiSchemaItem::StateMutability::OrSymbol))
      end
      attr_reader :state_mutability

      sig do
        params(
          state_mutability: Privy::AbiSchemaItem::StateMutability::OrSymbol
        ).void
      end
      attr_writer :state_mutability

      sig do
        params(
          type: Privy::AbiSchemaItem::Type::OrSymbol,
          anonymous: T::Boolean,
          inputs: T::Array[Privy::AbiParameter::OrHash],
          name: String,
          outputs: T::Array[Privy::AbiParameter::OrHash],
          state_mutability: Privy::AbiSchemaItem::StateMutability::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        type:,
        anonymous: nil,
        inputs: nil,
        name: nil,
        outputs: nil,
        state_mutability: nil
      )
      end

      sig do
        override.returns(
          {
            type: Privy::AbiSchemaItem::Type::OrSymbol,
            anonymous: T::Boolean,
            inputs: T::Array[Privy::AbiParameter],
            name: String,
            outputs: T::Array[Privy::AbiParameter],
            state_mutability: Privy::AbiSchemaItem::StateMutability::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AbiSchemaItem::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TYPE_FUNCTION =
          T.let(:function, Privy::AbiSchemaItem::Type::TaggedSymbol)
        TYPE_CONSTRUCTOR =
          T.let(:constructor, Privy::AbiSchemaItem::Type::TaggedSymbol)
        TYPE_EVENT = T.let(:event, Privy::AbiSchemaItem::Type::TaggedSymbol)
        TYPE_FALLBACK =
          T.let(:fallback, Privy::AbiSchemaItem::Type::TaggedSymbol)
        TYPE_RECEIVE = T.let(:receive, Privy::AbiSchemaItem::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::AbiSchemaItem::Type::TaggedSymbol])
        end
        def self.values
        end
      end

      module StateMutability
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AbiSchemaItem::StateMutability) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURE = T.let(:pure, Privy::AbiSchemaItem::StateMutability::TaggedSymbol)
        VIEW = T.let(:view, Privy::AbiSchemaItem::StateMutability::TaggedSymbol)
        NONPAYABLE =
          T.let(
            :nonpayable,
            Privy::AbiSchemaItem::StateMutability::TaggedSymbol
          )
        PAYABLE =
          T.let(:payable, Privy::AbiSchemaItem::StateMutability::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AbiSchemaItem::StateMutability::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end

    AbiSchema =
      T.let(
        Privy::Internal::Type::ArrayOf[Privy::AbiSchemaItem],
        Privy::Internal::Type::Converter
      )
  end
end
