# typed: strong

module Privy
  module Models
    class CardIssuingTransactionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingTransactionResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Float) }
      attr_accessor :amount

      sig { returns(Float) }
      attr_accessor :created

      sig { returns(String) }
      attr_accessor :currency

      # Merchant metadata for a card issuing transaction.
      sig { returns(Privy::CardIssuingMerchant) }
      attr_reader :merchant

      sig { params(merchant: Privy::CardIssuingMerchant::OrHash).void }
      attr_writer :merchant

      # Status for a card issuing transaction.
      sig { returns(Privy::CardIssuingTransactionStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :type

      # Stripe Issuing transaction state for a Privy card.
      sig do
        params(
          id: String,
          amount: Float,
          created: Float,
          currency: String,
          merchant: Privy::CardIssuingMerchant::OrHash,
          status: Privy::CardIssuingTransactionStatus::OrSymbol,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        created:,
        currency:,
        # Merchant metadata for a card issuing transaction.
        merchant:,
        # Status for a card issuing transaction.
        status:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created: Float,
            currency: String,
            merchant: Privy::CardIssuingMerchant,
            status: Privy::CardIssuingTransactionStatus::OrSymbol,
            type: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
