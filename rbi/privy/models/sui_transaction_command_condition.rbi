# typed: strong

module Privy
  module Models
    class SuiTransactionCommandCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SuiTransactionCommandCondition, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SuiTransactionCommandCondition::Field::OrSymbol) }
      attr_accessor :field

      sig do
        returns(Privy::SuiTransactionCommandCondition::FieldSource::OrSymbol)
      end
      attr_accessor :field_source

      # Operator to use for SUI transaction command conditions. Only 'eq' and 'in' are
      # supported for command names.
      sig { returns(Privy::SuiTransactionCommandOperator::OrSymbol) }
      attr_accessor :operator

      # Command name(s) to match. Must be one of: 'TransferObjects', 'SplitCoins',
      # 'MergeCoins'
      sig do
        returns(
          T.any(
            Privy::SuiCommandName::OrSymbol,
            T::Array[Privy::SuiCommandName::OrSymbol]
          )
        )
      end
      attr_accessor :value

      # SUI transaction command attributes, enables allowlisting specific command types.
      # Allowed commands: 'TransferObjects', 'SplitCoins', 'MergeCoins'. Only 'eq' and
      # 'in' operators are supported.
      sig do
        params(
          field: Privy::SuiTransactionCommandCondition::Field::OrSymbol,
          field_source:
            Privy::SuiTransactionCommandCondition::FieldSource::OrSymbol,
          operator: Privy::SuiTransactionCommandOperator::OrSymbol,
          value:
            T.any(
              Privy::SuiCommandName::OrSymbol,
              T::Array[Privy::SuiCommandName::OrSymbol]
            )
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # Operator to use for SUI transaction command conditions. Only 'eq' and 'in' are
        # supported for command names.
        operator:,
        # Command name(s) to match. Must be one of: 'TransferObjects', 'SplitCoins',
        # 'MergeCoins'
        value:
      )
      end

      sig do
        override.returns(
          {
            field: Privy::SuiTransactionCommandCondition::Field::OrSymbol,
            field_source:
              Privy::SuiTransactionCommandCondition::FieldSource::OrSymbol,
            operator: Privy::SuiTransactionCommandOperator::OrSymbol,
            value:
              T.any(
                Privy::SuiCommandName::OrSymbol,
                T::Array[Privy::SuiCommandName::OrSymbol]
              )
          }
        )
      end
      def to_hash
      end

      module Field
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SuiTransactionCommandCondition::Field)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMAND_NAME =
          T.let(
            :commandName,
            Privy::SuiTransactionCommandCondition::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SuiTransactionCommandCondition::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module FieldSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SuiTransactionCommandCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUI_TRANSACTION_COMMAND =
          T.let(
            :sui_transaction_command,
            Privy::SuiTransactionCommandCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SuiTransactionCommandCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Command name(s) to match. Must be one of: 'TransferObjects', 'SplitCoins',
      # 'MergeCoins'
      module Value
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::SuiCommandName::TaggedSymbol,
              T::Array[Privy::SuiCommandName::TaggedSymbol]
            )
          end

        sig do
          override.returns(
            T::Array[Privy::SuiTransactionCommandCondition::Value::Variants]
          )
        end
        def self.variants
        end

        SuiCommandNameArray =
          T.let(
            Privy::Internal::Type::ArrayOf[enum: Privy::SuiCommandName],
            Privy::Internal::Type::Converter
          )
      end
    end
  end
end
