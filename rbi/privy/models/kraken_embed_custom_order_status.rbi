# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderStatus < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCustomOrderStatus, Privy::Internal::AnyHash)
        end

      # The lifecycle state of a custom order.
      sig { returns(Privy::KrakenEmbedCustomOrderStatusValue::OrSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(T.anything)) }
      attr_reader :reason

      sig { params(reason: T.anything).void }
      attr_writer :reason

      # Custom order status with optional reason for cancelled or paused states.
      sig do
        params(
          status: Privy::KrakenEmbedCustomOrderStatusValue::OrSymbol,
          reason: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        # The lifecycle state of a custom order.
        status:,
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            status: Privy::KrakenEmbedCustomOrderStatusValue::OrSymbol,
            reason: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
