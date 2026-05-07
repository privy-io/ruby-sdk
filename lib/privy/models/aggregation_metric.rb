# frozen_string_literal: true

module Privy
  module Models
    class AggregationMetric < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [String]
      required :field, String

      # @!attribute field_source
      #
      #   @return [String]
      required :field_source, String

      # @!attribute function
      #   The aggregation function to apply.
      #
      #   @return [Symbol, Privy::Models::AggregationMetric::Function]
      required :function, enum: -> { Privy::AggregationMetric::Function }

      # @!attribute abi
      #   A Solidity ABI definition for decoding smart contract calldata.
      #
      #   @return [Array<Privy::Models::AbiSchemaItem>, nil]
      optional :abi, -> { Privy::Internal::Type::ArrayOf[Privy::AbiSchemaItem] }

      # @!method initialize(field:, field_source:, function:, abi: nil)
      #   The metric configuration for an aggregation, defining what field/field_source to
      #   measure and the aggregation function to apply.
      #
      #   @param field [String]
      #
      #   @param field_source [String]
      #
      #   @param function [Symbol, Privy::Models::AggregationMetric::Function] The aggregation function to apply.
      #
      #   @param abi [Array<Privy::Models::AbiSchemaItem>] A Solidity ABI definition for decoding smart contract calldata.

      # The aggregation function to apply.
      #
      # @see Privy::Models::AggregationMetric#function
      module Function
        extend Privy::Internal::Type::Enum

        SUM = :sum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
