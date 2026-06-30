# typed: strong

module Privy
  module Models
    class OnrampSessionTransactionDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OnrampSessionTransactionDetails,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_currency

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_network

      sig { returns(T.nilable(String)) }
      attr_accessor :fee

      sig { returns(T.nilable(String)) }
      attr_accessor :source_currency

      sig { returns(T.nilable(String)) }
      attr_accessor :source_total_amount

      sig { returns(T.nilable(Float)) }
      attr_accessor :quote_expiration

      # Transaction details returned from a Stripe onramp session.
      sig do
        params(
          destination_amount: T.nilable(String),
          destination_currency: T.nilable(String),
          destination_network: T.nilable(String),
          fee: T.nilable(String),
          source_currency: T.nilable(String),
          source_total_amount: T.nilable(String),
          quote_expiration: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        destination_amount:,
        destination_currency:,
        destination_network:,
        fee:,
        source_currency:,
        source_total_amount:,
        quote_expiration: nil
      )
      end

      sig do
        override.returns(
          {
            destination_amount: T.nilable(String),
            destination_currency: T.nilable(String),
            destination_network: T.nilable(String),
            fee: T.nilable(String),
            source_currency: T.nilable(String),
            source_total_amount: T.nilable(String),
            quote_expiration: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
