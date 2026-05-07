# frozen_string_literal: true

module Privy
  module Models
    class EthereumTransactionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::EthereumTransactionCondition::Field]
      required :field, enum: -> { Privy::EthereumTransactionCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::EthereumTransactionCondition::FieldSource]
      required :field_source, enum: -> { Privy::EthereumTransactionCondition::FieldSource }

      # @!attribute operator
      #   Operator to use for policy conditions.
      #
      #   @return [Symbol, Privy::Models::ConditionOperator]
      required :operator, enum: -> { Privy::ConditionOperator }

      # @!attribute value
      #   Value to compare against in a policy condition. Can be a single string or an
      #   array of strings.
      #
      #   @return [String, Array<String>]
      required :value, union: -> { Privy::ConditionValue }

      # @!method initialize(field:, field_source:, operator:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumTransactionCondition} for more details.
      #
      #   The verbatim Ethereum transaction object in an eth_signTransaction or
      #   eth_sendTransaction request.
      #
      #   @param field [Symbol, Privy::Models::EthereumTransactionCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::EthereumTransactionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::EthereumTransactionCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        TO = :to
        VALUE = :value
        CHAIN_ID = :chain_id

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumTransactionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        ETHEREUM_TRANSACTION = :ethereum_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
