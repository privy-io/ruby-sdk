# typed: strong

module Privy
  module Models
    class KrakenEmbedListCustomOrdersResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedListCustomOrdersResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::KrakenEmbedCustomOrder]) }
      attr_accessor :orders

      # Result payload for list custom orders response.
      sig do
        params(orders: T::Array[Privy::KrakenEmbedCustomOrder::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(orders:)
      end

      sig do
        override.returns({ orders: T::Array[Privy::KrakenEmbedCustomOrder] })
      end
      def to_hash
      end
    end
  end
end
