# typed: strong

module Privy
  module Models
    class BlockInfo < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::BlockInfo, Privy::Internal::AnyHash) }

      # The block number.
      sig { returns(Float) }
      attr_accessor :number

      # The block timestamp.
      sig { returns(Float) }
      attr_accessor :timestamp

      # Block metadata for a wallet transfer event.
      sig { params(number: Float, timestamp: Float).returns(T.attached_class) }
      def self.new(
        # The block number.
        number:,
        # The block timestamp.
        timestamp:
      )
      end

      sig { override.returns({ number: Float, timestamp: Float }) }
      def to_hash
      end
    end
  end
end
