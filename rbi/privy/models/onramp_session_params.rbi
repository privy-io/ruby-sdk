# typed: strong

module Privy
  module Models
    class OnrampSessionParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OnrampSessionParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :crypto_customer_id

      # Cryptocurrency symbol. Uppercase alphanumeric, 2-10 characters.
      sig { returns(String) }
      attr_accessor :destination_currency

      sig { returns(String) }
      attr_accessor :destination_network

      sig { returns(String) }
      attr_accessor :payment_token

      sig { returns(String) }
      attr_accessor :source_amount

      # ISO 4217 fiat currency code. Three uppercase ASCII letters.
      sig { returns(String) }
      attr_accessor :source_currency

      sig { returns(String) }
      attr_accessor :wallet_address

      # Parameters for creating a Stripe onramp session.
      sig do
        params(
          crypto_customer_id: String,
          destination_currency: String,
          destination_network: String,
          payment_token: String,
          source_amount: String,
          source_currency: String,
          wallet_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        crypto_customer_id:,
        # Cryptocurrency symbol. Uppercase alphanumeric, 2-10 characters.
        destination_currency:,
        destination_network:,
        payment_token:,
        source_amount:,
        # ISO 4217 fiat currency code. Three uppercase ASCII letters.
        source_currency:,
        wallet_address:
      )
      end

      sig do
        override.returns(
          {
            crypto_customer_id: String,
            destination_currency: String,
            destination_network: String,
            payment_token: String,
            source_amount: String,
            source_currency: String,
            wallet_address: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
