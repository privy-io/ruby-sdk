# typed: strong

module Privy
  module Models
    class AggregationWindow < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AggregationWindow, Privy::Internal::AnyHash)
        end

      # Duration of the rolling window in seconds (1-72 hours).
      sig { returns(Integer) }
      attr_accessor :seconds

      sig { returns(Privy::AggregationWindow::Type::OrSymbol) }
      attr_accessor :type

      # The time window configuration for an aggregation.
      sig do
        params(
          seconds: Integer,
          type: Privy::AggregationWindow::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Duration of the rolling window in seconds (1-72 hours).
        seconds:,
        type:
      )
      end

      sig do
        override.returns(
          { seconds: Integer, type: Privy::AggregationWindow::Type::OrSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AggregationWindow::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ROLLING = T.let(:rolling, Privy::AggregationWindow::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AggregationWindow::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
