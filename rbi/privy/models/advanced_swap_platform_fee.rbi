# typed: strong

module Privy
  module Models
    class AdvancedSwapPlatformFee < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AdvancedSwapPlatformFee, Privy::Internal::AnyHash)
        end

      # Token the fee was taken from (output token in v1).
      sig { returns(String) }
      attr_accessor :token

      # Fee amount in the smallest unit of the fee token.
      sig { returns(String) }
      attr_accessor :amount

      # Fee in basis points.
      sig { returns(Integer) }
      attr_accessor :bps

      # Platform fee collected on a swap.
      sig do
        params(token: String, amount: String, bps: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # Token the fee was taken from (output token in v1).
        token:,
        # Fee amount in the smallest unit of the fee token.
        amount:,
        # Fee in basis points.
        bps:
      )
      end

      sig { override.returns({ token: String, amount: String, bps: Integer }) }
      def to_hash
      end
    end
  end
end
