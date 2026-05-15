# typed: strong

module Privy
  module Models
    class KrakenEmbedGetQuoteQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedGetQuoteQueryParams, Privy::Internal::AnyHash)
        end

      # The ID of the Privy user.
      sig { returns(String) }
      attr_accessor :user_id

      # Query parameters for getting a quote status.
      sig { params(user_id: String).returns(T.attached_class) }
      def self.new(
        # The ID of the Privy user.
        user_id:
      )
      end

      sig { override.returns({ user_id: String }) }
      def to_hash
      end
    end
  end
end
