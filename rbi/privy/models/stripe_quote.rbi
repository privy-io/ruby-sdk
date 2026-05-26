# typed: strong

module Privy
  module Models
    class StripeQuote < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::StripeQuote, Privy::Internal::AnyHash) }

      sig { returns(Float) }
      attr_accessor :expires_at

      # A refreshed quote.
      sig { params(expires_at: Float).returns(T.attached_class) }
      def self.new(expires_at:)
      end

      sig { override.returns({ expires_at: Float }) }
      def to_hash
      end
    end
  end
end
