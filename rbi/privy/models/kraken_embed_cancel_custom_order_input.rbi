# typed: strong

module Privy
  module Models
    class KrakenEmbedCancelCustomOrderInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCancelCustomOrderInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :user_id

      # Request body for cancelling a custom order.
      sig { params(user_id: String).returns(T.attached_class) }
      def self.new(user_id:)
      end

      sig { override.returns({ user_id: String }) }
      def to_hash
      end
    end
  end
end
