# frozen_string_literal: true

module Privy
  module Models
    class Ethereum7702AuthorizationCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::Ethereum7702AuthorizationCondition::Field]
      required :field, enum: -> { Privy::Ethereum7702AuthorizationCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::Ethereum7702AuthorizationCondition::FieldSource]
      required :field_source, enum: -> { Privy::Ethereum7702AuthorizationCondition::FieldSource }

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
      #   {Privy::Models::Ethereum7702AuthorizationCondition} for more details.
      #
      #   Allowed contract addresses for eth_sign7702Authorization requests.
      #
      #   @param field [Symbol, Privy::Models::Ethereum7702AuthorizationCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::Ethereum7702AuthorizationCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::Ethereum7702AuthorizationCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        CONTRACT = :contract

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::Ethereum7702AuthorizationCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        ETHEREUM_7702_AUTHORIZATION = :ethereum_7702_authorization

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
