# typed: strong

module Privy
  module Models
    class CardIssuingCardResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCardResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :balance

      sig { returns(T.nilable(String)) }
      attr_accessor :brand

      # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      sig { returns(String) }
      attr_accessor :chain_id

      sig { returns(T.nilable(String)) }
      attr_accessor :last4

      sig { returns(String) }
      attr_accessor :provider_id

      sig { returns(String) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :wallet_id

      # Stripe Issuing card state bound to a Privy user and wallet.
      sig do
        params(
          id: String,
          balance: T.nilable(String),
          brand: T.nilable(String),
          chain_id: String,
          last4: T.nilable(String),
          provider_id: String,
          status: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        balance:,
        brand:,
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        chain_id:,
        last4:,
        provider_id:,
        status:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balance: T.nilable(String),
            brand: T.nilable(String),
            chain_id: String,
            last4: T.nilable(String),
            provider_id: String,
            status: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
