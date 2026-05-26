# typed: strong

module Privy
  module Models
    class GetStripeCryptoCustomerResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetStripeCryptoCustomerResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(T::Array[Privy::StripeVerification])) }
      attr_reader :verifications

      sig do
        params(verifications: T::Array[Privy::StripeVerification::OrHash]).void
      end
      attr_writer :verifications

      # A Stripe CryptoCustomer with verification status.
      sig do
        params(
          id: String,
          verifications: T::Array[Privy::StripeVerification::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(id:, verifications: nil)
      end

      sig do
        override.returns(
          { id: String, verifications: T::Array[Privy::StripeVerification] }
        )
      end
      def to_hash
      end
    end
  end
end
