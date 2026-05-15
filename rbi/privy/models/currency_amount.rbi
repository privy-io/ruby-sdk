# typed: strong

module Privy
  module Models
    class CurrencyAmount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::CurrencyAmount, Privy::Internal::AnyHash) }

      # Currency code
      sig { returns(Privy::CurrencyAmount::Currency::OrSymbol) }
      attr_accessor :currency

      # The monetary value as a string.
      sig { returns(String) }
      attr_accessor :value

      # A monetary value with its currency denomination.
      sig do
        params(
          currency: Privy::CurrencyAmount::Currency::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Currency code
        currency:,
        # The monetary value as a string.
        value:
      )
      end

      sig do
        override.returns(
          { currency: Privy::CurrencyAmount::Currency::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      # Currency code
      module Currency
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::CurrencyAmount::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD = T.let(:usd, Privy::CurrencyAmount::Currency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::CurrencyAmount::Currency::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
