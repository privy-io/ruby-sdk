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
      sig { returns(T.nilable(Privy::OnrampSessionTransactionDetails)) }
      attr_reader :transaction_details

      sig do
        params(
          transaction_details:
            T.nilable(Privy::OnrampSessionTransactionDetails::OrHash)
        ).void
      end
      attr_writer :transaction_details

      # The created onramp session.
      sig do
        params(
          id: String,
          session_id: String,
          transaction_details:
            T.nilable(Privy::OnrampSessionTransactionDetails::OrHash)
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
              T.nilable(Privy::OnrampSessionTransactionDetails)
          }
        )
      end
      def to_hash
      end
    end
  end
end
