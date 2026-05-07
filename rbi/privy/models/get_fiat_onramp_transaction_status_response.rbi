# typed: strong

module Privy
  module Models
    class GetFiatOnrampTransactionStatusResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetFiatOnrampTransactionStatusResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :raw_status

      sig { returns(String) }
      attr_accessor :session_id

      # Normalized fiat onramp transaction status.
      sig { returns(Privy::FiatOnrampTransactionStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      # The response containing the fiat onramp session status.
      sig do
        params(
          raw_status: String,
          session_id: String,
          status: Privy::FiatOnrampTransactionStatus::OrSymbol,
          transaction_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        raw_status:,
        session_id:,
        # Normalized fiat onramp transaction status.
        status:,
        transaction_id: nil
      )
      end

      sig do
        override.returns(
          {
            raw_status: String,
            session_id: String,
            status: Privy::FiatOnrampTransactionStatus::OrSymbol,
            transaction_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
