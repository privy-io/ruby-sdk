# typed: strong

module Privy
  module Models
    class KrakenEmbedGetCustomOrderQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetCustomOrderQueryParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :order_id

      sig { returns(String) }
      attr_accessor :user_id

      # Query parameters for getting a single custom order.
      sig do
        params(order_id: String, user_id: String).returns(T.attached_class)
      end
      def self.new(order_id:, user_id:)
      end

      sig { override.returns({ order_id: String, user_id: String }) }
      def to_hash
      end
    end
  end
end
