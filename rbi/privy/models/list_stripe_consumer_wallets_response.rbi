# typed: strong

module Privy
  module Models
    class ListStripeConsumerWalletsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ListStripeConsumerWalletsResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::StripeConsumerWallet]) }
      attr_accessor :data

      # List of registered wallets for a crypto customer.
      sig do
        params(data: T::Array[Privy::StripeConsumerWallet::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Privy::StripeConsumerWallet] }) }
      def to_hash
      end
    end
  end
end
