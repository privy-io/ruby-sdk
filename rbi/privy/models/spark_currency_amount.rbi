# typed: strong

module Privy
  module Models
    class SparkCurrencyAmount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkCurrencyAmount, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :original_unit

      sig { returns(Float) }
      attr_accessor :original_value

      # A currency amount with its original value and unit.
      sig do
        params(original_unit: String, original_value: Float).returns(
          T.attached_class
        )
      end
      def self.new(original_unit:, original_value:)
      end

      sig { override.returns({ original_unit: String, original_value: Float }) }
      def to_hash
      end
    end
  end
end
