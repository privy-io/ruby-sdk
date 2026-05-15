# typed: strong

module Privy
  module Models
    class AggregationGroupBy < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AggregationGroupBy, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :field

      sig { returns(String) }
      attr_accessor :field_source

      # A Solidity ABI definition for decoding smart contract calldata.
      sig { returns(T.nilable(T::Array[Privy::AbiSchemaItem])) }
      attr_reader :abi

      sig { params(abi: T::Array[Privy::AbiSchemaItem::OrHash]).void }
      attr_writer :abi

      # A grouping configuration for an aggregation. Maximum of 2 group_by fields
      # allowed.
      sig do
        params(
          field: String,
          field_source: String,
          abi: T::Array[Privy::AbiSchemaItem::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # A Solidity ABI definition for decoding smart contract calldata.
        abi: nil
      )
      end

      sig do
        override.returns(
          {
            field: String,
            field_source: String,
            abi: T::Array[Privy::AbiSchemaItem]
          }
        )
      end
      def to_hash
      end
    end
  end
end
