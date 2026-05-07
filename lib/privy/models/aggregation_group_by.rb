# frozen_string_literal: true

module Privy
  module Models
    class AggregationGroupBy < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [String]
      required :field, String

      # @!attribute field_source
      #
      #   @return [String]
      required :field_source, String

      # @!attribute abi
      #   A Solidity ABI definition for decoding smart contract calldata.
      #
      #   @return [Array<Privy::Models::AbiSchemaItem>, nil]
      optional :abi, -> { Privy::Internal::Type::ArrayOf[Privy::AbiSchemaItem] }

      # @!method initialize(field:, field_source:, abi: nil)
      #   A grouping configuration for an aggregation. Maximum of 2 group_by fields
      #   allowed.
      #
      #   @param field [String]
      #
      #   @param field_source [String]
      #
      #   @param abi [Array<Privy::Models::AbiSchemaItem>] A Solidity ABI definition for decoding smart contract calldata.
    end
  end
end
