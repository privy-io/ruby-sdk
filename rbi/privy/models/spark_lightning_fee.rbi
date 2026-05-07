# typed: strong

module Privy
  module Models
    class SparkLightningFee < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkLightningFee, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :original_unit

      sig { returns(Float) }
      attr_accessor :original_value

      # The fee for a Spark Lightning payment.
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
