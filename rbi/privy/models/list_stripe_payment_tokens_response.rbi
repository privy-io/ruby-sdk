# typed: strong

module Privy
  module Models
    class ListStripePaymentTokensResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ListStripePaymentTokensResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::StripePaymentToken]) }
      attr_accessor :data

      # List of payment tokens for a crypto customer.
      sig do
        params(data: T::Array[Privy::StripePaymentToken::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Privy::StripePaymentToken] }) }
      def to_hash
      end
    end
  end
end
