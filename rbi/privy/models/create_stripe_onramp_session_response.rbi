# typed: strong

module Privy
  module Models
    class CreateStripeOnrampSessionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateStripeOnrampSessionResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :session_id

      # Transaction details returned from a Stripe onramp session.
      sig do
        returns(
          T.nilable(
            Privy::CreateStripeOnrampSessionResponse::TransactionDetails
          )
        )
      end
      attr_reader :transaction_details

      sig do
        params(
          transaction_details:
            Privy::CreateStripeOnrampSessionResponse::TransactionDetails::OrHash
        ).void
      end
      attr_writer :transaction_details

      # The created onramp session.
      sig do
        params(
          id: String,
          session_id: String,
          transaction_details:
            Privy::CreateStripeOnrampSessionResponse::TransactionDetails::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        session_id:,
        # Transaction details returned from a Stripe onramp session.
        transaction_details: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            session_id: String,
            transaction_details:
              Privy::CreateStripeOnrampSessionResponse::TransactionDetails
          }
        )
      end
      def to_hash
      end

      class TransactionDetails < Privy::Models::OnrampSessionTransactionDetails
        OrHash =
          T.type_alias do
            T.any(
              Privy::CreateStripeOnrampSessionResponse::TransactionDetails,
              Privy::Internal::AnyHash
            )
          end

        # Transaction details returned from a Stripe onramp session.
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
