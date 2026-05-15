# frozen_string_literal: true

module Privy
  module Models
    class SuiTransactionCommandCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::SuiTransactionCommandCondition::Field]
      required :field, enum: -> { Privy::SuiTransactionCommandCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SuiTransactionCommandCondition::FieldSource]
      required :field_source, enum: -> { Privy::SuiTransactionCommandCondition::FieldSource }

      # @!attribute operator
      #   Operator to use for SUI transaction command conditions. Only 'eq' and 'in' are
      #   supported for command names.
      #
      #   @return [Symbol, Privy::Models::SuiTransactionCommandOperator]
      required :operator, enum: -> { Privy::SuiTransactionCommandOperator }

      # @!attribute value
      #   Command name(s) to match. Must be one of: 'TransferObjects', 'SplitCoins',
      #   'MergeCoins'
      #
      #   @return [Symbol, Privy::Models::SuiCommandName, Array<Symbol, Privy::Models::SuiCommandName>]
      required :value, union: -> { Privy::SuiTransactionCommandCondition::Value }

      # @!method initialize(field:, field_source:, operator:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SuiTransactionCommandCondition} for more details.
      #
      #   SUI transaction command attributes, enables allowlisting specific command types.
      #   Allowed commands: 'TransferObjects', 'SplitCoins', 'MergeCoins'. Only 'eq' and
      #   'in' operators are supported.
      #
      #   @param field [Symbol, Privy::Models::SuiTransactionCommandCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::SuiTransactionCommandCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::SuiTransactionCommandOperator] Operator to use for SUI transaction command conditions. Only 'eq' and 'in' are s
      #
      #   @param value [Symbol, Privy::Models::SuiCommandName, Array<Symbol, Privy::Models::SuiCommandName>] Command name(s) to match. Must be one of: 'TransferObjects', 'SplitCoins', 'Merg

      # @see Privy::Models::SuiTransactionCommandCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        COMMAND_NAME = :commandName

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SuiTransactionCommandCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SUI_TRANSACTION_COMMAND = :sui_transaction_command

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Command name(s) to match. Must be one of: 'TransferObjects', 'SplitCoins',
      # 'MergeCoins'
      #
      # @see Privy::Models::SuiTransactionCommandCondition#value
      module Value
        extend Privy::Internal::Type::Union

        # SUI transaction commands allowlist for raw_sign endpoint policy evaluation
        variant enum: -> { Privy::SuiCommandName }

        variant -> { Privy::Models::SuiTransactionCommandCondition::Value::SuiCommandNameArray }

        # @!method self.variants
        #   @return [Array(Symbol, Privy::Models::SuiCommandName, Array<Symbol, Privy::Models::SuiCommandName>)]

        # @type [Privy::Internal::Type::Converter]
        SuiCommandNameArray = Privy::Internal::Type::ArrayOf[enum: -> { Privy::SuiCommandName }]
      end
    end
  end
end
