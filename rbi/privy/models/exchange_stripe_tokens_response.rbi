# typed: strong

module Privy
  module Models
    class ExchangeStripeTokensResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExchangeStripeTokensResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :crypto_customer_id

      # Confirmation that tokens were exchanged and stored.
      sig { params(crypto_customer_id: String).returns(T.attached_class) }
      def self.new(crypto_customer_id:)
      end

      sig { override.returns({ crypto_customer_id: String }) }
      def to_hash
      end
    end
  end
end
