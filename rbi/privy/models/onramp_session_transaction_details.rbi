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

      # Fee breakdown for a Stripe onramp transaction.
      sig { returns(T.nilable(Privy::OnrampSessionFees)) }
      attr_reader :fees

      sig { params(fees: T.nilable(Privy::OnrampSessionFees::OrHash)).void }
      attr_writer :fees

      sig { returns(T.nilable(String)) }
      attr_accessor :source_currency

      sig { returns(T.nilable(String)) }
      attr_accessor :source_total_amount

      # Transaction details returned from a Stripe onramp session.
      sig do
        params(
          destination_amount: T.nilable(String),
          destination_currency: T.nilable(String),
          destination_network: T.nilable(String),
          fees: T.nilable(Privy::OnrampSessionFees::OrHash),
          source_currency: T.nilable(String),
          source_total_amount: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        destination_amount:,
        destination_currency:,
        destination_network:,
        # Fee breakdown for a Stripe onramp transaction.
        fees:,
        source_currency:,
        source_total_amount:
      )
      end

      sig do
        override.returns(
          {
            destination_amount: T.nilable(String),
            destination_currency: T.nilable(String),
            destination_network: T.nilable(String),
            fees: T.nilable(Privy::OnrampSessionFees),
            source_currency: T.nilable(String),
            source_total_amount: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
