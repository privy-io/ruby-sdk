# typed: strong

module Privy
  module Models
    class RollingAggregationWindow < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RollingAggregationWindow, Privy::Internal::AnyHash)
        end

      # Duration of the rolling window in seconds (1-72 hours).
      sig { returns(Integer) }
      attr_accessor :seconds

      sig { returns(Privy::RollingAggregationWindow::Type::OrSymbol) }
      attr_accessor :type

      # A rolling time window defined by a duration in seconds.
      sig do
        params(
          seconds: Integer,
          type: Privy::RollingAggregationWindow::Type::OrSymbol
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
          {
            seconds: Integer,
            type: Privy::RollingAggregationWindow::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RollingAggregationWindow::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ROLLING =
          T.let(:rolling, Privy::RollingAggregationWindow::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RollingAggregationWindow::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
