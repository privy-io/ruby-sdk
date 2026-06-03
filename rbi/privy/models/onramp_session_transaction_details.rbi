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
      sig { returns(Privy::OnrampSessionTransactionDetails::Fees) }
      attr_reader :fees

      sig do
        params(fees: Privy::OnrampSessionTransactionDetails::Fees::OrHash).void
      end
      attr_writer :fees

      sig { returns(T.nilable(String)) }
      attr_accessor :source_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :source_currency

      # Transaction details returned from a Stripe onramp session.
      sig do
        params(
          destination_amount: T.nilable(String),
          destination_currency: T.nilable(String),
          destination_network: T.nilable(String),
          fees: Privy::OnrampSessionTransactionDetails::Fees::OrHash,
          source_amount: T.nilable(String),
          source_currency: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        destination_amount:,
        destination_currency:,
        destination_network:,
        # Fee breakdown for a Stripe onramp transaction.
        fees:,
        source_amount:,
        source_currency:
      )
      end

      sig do
        override.returns(
          {
            destination_amount: T.nilable(String),
            destination_currency: T.nilable(String),
            destination_network: T.nilable(String),
            fees: Privy::OnrampSessionTransactionDetails::Fees,
            source_amount: T.nilable(String),
            source_currency: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Fees < Privy::Models::OnrampSessionFees
        OrHash =
          T.type_alias do
            T.any(
              Privy::OnrampSessionTransactionDetails::Fees,
              Privy::Internal::AnyHash
            )
          end

        # Fee breakdown for a Stripe onramp transaction.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
