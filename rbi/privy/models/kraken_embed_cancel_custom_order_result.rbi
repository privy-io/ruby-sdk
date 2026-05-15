# typed: strong

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCancelCustomOrderResult,
            Privy::Internal::AnyHash
          )
        end

      # Full custom order object.
      sig { returns(Privy::KrakenEmbedCustomOrder) }
      attr_reader :order

      sig { params(order: Privy::KrakenEmbedCustomOrder::OrHash).void }
      attr_writer :order

      # Result payload for cancel custom order response.
      sig do
        params(order: Privy::KrakenEmbedCustomOrder::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Full custom order object.
        order:
      )
      end

      sig { override.returns({ order: Privy::KrakenEmbedCustomOrder }) }
      def to_hash
      end
    end
  end
end
