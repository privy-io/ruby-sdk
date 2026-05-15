# typed: strong

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderPath < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCancelCustomOrderPath,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :order_id

      # Path parameters for cancelling a custom order.
      sig { params(order_id: String).returns(T.attached_class) }
      def self.new(order_id:)
      end

      sig { override.returns({ order_id: String }) }
      def to_hash
      end
    end
  end
end
