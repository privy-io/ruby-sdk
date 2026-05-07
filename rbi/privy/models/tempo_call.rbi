# typed: strong

module Privy
  module Models
    class TempoCall < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::TempoCall, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :to

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :value

      sig { params(value: Privy::Quantity::Variants).void }
      attr_writer :value

      # A single call within a Tempo batched transaction.
      sig do
        params(
          to: String,
          data: String,
          value: Privy::Quantity::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        to:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        data: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        value: nil
      )
      end

      sig do
        override.returns(
          { to: String, data: String, value: Privy::Quantity::Variants }
        )
      end
      def to_hash
      end
    end
  end
end
