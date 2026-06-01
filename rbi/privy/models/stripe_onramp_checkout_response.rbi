# typed: strong

module Privy
  module Models
    class StripeOnrampCheckoutResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeOnrampCheckoutResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :client_secret

      # Transaction details from checkout.
      sig { returns(T.nilable(Privy::StripeTransactionDetails)) }
      attr_reader :transaction_details

      sig do
        params(
          transaction_details: Privy::StripeTransactionDetails::OrHash
        ).void
      end
      attr_writer :transaction_details

      # Checkout confirmation with client secret.
      sig do
        params(
          client_secret: String,
          transaction_details: Privy::StripeTransactionDetails::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        client_secret:,
        # Transaction details from checkout.
        transaction_details: nil
      )
      end

      sig do
        override.returns(
          {
            client_secret: String,
            transaction_details: Privy::StripeTransactionDetails
          }
        )
      end
      def to_hash
      end
    end
  end
end
