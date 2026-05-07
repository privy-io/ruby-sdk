# typed: strong

module Privy
  module Models
    class AggregationMetric < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AggregationMetric, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :field

      sig { returns(String) }
      attr_accessor :field_source

      # The aggregation function to apply.
      sig { returns(Privy::AggregationMetric::Function::OrSymbol) }
      attr_accessor :function

      # A Solidity ABI definition for decoding smart contract calldata.
      sig { returns(T.nilable(T::Array[Privy::AbiSchemaItem])) }
      attr_reader :abi

      sig { params(abi: T::Array[Privy::AbiSchemaItem::OrHash]).void }
      attr_writer :abi

      # The metric configuration for an aggregation, defining what field/field_source to
      # measure and the aggregation function to apply.
      sig do
        params(
          field: String,
          field_source: String,
          function: Privy::AggregationMetric::Function::OrSymbol,
          abi: T::Array[Privy::AbiSchemaItem::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # The aggregation function to apply.
        function:,
        # A Solidity ABI definition for decoding smart contract calldata.
        abi: nil
      )
      end

      sig do
        override.returns(
          {
            field: String,
            field_source: String,
            function: Privy::AggregationMetric::Function::OrSymbol,
            abi: T::Array[Privy::AbiSchemaItem]
          }
        )
      end
      def to_hash
      end

      # The aggregation function to apply.
      module Function
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AggregationMetric::Function) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUM = T.let(:sum, Privy::AggregationMetric::Function::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AggregationMetric::Function::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
