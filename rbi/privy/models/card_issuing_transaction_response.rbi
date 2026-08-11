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

      # Dispute associated with card activity.
      sig { returns(T.nilable(Privy::CardIssuingDispute)) }
      attr_reader :dispute

      sig { params(dispute: T.nilable(Privy::CardIssuingDispute::OrHash)).void }
      attr_writer :dispute

      # Merchant metadata for card activity.
      sig { returns(Privy::CardIssuingMerchant) }
      attr_reader :merchant

      sig { params(merchant: Privy::CardIssuingMerchant::OrHash).void }
      attr_writer :merchant

      # Status for card activity.
      sig { returns(Privy::CardIssuingTransactionStatus::OrSymbol) }
      attr_accessor :status

      # Card activity
      sig do
        params(
          id: String,
          amount: Float,
          created: Float,
          currency: String,
          dispute: T.nilable(Privy::CardIssuingDispute::OrHash),
          merchant: Privy::CardIssuingMerchant::OrHash,
          status: Privy::CardIssuingTransactionStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        created:,
        currency:,
        # Dispute associated with card activity.
        dispute:,
        # Merchant metadata for card activity.
        merchant:,
        # Status for card activity.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created: Float,
            currency: String,
            dispute: T.nilable(Privy::CardIssuingDispute),
            merchant: Privy::CardIssuingMerchant,
            status: Privy::CardIssuingTransactionStatus::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
