# typed: strong

module Privy
  module Models
    class RefreshStripeQuoteResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RefreshStripeQuoteResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :fee

      sig { returns(T.nilable(Float)) }
      attr_accessor :quote_expiration

      sig { returns(T.nilable(String)) }
      attr_accessor :source_total_amount

      # Refreshed quote with amounts, fee, and expiry.
      sig do
        params(
          destination_amount: T.nilable(String),
          fee: T.nilable(String),
          quote_expiration: T.nilable(Float),
          source_total_amount: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        destination_amount:,
        fee:,
        quote_expiration:,
        source_total_amount:
      )
      end

      sig do
        override.returns(
          {
            destination_amount: T.nilable(String),
            fee: T.nilable(String),
            quote_expiration: T.nilable(Float),
            source_total_amount: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
